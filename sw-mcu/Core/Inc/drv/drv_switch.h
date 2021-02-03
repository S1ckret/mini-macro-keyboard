/*
 * drv_switch.h
 *
 *  Created on: Jan 23, 2021
 *      Author: S1ckret
 */

#ifndef INC_DRV_DRV_SWITCH_H_
#define INC_DRV_DRV_SWITCH_H_

#include <stdint.h>

enum drv_switch_name {
  DRV_KEY_1 = 0,
  DRV_KEY_2,
  DRV_KEY_3,
  DRV_SWITCH_BACKLIGHT,
  DRV_SWITCH_LAYOUT,
  DRV_SWITCH_COUNT
};

enum drv_switch_state {
  DRV_KEY_PRESSED = 0,
  DRV_KEY_RELEASED,
};

uint8_t drv_switch_get_state(enum drv_switch_name me);

#endif /* INC_DRV_DRV_SWITCH_H_ */
