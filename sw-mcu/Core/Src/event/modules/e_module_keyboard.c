/*
 * e_module_keyboard.c
 *
 *  Created on: Jan 24, 2021
 *      Author: S1ckret
 */

#include "event/modules/e_module.h"
#include "event/modules/e_module_keyboard.h"

#include "event/events/e_event_key.h"

#include "drv/drv_led.h"

static void keyboard_dispatch(struct e_module *me, struct e_event *e);

void e_module_keyboard_ctor(struct e_module_keyboard *me,
                              uint8_t *name) {
  e_module_ctor((struct e_module *)me, name, keyboard_dispatch);
  me->current_layout = MOD_LAYOUT_A;
}

void e_module_keyboard_dtor(struct e_module_keyboard *me) {
  e_module_dtor((struct e_module *)me);
}

static void keyboard_dispatch(struct e_module *me, struct e_event *e) {
  if (me != e->mod_to) return;

  struct e_module_keyboard *keyboard = (struct e_module_keyboard *)me;
  switch(e->sig) {
  case SIG_SYS_INIT:
    break;
  case SIG_LAYOUT_OFF:
    keyboard->current_layout = MOD_LAYOUT_A;
    break;
  case SIG_LAYOUT_ON:
    keyboard->current_layout = MOD_LAYOUT_B;
    break;
  case SIG_KEY_PRESSED:
  {
    struct e_event_key *e_key = (struct e_event_key *)e;
    /* Send info to the hid codec module */
    struct e_module_key_data *pressed_key = &(keyboard->keys[keyboard->current_layout][e_key->key]);
  }
  break;
  case SIG_KEY_RELEASED:
  {
    struct e_event_key *e_key = (struct e_event_key *)e;
    /* Send info to the hid codec module */
    struct e_module_key_data *pressed_key = &(keyboard->keys[keyboard->current_layout][e_key->key]);
  }
    break;
  default:
    break;
  }
}
