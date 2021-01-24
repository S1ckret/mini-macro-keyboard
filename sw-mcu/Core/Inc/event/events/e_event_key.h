/*
 * e_event_key.h
 *
 *  Created on: Jan 23, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_EVENTS_E_EVENT_KEY_H_
#define INC_EVENT_EVENTS_E_EVENT_KEY_H_

#include "drv/drv_key.h"

struct e_event_key {
  struct e_event super;
  enum drv_key_name key;
};

#endif /* INC_EVENT_EVENTS_E_EVENT_KEY_H_ */
