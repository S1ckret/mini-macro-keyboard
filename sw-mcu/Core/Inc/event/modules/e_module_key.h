/*
 * e_module_key.h
 *
 *  Created on: Jan 23, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_MODULES_E_MODULE_KEY_H_
#define INC_EVENT_MODULES_E_MODULE_KEY_H_

#include "event/modules/e_module.h"

#include "event/e_timer.h"

#include "drv/drv_key.h"

enum e_module_key_state {
  MOD_KEY_STATE_PRESSED = 0u,
  MOD_KEY_STATE_RELEASED
};

struct e_module_key {
  struct e_module super;
  enum drv_key_name key;
  enum e_module_key_state key_state;
  struct e_timer timer;
};

void e_module_key_ctor(struct e_module_key *me,
                              uint8_t *name,
                              enum drv_key_name key);

void e_module_key_dtor(struct e_module_key *me);


#endif /* INC_EVENT_MODULES_E_MODULE_KEY_H_ */
