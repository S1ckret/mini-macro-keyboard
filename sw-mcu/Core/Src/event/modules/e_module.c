/*
 * e_module.c
 *
 *  Created on: 13 нояб. 2020 г.
 *      Author: S1ckret
 */

#include <stdint.h>

#include "event/modules/e_module.h"

#define NULL (0u)

void e_module_ctor(struct e_module *me, uint8_t *name, e_dispatch_func_t dispatch_function) {
  me->name = name;
  me->dsp_func = dispatch_function;
}

void e_module_dtor(struct e_module *me) {
  me->dsp_func = 0;
  me->name = "";
}

void e_module_dispatch(struct e_module *me, struct e_event *e) {
  me->dsp_func(me, e);
}


/**
 * Modules list
 */

struct e_module *e_pmod_key_1 = NULL;
struct e_module *e_pmod_key_2 = NULL;
struct e_module *e_pmod_key_3 = NULL;
struct e_module *e_pmod_keyboard = NULL;
struct e_module *e_pmod_backlight = NULL;
struct e_module *e_pmod_heartbeat = NULL;
struct e_module *e_pmod_report_codec;

