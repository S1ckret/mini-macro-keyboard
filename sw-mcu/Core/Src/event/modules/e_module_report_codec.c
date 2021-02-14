/*
 * e_module_report_codec.c
 *
 *  Created on: Jan 28, 2021
 *      Author: S1ckret
 */

/*
 * e_module_report_codec.c
 *
 *  Created on: 28 нояб. 2020 г.
 *      Author: S1ckret
 */
#include "event/modules/e_module.h"
#include "event/modules/e_module_report_codec.h"

#include "event/events/e_event_report.h"

static void report_codec_dispatch(struct e_module *me, struct e_event *e);

void e_module_report_codec_ctor(struct e_module_report_codec *me,
                              uint8_t *name) {
  e_module_ctor((struct e_module *)me, name, report_codec_dispatch);
}

void e_module_report_codec_dtor(struct e_module_report_codec *me) {
  e_module_dtor((struct e_module *)me);
}

static void report_codec_dispatch(struct e_module *me, struct e_event *e) {
  if (me != e->mod_to) return;

  struct e_module_report_codec *report_codec = (struct e_module_report_codec *)me;
  switch(e->sig) {
  case SIG_SYS_INIT:
    break;
  default:
    break;
  }
}

/**
 * @Warning You need to pass minimum @ref { E_HID_MAX_REPORT_SIZE } bytes.
 */

__attribute__((optimize("unroll-loops")))
void report_codec_data_out(struct e_module_report_codec *me, uint8_t *report) {
  struct e_event_report e_report;
  e_report.super.mod_from = 0;
  e_report.super.mod_to = me;
  e_report.super.sig = SIG_HID_CODEC_DATA_OUT;
  e_report.super.size = E_HID_MAX_REPORT_SIZE;

  for (uint8_t i = 0; i < E_HID_MAX_REPORT_SIZE; ++i) {
    e_report.report[i] = report[i];
  }

  e_core_notify(&e_report);
}
