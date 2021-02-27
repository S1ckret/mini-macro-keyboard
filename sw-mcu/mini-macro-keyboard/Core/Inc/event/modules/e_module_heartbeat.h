/*
 * e_module_heartbeat.h
 *
 *  Created on: 28 нояб. 2020 г.
 *      Author: S1ckret
 */

#ifndef INC_EVENT_MODULES_E_MODULE_HEARTBEAT_H_
#define INC_EVENT_MODULES_E_MODULE_HEARTBEAT_H_

#include "event/modules/e_module.h"

#include "event/e_timer.h"

#include "drv/drv_led.h"

struct e_module_heartbeat {
  struct e_module super;
  enum drv_led_name led;
  uint32_t period;
  uint32_t duty;
  struct e_timer timer;
};

void e_module_heartbeat_ctor(struct e_module_heartbeat *me,
                              uint8_t *name,
                              enum drv_led_name led,
                              uint32_t period,
                              uint32_t duty);

void e_module_heartbeat_dtor(struct e_module_heartbeat *me);

#endif /* INC_EVENT_MODULES_E_MODULE_HEARTBEAT_H_ */
