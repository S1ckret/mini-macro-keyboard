/*
 * e_signals.h
 *
 *  Created on: 12 нояб. 2020 г.
 *      Author: S1ckret
 */

#ifndef INC_EVENT_E_SIGNALS_H_
#define INC_EVENT_E_SIGNALS_H_

#include <stdint.h>

/**
 * @brief Signal type
 */
typedef uint16_t e_signal_t;

/**
 * @brief System reserved positions for signals
 */
enum e_signal_sys {
  SIG_SYS_NOP,
  SIG_SYS_MOD_ADD,
  SIG_SYS_MOD_RM,
  SIG_SYS_INIT,
  SIG_SYS_TIMEOUT,
  SIG_SYS_USER
};


/**
 * @brief Signal list
 */
enum e_signal {
  SIG_KEY_PRESSED = SIG_SYS_USER,
  SIG_KEY_RELEASED,
  SIG_BACKLIGHT_ON,
  SIG_BACKLIGHT_OFF,
  SIG_LAYOUT_ON,
  SIG_LAYOUT_OFF,
  SIG_KEYBOARD_SET_KEY,
  SIG_KEYBOARD_ADD_KEY,
  SIG_KEYBOARD_GET_KEY,
  SIG_KEYBOARD_KEY_DATA,
  SIG_HID_CODEC_DATA_IN,
  SIG_HID_CODEC_DATA_OUT,
  /* ... */
};

#endif /* INC_EVENT_E_SIGNALS_H_ */
