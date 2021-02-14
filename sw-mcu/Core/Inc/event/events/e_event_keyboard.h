/*
 * e_event_keyboard.h
 *
 *  Created on: Jan 29, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_EVENTS_E_EVENT_KEYBOARD_H_
#define INC_EVENT_EVENTS_E_EVENT_KEYBOARD_H_

#include "event/events/e_event.h"
#include "event/modules/e_module_keyboard.h"

struct e_event_keyboard {
  struct e_event super;
  struct e_modile_key_config key_cfg;
};

#endif /* INC_EVENT_EVENTS_E_EVENT_KEYBOARD_H_ */
