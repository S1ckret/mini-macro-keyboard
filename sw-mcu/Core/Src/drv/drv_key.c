/*
 * drv_key.c
 *
 *  Created on: Jan 23, 2021
 *      Author: S1ckret
 */

#include <stdint.h>

#include "stm32f1xx_hal.h"

#include "drv/drv_key.h"

// TODO: Include inverted logic levels

struct drv_key {
  GPIO_TypeDef* port;
  uint32_t pin;
};

static struct drv_key keys[DRV_KEY_COUNT] = {
    /* DRV_KEY_1 */
    {GPIOC, GPIO_PIN_15},
    /* DRV_KEY_2 */
    {GPIOA, GPIO_PIN_4},
    /* DRV_KEY_3 */
    {GPIOB, GPIO_PIN_1},
};

uint8_t drv_key_get_value(enum drv_key_name me) {
  return (keys[me].port->IDR & keys[me].pin);
}
