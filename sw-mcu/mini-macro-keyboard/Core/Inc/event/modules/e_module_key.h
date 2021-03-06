/*
 * e_module_key.h
 *
 *  Created on: Jan 23, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_MODULES_E_MODULE_KEY_H_
#define INC_EVENT_MODULES_E_MODULE_KEY_H_

#include "drv/drv_switch.h"

#include "event/e_signals.h"
#include "event/modules/e_module.h"

#include "event/e_timer.h"


enum e_module_key_state {
  MOD_KEY_STATE_PRESSED = 0u,
  MOD_KEY_STATE_RELEASED
};

struct e_module_key {
  struct e_module super;
  enum drv_switch_name key;
  enum e_module_key_state key_state;
  struct e_timer timer;
  enum e_signal sig_on_press;
  enum e_signal sig_on_release;
  struct e_module *mod_to;
};

void e_module_key_ctor(struct e_module_key *me,
                          uint8_t *name,
                          enum drv_switch_name key,
                          enum e_signal sig_on_press,
                          enum e_signal sig_on_release,
                          struct e_module *mod_to);

void e_module_key_dtor(struct e_module_key *me);

void e_module_key_press(struct e_module_key *me);

void e_module_key_release(struct e_module_key *me);

#endif /* INC_EVENT_MODULES_E_MODULE_KEY_H_ */
