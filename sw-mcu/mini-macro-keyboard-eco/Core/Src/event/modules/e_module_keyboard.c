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
    if (drv_switch_get_state(DRV_SWITCH_LAYOUT) == DRV_KEY_PRESSED) {
      keyboard->current_layout = MOD_LAYOUT_A;
    }
    else {
      keyboard->current_layout = MOD_LAYOUT_B;
    }

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

    keyboard->keys[1][0].key = 0x10;
    keyboard->keys[1][0].mode = MOD_KEY_MODE_MARCO_SEQ;
    keyboard->keys[1][0].modifiers = 0U;

    keyboard->keys[1][1].key = 0x13;
    keyboard->keys[1][1].mode = MOD_KEY_MODE_MARCO_SEQ;
    keyboard->keys[1][1].modifiers = 0U;

    keyboard->keys[1][2].key = 0xE;
    keyboard->keys[1][2].mode = MOD_KEY_MODE_MARCO_SEQ;
    keyboard->keys[1][2].modifiers = 0U;
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
  if (cfg->key_mode == MOD_KEY_MODE_COUNT ||
      cfg->key_name == MOD_KEY_COUNT ||
      cfg->layout == MOD_LAYOUT_COUNT) {
    return;
  }

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

uint8_t e_module_keyboard_parse_key_name(uint8_t key_address) {
  enum e_module_key_name key_name = MOD_KEY_COUNT;
  if (key_address & (E_MOD_KEYBOARD_KEY_1 << E_MOD_KEYBOARD_KEY_OFFSET)) {
    key_name = MOD_KEY_1;
  }
  else if (key_address & (E_MOD_KEYBOARD_KEY_2 << E_MOD_KEYBOARD_KEY_OFFSET)) {
    key_name = MOD_KEY_2;
  }
  else if (key_address & (E_MOD_KEYBOARD_KEY_3 << E_MOD_KEYBOARD_KEY_OFFSET)) {
     key_name = MOD_KEY_3;
   }
  return key_name;
}

uint8_t e_module_keyboard_parse_layout(uint8_t key_address) {
  enum e_module_layout layout = MOD_LAYOUT_COUNT;
  if (key_address & (E_MOD_KEYBOARD_LAYOUT_A << E_MOD_KEYBOARD_LAYOUT_OFFSET)) {
    layout = MOD_LAYOUT_A;
  }
  else if (key_address & (E_MOD_KEYBOARD_LAYOUT_B << E_MOD_KEYBOARD_LAYOUT_OFFSET)) {
    layout = MOD_LAYOUT_B;
  }
  return layout;
}

uint8_t e_module_keyboard_parse_mode(uint8_t key_address) {
  enum e_module_key_mode key_mode = MOD_KEY_MODE_COUNT;
  if (key_address & (E_MOD_KEYBOARD_MODE_MACRO_SEQUENCE << E_MOD_KEYBOARD_MODE_OFFSET)) {
    key_mode = MOD_KEY_MODE_MARCO_SEQ;
  }
  else if (key_address & (E_MOD_KEYBOARD_MODE_TEXT << E_MOD_KEYBOARD_MODE_OFFSET)) {
    key_mode = MOD_KEY_MODE_TEXT;
  }
  else if (key_address & (E_MOD_KEYBOARD_MODE_COMBO << E_MOD_KEYBOARD_MODE_OFFSET)) {
    key_mode = MOD_KEY_MODE_COMBO;
   }
  return key_mode;
}

uint8_t e_module_keyboard_index_to_bit_msk(uint8_t index, uint8_t offset) {
  uint8_t msk = 1U;
  msk = msk << offset;
  msk = msk << index;
  return msk;
}

