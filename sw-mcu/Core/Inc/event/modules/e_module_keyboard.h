/*
 * e_module_keyboard.h
 *
 *  Created on: Jan 24, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_MODULES_E_MODULE_KEYBOARD_H_
#define INC_EVENT_MODULES_E_MODULE_KEYBOARD_H_

#include "event/modules/e_module.h"

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

struct e_module_key_data {
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

#endif /* INC_EVENT_MODULES_E_MODULE_KEYBOARD_H_ */
