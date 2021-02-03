/*
 * drv_switch.c
 *
 *  Created on: Jan 23, 2021
 *      Author: S1ckret
 */

#include <stdint.h>
#include "drv/drv_switch.h"

#include "stm32f1xx_hal.h"

// TODO: Include inverted logic levels

struct drv_switch {
  GPIO_TypeDef* port;
  uint32_t pin;
};

static struct drv_switch switchs[DRV_SWITCH_COUNT] = {
    /* DRV_switch_1 */
    {GPIOC, GPIO_PIN_15},
    /* DRV_switch_2 */
    {GPIOA, GPIO_PIN_4},
    /* DRV_switch_3 */
    {GPIOB, GPIO_PIN_1},
};

uint8_t drv_switch_get_state(enum drv_switch_name me) {
  return (switchs[me].port->IDR & switchs[me].pin);
}


