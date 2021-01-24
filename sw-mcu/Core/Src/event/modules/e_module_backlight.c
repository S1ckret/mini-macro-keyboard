/*
 * e_module_backlight.c
 *
 *  Created on: Jan 24, 2021
 *      Author: S1ckret
 */
#include "event/modules/e_module.h"
#include "event/modules/e_module_backlight.h"

#include "drv/drv_led.h"

static void backlight_dispatch(struct e_module *me, struct e_event *e);

void e_module_backlight_ctor(struct e_module_backlight *me,
                              uint8_t *name) {
  e_module_ctor((struct e_module *)me, name, backlight_dispatch);
}

void e_module_backlight_dtor(struct e_module_backlight *me) {
  e_module_dtor((struct e_module *)me);
}

static void backlight_on() {
  drv_led_on(DRV_LED_1);
  drv_led_on(DRV_LED_2);
  drv_led_on(DRV_LED_3);
}

static void backlight_off() {
  drv_led_off(DRV_LED_1);
  drv_led_off(DRV_LED_2);
  drv_led_off(DRV_LED_3);
}

static void backlight_dispatch(struct e_module *me, struct e_event *e) {
  if (me != e->mod_to) return;

  switch(e->sig) {
  case SIG_SYS_INIT:
    backlight_off();
    break;
  case SIG_BACKLIGHT_OFF:
    backlight_off();
    break;
  case SIG_BACKLIGHT_ON:
    backlight_on();
    break;
  default:
    break;
  }
}



