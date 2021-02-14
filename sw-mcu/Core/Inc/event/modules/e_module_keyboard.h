/*
 * e_module_keyboard.h
 *
 *  Created on: Jan 24, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_MODULES_E_MODULE_KEYBOARD_H_
#define INC_EVENT_MODULES_E_MODULE_KEYBOARD_H_

#include "event/modules/e_module.h"
#include "event/events/e_event_report.h"

#define E_MOD_KEYBOARD_KEY_MASK    (b00000111)
#define E_MOD_KEYBOARD_LAYOUT_MASK (b00011000)
#define E_MOD_KEYBOARD_MODE_MASK   (b11100000)

struct e_modile_key_config {
  uint8_t key_name;
  uint8_t layout;
  uint8_t key_mode;
  uint8_t modifiers;
  uint8_t key[E_HID_MAX_REPORT_KEY_SIZE];
};

enum e_module_key_name {
  MOD_KEY_1 = 0u,
  MOD_KEY_2,
  MOD_KEY_3,
  MOD_KEY_COUNT
};

enum e_module_layout {
  MOD_LAYOUT_A = 0u,
  MOD_LAYOUT_B,
  MOD_LAYOUT_COUNT
};

enum e_module_key_mode {
  MOD_KEY_MODE_MARCO_SEQ = 0u,
  MOD_KEY_MODE_TEXT,
  MOD_KEY_MODE_COMBO
};
struct e_module_key_data {
  enum e_module_key_mode mode;
  uint8_t modifiers;
  uint8_t key;
};

struct e_module_keyboard {
  struct e_module super;
  struct e_module_key_data
    keys[MOD_LAYOUT_COUNT][MOD_KEY_COUNT];
  enum e_module_layout current_layout;
};

void e_module_keyboard_ctor(struct e_module_keyboard *me,
                              uint8_t *name);

void e_module_keyboard_dtor(struct e_module_keyboard *me);

void e_module_keyboard_create_macro(struct e_module_keyboard *me, struct e_modile_key_config *cfg);

#endif /* INC_EVENT_MODULES_E_MODULE_KEYBOARD_H_ */
