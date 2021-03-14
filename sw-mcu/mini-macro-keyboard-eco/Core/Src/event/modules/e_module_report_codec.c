/*
 * e_module_report_codec.c
 *
 *  Created on: Jan 28, 2021
 *      Author: S1ckret
 */

#include "event/modules/e_module.h"
#include "event/modules/e_module_report_codec.h"
#include "event/modules/e_module_timers.h"

#include "event/events/e_event_report.h"
#include "event/events/e_event_key_data.h"

#include "usbd_custom_hid_if.h"

extern USBD_HandleTypeDef hUsbDeviceFS;

static void report_codec_dispatch(struct e_module *me, struct e_event *e);

void e_module_report_codec_ctor(struct e_module_report_codec *me,
                              uint8_t *name) {
  e_module_ctor((struct e_module *)me, name, report_codec_dispatch);
  me->flag_init_mode = 0U;
  me->cur_key = 0U;
  me->cur_layout = 0U;
}

void e_module_report_codec_dtor(struct e_module_report_codec *me) {
  e_module_dtor((struct e_module *)me);
}

static void report_codec_sig_key_pressed(struct e_module_report_codec *me, struct e_event *e);
static void report_codec_sig_key_released(struct e_module_report_codec *me, struct e_event *e);
static void report_codec_sig_hid_data_out(struct e_module_report_codec *me, struct e_event *e);
static void report_codec_sig_keyboard_sync(struct e_module_report_codec *me, struct e_event *e);
static void report_codec_sig_timeout(struct e_module_report_codec *me, struct e_event *e);

static void report_codec_dispatch(struct e_module *me, struct e_event *e) {
  if (me != e->mod_to) return;

  struct e_module_report_codec *report_codec = (struct e_module_report_codec *)me;
  switch(e->sig) {
  case SIG_SYS_INIT:
    e_timer_ctor(&report_codec->timer, report_codec);
    e_module_timers_register(&report_codec->timer);
    report_codec->timeout_wait = 0;
    report_codec_sig_key_released(report_codec, e);
    break;
    /* Supports only single macro now */
  case SIG_KEY_PRESSED:
    report_codec_sig_key_pressed(report_codec, e);
    drv_led_toggle(DRV_LED_1);
    break;
  case SIG_KEY_RELEASED:
    report_codec_sig_key_released(report_codec, e);
    drv_led_toggle(DRV_LED_1);
    break;
  case SIG_HID_CODEC_DATA_OUT:
    report_codec_sig_hid_data_out(report_codec, e);
    drv_led_toggle(DRV_LED_2);
    break;
  case SIG_KEYBOARD_SYNC:
    report_codec_sig_keyboard_sync(report_codec, e);
    break;
  case SIG_SYS_TIMEOUT:
    report_codec_sig_timeout(report_codec, e);
    drv_led_toggle(DRV_LED_1);

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

/**
 * @Warning Hardcoded to e_pmod_keyboard
 */
void report_codec_key_pressed(struct e_module_report_codec *me, struct e_module_key_data *key_data) {
  struct e_event_key_data e;
  e.super.mod_from = e_pmod_keyboard;
  e.super.mod_to = me;
  e.super.sig = SIG_KEY_PRESSED;
  e.super.size = sizeof(struct e_module_key_data *);
  e.p_key_data = key_data;

  e_core_notify(&e);
}

/**
 * @Warning Hardcoded to e_pmod_keyboard
 */
void report_codec_key_released(struct e_module_report_codec *me) {
  struct e_event_key_data e;
  e.super.mod_from = e_pmod_keyboard;
  e.super.mod_to = me;
  e.super.sig = SIG_KEY_RELEASED;
  e.super.size = 0U;
  e.p_key_data = 0U;

  e_core_notify(&e);
}

void report_codec_sync_next(struct e_module_report_codec *me) {
  struct e_event e;
  e.mod_from = me;
  e.mod_to = me;
  e.sig = SIG_KEYBOARD_SYNC;
  e.size = 0;

  e_core_notify(&e);
}

static void report_codec_sig_key_pressed(struct e_module_report_codec *me, struct e_event *e) {
  struct e_event_key_data *e_key_data = (struct e_event_key_data *)e;
  me->current_key_data = e_key_data->p_key_data;
  if (me->current_key_data->mode == MOD_KEY_MODE_MARCO_SEQ) {
    me->report_data_in[0] = 2U;
    me->report_data_in[1] = me->current_key_data->modifiers;
    me->report_data_in[2] = 0U; /* Reserved */
    me->report_data_in[3] = me->current_key_data->key;

    USBD_CUSTOM_HID_SendReport(&hUsbDeviceFS, me->report_data_in, 9);
  }
}

static void report_codec_sig_key_released(struct e_module_report_codec *me, struct e_event *e) {
  me->report_data_in[0] = 2U;
  me->report_data_in[1] = 0U;
  me->report_data_in[2] = 0U;
  me->report_data_in[3] = 0U;
  me->report_data_in[4] = 0U;
  me->report_data_in[5] = 0U;
  me->report_data_in[6] = 0U;
  me->report_data_in[7] = 0U;
  me->report_data_in[8] = 0U;

  USBD_CUSTOM_HID_SendReport(&hUsbDeviceFS, me->report_data_in, 9);
}

static void report_codec_sig_hid_data_out(struct e_module_report_codec *me, struct e_event *e) {
  struct e_event_report *e_report = (struct e_event_report *)e;
  // TODO: Function to parse report IDs and execute appropriate commands
  if (e_report->report[0] == 'M') {
    struct e_modile_key_config key_cfg;
    key_cfg.key_mode = e_module_keyboard_parse_mode(e_report->report[1]);
    key_cfg.key_name = e_module_keyboard_parse_key_name(e_report->report[1]);
    key_cfg.layout = e_module_keyboard_parse_layout(e_report->report[1]);
    key_cfg.modifiers = e_report->report[2];
    key_cfg.key[0] = e_report->report[3];
    key_cfg.key[1] = e_report->report[4];
    key_cfg.key[2] = e_report->report[5];
    key_cfg.key[3] = e_report->report[6];
    key_cfg.key[4] = e_report->report[7];
    key_cfg.key[5] = e_report->report[8];

    e_module_keyboard_create_macro(e_pmod_keyboard, &key_cfg);
  }
  else if (e_report->report[0] == 'S') {
    me->flag_init_mode = 1U;
    report_codec_sync_next(me);
  }
}

static void report_codec_sig_keyboard_sync(struct e_module_report_codec *me, struct e_event *e) {
  if (me->cur_layout == MOD_LAYOUT_COUNT) {
    me->cur_layout = MOD_LAYOUT_A;
    me->cur_key = MOD_KEY_1;
    return;
  }

  const struct e_module_key_data *key_data = &((struct e_module_keyboard *)
      e_pmod_keyboard)->keys[me->cur_layout][me->cur_key];

  if (key_data->mode != MOD_KEY_MODE_MARCO_SEQ) return;

  me->report_data_in[0] = 'S';
  me->report_data_in[1] = 0U;
  me->report_data_in[1] |= e_module_keyboard_index_to_bit_msk(me->cur_key, E_MOD_KEYBOARD_KEY_OFFSET);
  me->report_data_in[1] |= e_module_keyboard_index_to_bit_msk(me->cur_layout, E_MOD_KEYBOARD_LAYOUT_OFFSET);
  me->report_data_in[1] |= e_module_keyboard_index_to_bit_msk(key_data->mode, E_MOD_KEYBOARD_MODE_OFFSET);
  me->report_data_in[2] = key_data->modifiers;
  me->report_data_in[3] = key_data->key;
  me->report_data_in[4] = 0U;
  me->report_data_in[5] = 0U;
  me->report_data_in[6] = 0U;
  me->report_data_in[7] = 0U;
  me->report_data_in[8] = 0U;

  USBD_CUSTOM_HID_SendReport(&hUsbDeviceFS, me->report_data_in, 9);

  e_timer_arm(&me->timer, 20U, 0U);

  /* Iterate to the next key */
  me->cur_key = (me->cur_key + 1) % MOD_KEY_COUNT;
  if (me->cur_key == 0) me->cur_layout += 1;
}

static void report_codec_sig_timeout(struct e_module_report_codec *me, struct e_event *e) {
  me->timeout_wait = !me->timeout_wait;

  if (me->timeout_wait) {
    /* Stop sending report */
    me->report_data_in[0] = 'S';
    me->report_data_in[1] = 0U;
    me->report_data_in[2] = 0U;
    me->report_data_in[3] = 0U;
    me->report_data_in[4] = 0U;
    me->report_data_in[5] = 0U;
    me->report_data_in[6] = 0U;
    me->report_data_in[7] = 0U;
    me->report_data_in[8] = 0U;

    USBD_CUSTOM_HID_SendReport(&hUsbDeviceFS, me->report_data_in, 9);

    e_timer_arm(&me->timer, 20U, 0U);
  }
  else {
    report_codec_sync_next(me);
  }
}
