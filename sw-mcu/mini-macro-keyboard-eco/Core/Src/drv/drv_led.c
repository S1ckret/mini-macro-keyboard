/*
 * drv_led.c
 *
 *  Created on: Oct 14, 2020
 *      Author: S1ckret
 */

#include <stdint.h>

#include "stm32f0xx_hal.h"

#include "drv/drv_led.h"

struct drv_led {
  GPIO_TypeDef* port;
  uint32_t pin;
  uint8_t state;
};

static struct drv_led leds[DRV_LED_COUNT] = {
    /* DRV_LED_1 */
    {GPIOA, GPIO_PIN_3, DRV_LED_STATE_OFF},
    /* DRV_LED_2 */
    {GPIOA, GPIO_PIN_1, DRV_LED_STATE_OFF},
    /* DRV_LED_3 */
    {GPIOA, GPIO_PIN_0, DRV_LED_STATE_OFF},
};

void drv_led_on(enum drv_led_name me) {
  leds[me].port->BSRR |= leds[me].pin;
  leds[me].state = DRV_LED_STATE_ON;
}

void drv_led_off(enum drv_led_name me) {
  leds[me].port->BRR |= leds[me].pin;
  leds[me].state = DRV_LED_STATE_OFF;
}

void drv_led_toggle(enum drv_led_name me) {
  if (leds[me].state == DRV_LED_STATE_OFF) {
    drv_led_on(me);
  }
  else {
    drv_led_off(me);
  }
}

uint8_t drv_led_get_state(enum drv_led_name me) {
  return leds[me].state;
}
