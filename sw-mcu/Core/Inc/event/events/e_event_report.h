/*
 * e_event_hid.h
 *
 *  Created on: Jan 29, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_EVENTS_E_EVENT_REPORT_H_
#define INC_EVENT_EVENTS_E_EVENT_REPORT_H_

#include "event/events/e_event.h"

#define E_HID_MAX_REPORT_SIZE (8)

/** You are not supposed to fill all 8 bytes.
 * You can fill for example 6 bytes and set super.size = 6
 * then only 6 bytes would be copied to the core queue.*/
struct e_event_report {
  struct e_event super;
  uint8_t report[E_HID_MAX_REPORT_SIZE];
};


#endif /* INC_EVENT_EVENTS_E_EVENT_REPORT_H_ */
