/*
 * e_module_key.c
 *
 *  Created on: Jan 23, 2021
 *      Author: S1ckret
 */
#include "drv/drv_switch.h"

#include "event/modules/e_module.h"
#include "event/modules/e_module_core.h"
#include "event/modules/e_module_key.h"
#include "event/modules/e_module_timers.h"

#include "event/events/e_event.h"
#include "event/events/e_event_key.h"

#define KEY_DEBAUNCE_TIME 20

static void key_dispatch(struct e_module *me, struct e_event *e);

void e_module_key_ctor(struct e_module_key *me,
                          uint8_t *name,
                          enum drv_switch_name key,
                          enum e_signal sig_on_press,
                          enum e_signal sig_on_release,
                          struct e_module *mod_to) {
  e_module_ctor((struct e_module *)me, name, key_dispatch);
  me->key = key;
  me->key_state = MOD_KEY_STATE_RELEASED;
  me->sig_on_press = sig_on_press;
  me->sig_on_release = sig_on_release;
  me->mod_to = mod_to;
}

void e_module_key_dtor(struct e_module_key *me) {
  e_module_dtor((struct e_module *)me);
}

static void form_event(struct e_module_key *me,
                        struct e_event_key *e) {
  e->super.mod_from = me;
  e->super.mod_to = me->mod_to;
  e->super.size = 1;
  e->key = me->key;
}

static void form_event_on_press(struct e_module_key *me,
                        struct e_event_key *e) {
  form_event(me, e);
  e->super.sig = me->sig_on_press;
}

static void form_event_on_release(struct e_module_key *me,
                        struct e_event_key *e) {
  form_event(me, e);
  e->super.sig = me->sig_on_release;
}

static void key_dispatch(struct e_module *me, struct e_event *e) {
  if (me != e->mod_to) return;

  struct e_module_key *me_key = (struct e_module_key *)me;
  switch(e->sig) {
  case SIG_SYS_INIT:
    e_timer_ctor(&me_key->timer, e->mod_to);
    e_module_timers_register(&me_key->timer);
    break;
  case SIG_KEY_PRESSED:
    if (me_key->key_state == MOD_KEY_STATE_RELEASED) {
      if (!e_timer_is_armed(&me_key->timer)) {
        e_timer_arm(&me_key->timer, KEY_DEBAUNCE_TIME, 0U);
      }
    }
    break;
  case SIG_KEY_RELEASED:
    if (me_key->key_state == MOD_KEY_STATE_PRESSED) {
      if (!e_timer_is_armed(&me_key->timer)) {
        e_timer_arm(&me_key->timer, KEY_DEBAUNCE_TIME, 0U);
      }
    }
    break;
  case SIG_SYS_TIMEOUT:

    switch (me_key->key_state) {
    case MOD_KEY_STATE_PRESSED:
      if (drv_switch_get_state(me_key->key) == DRV_KEY_RELEASED) {
        /* It is real release */
        me_key->key_state = MOD_KEY_STATE_RELEASED;
        /* Generate event to other modules */
        struct e_event_key event_to_send;
        form_event_on_press(me, &event_to_send);
        e_core_notify((struct e_event *)(&event_to_send));
      }
      /* It was bounce */
      break;
    case MOD_KEY_STATE_RELEASED:
      if (drv_switch_get_state(me_key->key) == DRV_KEY_PRESSED) {
        /* It is real press */
        me_key->key_state = MOD_KEY_STATE_PRESSED;
        /* Generate event to other modules */
        struct e_event_key event_to_send;
        form_event_on_release(me, &event_to_send);
        e_core_notify((struct e_event *)(&event_to_send));
      }
      /* It was bounce */
      break;
    default:
      break;
    }

    break;
  default:
    break;
  }
}

/* TODO: Third state: MOD_KEY_STATE_DEBAUNCE */
void e_module_key_press(struct e_module_key *me) {
  if (e_timer_is_armed(&me->timer)) return;

  struct e_event_key e;
  e.super.mod_from = 0;
  e.super.mod_to = me;
  e.super.sig = SIG_KEY_PRESSED;
  e.super.size = 1;
  e.key = me->key;
  e_core_notify(&e);
}

void e_module_key_release(struct e_module_key *me) {
  if (e_timer_is_armed(&me->timer)) return;

  struct e_event_key e;
  e.super.mod_from = 0;
  e.super.mod_to = me;
  e.super.sig = SIG_KEY_RELEASED;
  e.super.size = 1;
  e.key = me->key;
  e_core_notify(&e);
}
