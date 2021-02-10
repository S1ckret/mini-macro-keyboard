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
#include "event/events/e_event_key.h"
#include "usbd_custom_hid_if.h"

#include "drv/drv_switch.h"

extern USBD_HandleTypeDef hUsbDeviceFS;

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

  static uint8_t report[8] = {0};

  struct e_module_report_codec *report_codec = (struct e_module_report_codec *)me;
  switch(e->sig) {
  case SIG_SYS_INIT:
    break;
  case SIG_KEY_PRESSED:
  {
    struct e_event_key *e_key = (struct e_event_key *)e;

    report[0] = 2;
    if (e_key->key == DRV_KEY_3) {
      report[1] = 0x1a;
    }
    else if (e_key->key == DRV_KEY_2) {
      report[2] = 0x2c;
    }
    else if (e_key->key == DRV_KEY_1) {
      report[3] = 0x19;
    }
    USBD_CUSTOM_HID_SendReport(&hUsbDeviceFS, report, 8);
  }
    break;
  case SIG_KEY_RELEASED:
    report[0] = 0;
    report[1] = 0;
    report[2] = 0;
    report[3] = 0;
    USBD_CUSTOM_HID_SendReport(&hUsbDeviceFS, report, 8);
    break;
  default:
    break;
  }
}

