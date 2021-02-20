/*
 * e_module_keyboard.c
 *
 *  Created on: Jan 24, 2021
 *      Author: S1ckret
 */

#include "event/modules/e_module.h"
#include "event/modules/e_module_keyboard.h"
#include "event/modules/e_module_report_codec.h"

#include "event/events/e_event_key.h"
#include "event/events/e_event_keyboard.h"

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
    /* Assign temp test values*/
    keyboard->keys[0][0].key = 0x9;
    keyboard->keys[0][0].mode = MOD_KEY_MODE_MARCO_SEQ;
    keyboard->keys[0][0].modifiers = 0U;

    keyboard->keys[0][1].key = 0x12;
    keyboard->keys[0][1].mode = MOD_KEY_MODE_MARCO_SEQ;
    keyboard->keys[0][1].modifiers = 0U;

    keyboard->keys[0][2].key = 0xD;
    keyboard->keys[0][2].mode = MOD_KEY_MODE_MARCO_SEQ;
    keyboard->keys[0][2].modifiers = 0U;
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
    report_codec_key_pressed(e_pmod_report_codec, pressed_key);
  }
  break;
  case SIG_KEY_RELEASED:
  {
    struct e_event_key *e_key = (struct e_event_key *)e;
    /* Send info to the hid codec module */
    struct e_module_key_data *pressed_key = &(keyboard->keys[keyboard->current_layout][e_key->key]);
    report_codec_key_released(e_pmod_report_codec);
  }
    break;
  case SIG_KEYBOARD_CREATE_MACRO:
  {
    struct e_event_keyboard *e_keyboard = (struct e_event_key *)e;
    uint8_t k = e_keyboard->key_cfg.key_name;
    uint8_t l = e_keyboard->key_cfg.layout;

    /* Clear current key */
    keyboard->keys[l][k].key = 0U;
    keyboard->keys[l][k].mode = MOD_KEY_MODE_MARCO_SEQ;
    keyboard->keys[l][k].modifiers = 0U;

    /* Assign new values*/
    keyboard->keys[l][k].key = e_keyboard->key_cfg.key[0];
    keyboard->keys[l][k].mode = e_keyboard->key_cfg.key_mode;
    keyboard->keys[l][k].modifiers = e_keyboard->key_cfg.modifiers;

    drv_led_toggle(DRV_LED_3);
    /* TODO: Notify report codec that everything is OK */
  }
  break;
  default:
    break;
  }
}

/**
 * @Warning Hard coded mod_from to e_pmod_report_codec
 */
__attribute__((optimize("unroll-loops")))
void e_module_keyboard_create_macro(struct e_module_keyboard *me, struct e_modile_key_config *cfg) {
  struct e_event_keyboard e;
  e.super.mod_from = e_pmod_report_codec;
  e.super.mod_to = me;
  e.super.sig = SIG_KEYBOARD_CREATE_MACRO;
  e.super.size = sizeof(struct e_modile_key_config);

  e.key_cfg.key_mode = cfg->key_mode;
  e.key_cfg.key_name = cfg->key_name;
  e.key_cfg.layout = cfg->layout;
  for (uint8_t i = 0; i < E_HID_MAX_REPORT_KEY_SIZE; ++i) {
    e.key_cfg.key[i] = cfg->key[i];
  }

  e_core_notify(&e);
  drv_led_toggle(DRV_LED_3);
}

