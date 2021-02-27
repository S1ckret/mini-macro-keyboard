/*
 * e_event_key_data.h
 *
 *  Created on: Feb 15, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_EVENTS_E_EVENT_KEY_DATA_H_
#define INC_EVENT_EVENTS_E_EVENT_KEY_DATA_H_

#include "event/events/e_event.h"
#include "event/events/e_event_keyboard.h"

struct e_event_key_data {
  struct e_event super;
  struct e_module_key_data *p_key_data;
};


#endif /* INC_EVENT_EVENTS_E_EVENT_KEY_DATA_H_ */
