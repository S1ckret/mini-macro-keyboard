/*
 * e_module.h
 *
 *  Created on: 12 нояб. 2020 г.
 *      Author: S1ckret
 */

#ifndef INC_EVENT_E_MODULE_H_
#define INC_EVENT_E_MODULE_H_

#include <stdint.h>

#include "event/events/e_event.h"

#define E_MODULE_NAME_LEN 16

typedef void (*e_dispatch_func_t)(struct e_module *me, struct e_event *e);

/**
 * @brief Basic module structure
 * @param name Module name. Used for logging.
 * @param dsp_func Dispatch function pointer. Process your events here.
 */
struct e_module {
  uint8_t *name;
  e_dispatch_func_t dsp_func;
};

void e_module_ctor(struct e_module *me, uint8_t *name, e_dispatch_func_t dispatch_function);

void e_module_dtor(struct e_module *me);

void e_module_dispatch(struct e_module *me, struct e_event *e);


/**
 * Modules list
 */

extern struct e_module *e_pmod_key_1;
extern struct e_module *e_pmod_key_2;
extern struct e_module *e_pmod_key_3;
extern struct e_module *e_pmod_switch_backlight;
extern struct e_module *e_pmod_switch_layout;
extern struct e_module *e_pmod_keyboard;
extern struct e_module *e_pmod_backlight;
extern struct e_module *e_pmod_heartbeat;
extern struct e_module *e_pmod_report_codec;

#endif /* INC_EVENT_E_MODULE_H_ */
