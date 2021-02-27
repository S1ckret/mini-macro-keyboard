/*
 * e_module_report_codec.h
 *
 *  Created on: Jan 28, 2021
 *      Author: S1ckret
 */

#ifndef INC_EVENT_MODULES_E_MODULE_REPORT_CODEC_H_
#define INC_EVENT_MODULES_E_MODULE_REPORT_CODEC_H_

#include "event/modules/e_module.h"
#include "event/events/e_event_report.h"
#include "event/e_timer.h"

#include "drv/drv_led.h"


struct e_module_report_codec {
  struct e_module super;
  uint8_t report_data_in[E_HID_MAX_REPORT_SIZE];
  struct e_module_key_data *current_key_data;
  uint8_t flag_init_mode;
  uint8_t timeout_wait;
  uint8_t cur_layout;
  uint8_t cur_key;
  struct e_timer timer;

};

void e_module_report_codec_ctor(struct e_module_report_codec *me,
                              uint8_t *name);

void e_module_report_codec_dtor(struct e_module_report_codec *me);

void report_codec_data_out(struct e_module_report_codec *me, uint8_t *report);

void report_codec_key_pressed(struct e_module_report_codec *me, struct e_module_key_data *key_data);

void report_codec_key_released(struct e_module_report_codec *me);

#endif /* INC_EVENT_MODULES_E_MODULE_REPORT_CODEC_H_ */
