/*
 * e_module_report_codec.h
 *
 *  Created on: Jan 28, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_MODULES_E_MODULE_REPORT_CODEC_H_
#define INC_EVENT_MODULES_E_MODULE_REPORT_CODEC_H_

#include "event/modules/e_module.h"

#include "drv/drv_led.h"

struct e_module_report_codec {
  struct e_module super;
};

void e_module_report_codec_ctor(struct e_module_report_codec *me,
                              uint8_t *name);

void e_module_report_codec_dtor(struct e_module_report_codec *me);

void report_codec_data_out(struct e_module_report_codec *me, uint8_t *report);

#endif /* INC_EVENT_MODULES_E_MODULE_REPORT_CODEC_H_ */
