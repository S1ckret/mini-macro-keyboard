/*
 * drv_led.h
 *
 *  Created on: Oct 14, 2020
 *      Author: S1ckret
 */

#ifndef INC_DRV_DRV_LED_H_
#define INC_DRV_DRV_LED_H_

enum drv_led_name {
  DRV_LED_HEARTBEAT = 0,
  DRV_LED_1,
  DRV_LED_2,
  DRV_LED_3,
  DRV_LED_COUNT
};

enum drv_led_state {
  DRV_LED_STATE_OFF,
  DRV_LED_STATE_ON,
};

void drv_led_on(enum drv_led_name me);

void drv_led_off(enum drv_led_name me);

void drv_led_toggle(enum drv_led_name me);

uint8_t drv_led_get_state(enum drv_led_name me);

#endif /* INC_DRV_DRV_LED_H_ */
