/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f0xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LED_3_Pin GPIO_PIN_0
#define LED_3_GPIO_Port GPIOA
#define LED_2_Pin GPIO_PIN_1
#define LED_2_GPIO_Port GPIOA
#define LED_1_Pin GPIO_PIN_3
#define LED_1_GPIO_Port GPIOA
#define SW_BACKLIGHT_Pin GPIO_PIN_4
#define SW_BACKLIGHT_GPIO_Port GPIOA
#define SW_BACKLIGHT_EXTI_IRQn EXTI4_15_IRQn
#define SW_3_Pin GPIO_PIN_5
#define SW_3_GPIO_Port GPIOA
#define SW_3_EXTI_IRQn EXTI4_15_IRQn
#define SW_2_Pin GPIO_PIN_6
#define SW_2_GPIO_Port GPIOA
#define SW_2_EXTI_IRQn EXTI4_15_IRQn
#define SW_1_Pin GPIO_PIN_7
#define SW_1_GPIO_Port GPIOA
#define SW_1_EXTI_IRQn EXTI4_15_IRQn
#define SW_LAYOUT_Pin GPIO_PIN_1
#define SW_LAYOUT_GPIO_Port GPIOB
#define SW_LAYOUT_EXTI_IRQn EXTI0_1_IRQn
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
