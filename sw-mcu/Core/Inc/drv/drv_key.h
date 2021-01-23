/*
 * drv_key.h
 *
 *  Created on: Jan 23, 2021
 *      Author: S1ckret
 */

#ifndef INC_DRV_DRV_KEY_H_
#define INC_DRV_DRV_KEY_H_

enum drv_key_name {
  DRV_KEY_1 = 0,
  DRV_KEY_2,
  DRV_KEY_3,
  DRV_KEY_COUNT
};

enum drv_key_state {
  DRV_KEY_PRESSED = 0,
  DRV_KEY_RELEASED,
};

uint8_t drv_key_get_state(enum drv_key_name me);

#endif /* INC_DRV_DRV_KEY_H_ */
