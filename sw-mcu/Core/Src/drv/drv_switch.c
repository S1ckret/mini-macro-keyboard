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
  uint8_t state;
};

static struct drv_switch switchs[DRV_SWITCH_COUNT] = {
    /* DRV_switch_1 */
    {GPIOC, GPIO_PIN_15, DRV_KEY_RELEASED},
    /* DRV_switch_2 */
    {GPIOA, GPIO_PIN_4, DRV_KEY_RELEASED},
    /* DRV_switch_3 */
    {GPIOB, GPIO_PIN_1, DRV_KEY_RELEASED},
    /* DRV_SWITCH_BACKLIGHT */
    {GPIOA, GPIO_PIN_9, DRV_KEY_RELEASED},
    /* DRV_SWITCH_LAYOUT */
    {GPIOB, GPIO_PIN_7, DRV_KEY_RELEASED},

};

uint8_t drv_switch_get_state(enum drv_switch_name me) {
  /* Limit range to 0 or 1 */
  switchs[me].state = (switchs[me].port->IDR & switchs[me].pin) && DRV_KEY_RELEASED;
  return switchs[me].state;
}

uint8_t drv_switch_is_state_changed(enum drv_switch_name me) {
  uint8_t new_state = (switchs[me].port->IDR & switchs[me].pin) && DRV_KEY_RELEASED;
  uint8_t is_state_changed = new_state ^ switchs[me].state;
  return is_state_changed;
}

