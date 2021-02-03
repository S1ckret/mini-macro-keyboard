/*
 * e_module_backlight.h
 *
 *  Created on: Jan 24, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_MODULES_E_MODULE_BACKLIGHT_H_
#define INC_EVENT_MODULES_E_MODULE_BACKLIGHT_H_

#include "event/modules/e_module.h"

#include "drv/drv_led.h"

struct e_module_backlight {
  struct e_module super;
};

void e_module_backlight_ctor(struct e_module_backlight *me,
                              uint8_t *name);

void e_module_backlight_dtor(struct e_module_backlight *me);

void e_module_backlight_turn_on(struct e_module_backlight *me);

void e_module_backlight_turn_off(struct e_module_backlight *me);

#endif /* INC_EVENT_MODULES_E_MODULE_BACKLIGHT_H_ */
