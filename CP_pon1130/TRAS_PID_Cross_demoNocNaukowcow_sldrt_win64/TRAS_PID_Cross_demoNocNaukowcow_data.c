/*
 * TRAS_PID_Cross_demoNocNaukowcow_data.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "TRAS_PID_Cross_demoNocNaukowcow".
 *
 * Model version              : 13.0
 * Simulink Coder version : 9.6 (R2021b) 14-May-2021
 * C source code generated on : Mon Oct  6 12:51:34 2025
 *
 * Target selection: sldrt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "TRAS_PID_Cross_demoNocNaukowcow.h"
#include "TRAS_PID_Cross_demoNocNaukowcow_private.h"

/* Block parameters (default storage) */
P_TRAS_PID_Cross_demoNocNaukowcow_T TRAS_PID_Cross_demoNocNaukowcow_P = {
  /* Mask Parameter: PIDController1_D
   * Referenced by: '<S31>/Derivative Gain'
   */
  0.43040000000000006,

  /* Mask Parameter: PIDController3_D
   * Referenced by: '<S127>/Derivative Gain'
   */
  -0.0,

  /* Mask Parameter: PIDController4_D
   * Referenced by: '<S175>/Derivative Gain'
   */
  -0.0223,

  /* Mask Parameter: PIDController2_D
   * Referenced by: '<S79>/Derivative Gain'
   */
  0.8928,

  /* Mask Parameter: PIDController1_I
   * Referenced by: '<S34>/Integral Gain'
   */
  0.0367,

  /* Mask Parameter: PIDController2_I
   * Referenced by: '<S82>/Integral Gain'
   */
  0.4392,

  /* Mask Parameter: PIDController3_I
   * Referenced by: '<S130>/Integral Gain'
   */
  0.0,

  /* Mask Parameter: PIDController4_I
   * Referenced by: '<S178>/Integral Gain'
   */
  0.0,

  /* Mask Parameter: PIDController1_InitialConditionForFilter
   * Referenced by: '<S32>/Filter'
   */
  0.0,

  /* Mask Parameter: PIDController3_InitialConditionForFilter
   * Referenced by: '<S128>/Filter'
   */
  0.0,

  /* Mask Parameter: PIDController4_InitialConditionForFilter
   * Referenced by: '<S176>/Filter'
   */
  0.0,

  /* Mask Parameter: PIDController2_InitialConditionForFilter
   * Referenced by: '<S80>/Filter'
   */
  0.0,

  /* Mask Parameter: PIDController1_InitialConditionForIntegrator
   * Referenced by: '<S37>/Integrator'
   */
  0.0,

  /* Mask Parameter: PIDController3_InitialConditionForIntegrator
   * Referenced by: '<S133>/Integrator'
   */
  0.0,

  /* Mask Parameter: PIDController4_InitialConditionForIntegrator
   * Referenced by: '<S181>/Integrator'
   */
  0.0,

  /* Mask Parameter: PIDController2_InitialConditionForIntegrator
   * Referenced by: '<S85>/Integrator'
   */
  0.0,

  /* Mask Parameter: PIDController1_N
   * Referenced by: '<S40>/Filter Coefficient'
   */
  100.0,

  /* Mask Parameter: PIDController3_N
   * Referenced by: '<S136>/Filter Coefficient'
   */
  100.0,

  /* Mask Parameter: PIDController4_N
   * Referenced by: '<S184>/Filter Coefficient'
   */
  100.0,

  /* Mask Parameter: PIDController2_N
   * Referenced by: '<S88>/Filter Coefficient'
   */
  100.0,

  /* Mask Parameter: PIDController1_P
   * Referenced by: '<S42>/Proportional Gain'
   */
  0.3246,

  /* Mask Parameter: PIDController3_P
   * Referenced by: '<S138>/Proportional Gain'
   */
  -0.0,

  /* Mask Parameter: PIDController4_P
   * Referenced by: '<S186>/Proportional Gain'
   */
  -0.0363,

  /* Mask Parameter: PIDController2_P
   * Referenced by: '<S90>/Proportional Gain'
   */
  0.4978,

  /* Expression: 1
   * Referenced by: '<Root>/Reset'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Normal'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<Root>/Azimuth  Reference'
   */
  1.0,

  /* Expression: .025
   * Referenced by: '<Root>/Azimuth  Reference'
   */
  0.025,

  /* Computed Parameter: Encoder_P1_Size
   * Referenced by: '<S5>/Encoder'
   */
  { 1.0, 1.0 },

  /* Expression: BaseAddress
   * Referenced by: '<S5>/Encoder'
   */
  57088.0,

  /* Computed Parameter: Encoder_P2_Size
   * Referenced by: '<S5>/Encoder'
   */
  { 1.0, 1.0 },

  /* Expression: T0
   * Referenced by: '<S5>/Encoder'
   */
  0.01,

  /* Expression: [1 -1]
   * Referenced by: '<S5>/Encoder 1024 PPR'
   */
  { 1.0, -1.0 },

  /* Expression: 2*pi/4096
   * Referenced by: '<S5>/Convert to rad'
   */
  0.0015339807878856412,

  /* Expression: .1
   * Referenced by: '<Root>/Pitch Reference'
   */
  0.1,

  /* Expression: 1/30
   * Referenced by: '<Root>/Pitch Reference'
   */
  0.033333333333333333,

  /* Expression: 0.3
   * Referenced by: '<Root>/Sat'
   */
  0.3,

  /* Expression: -0.3
   * Referenced by: '<Root>/Sat'
   */
  -0.3,

  /* Expression: [0.0598    0.2990    0.5980    0.5980    0.2990    0.0598] * 1e-3
   * Referenced by: '<Root>/Azimuth Control FIlter'
   */
  { 5.9800000000000003E-5, 0.000299, 0.000598, 0.000598, 0.000299,
    5.9800000000000003E-5 },

  /* Expression: [1.0000   -3.9845    6.4349   -5.2536    2.1651   -0.3599]
   * Referenced by: '<Root>/Azimuth Control FIlter'
   */
  { 1.0, -3.9845, 6.4349, -5.2536, 2.1651, -0.3599 },

  /* Expression: 0
   * Referenced by: '<Root>/Azimuth Control FIlter'
   */
  0.0,

  /* Expression: 0.3
   * Referenced by: '<Root>/Constant'
   */
  0.3,

  /* Expression: 0.8
   * Referenced by: '<Root>/Sat1'
   */
  0.8,

  /* Expression: -.2
   * Referenced by: '<Root>/Sat1'
   */
  -0.2,

  /* Expression: [0.0598    0.2990    0.5980    0.5980    0.2990    0.0598] * 1e-3
   * Referenced by: '<Root>/Pitch Control FIlter'
   */
  { 5.9800000000000003E-5, 0.000299, 0.000598, 0.000598, 0.000299,
    5.9800000000000003E-5 },

  /* Expression: [1.0000   -3.9845    6.4349   -5.2536    2.1651   -0.3599]
   * Referenced by: '<Root>/Pitch Control FIlter'
   */
  { 1.0, -3.9845, 6.4349, -5.2536, 2.1651, -0.3599 },

  /* Expression: 0
   * Referenced by: '<Root>/Pitch Control FIlter'
   */
  0.0,

  /* Computed Parameter: AnalogInput_P1_Size
   * Referenced by: '<S5>/Analog Input'
   */
  { 1.0, 1.0 },

  /* Expression: BaseAddress
   * Referenced by: '<S5>/Analog Input'
   */
  57088.0,

  /* Computed Parameter: AnalogInput_P2_Size
   * Referenced by: '<S5>/Analog Input'
   */
  { 1.0, 2.0 },

  /* Expression: [1 0]
   * Referenced by: '<S5>/Analog Input'
   */
  { 1.0, 0.0 },

  /* Computed Parameter: AnalogInput_P3_Size
   * Referenced by: '<S5>/Analog Input'
   */
  { 1.0, 2.0 },

  /* Expression: [1 1]
   * Referenced by: '<S5>/Analog Input'
   */
  { 1.0, 1.0 },

  /* Computed Parameter: AnalogInput_P4_Size
   * Referenced by: '<S5>/Analog Input'
   */
  { 1.0, 1.0 },

  /* Expression: T0
   * Referenced by: '<S5>/Analog Input'
   */
  0.01,

  /* Expression: 1000/0.52/2
   * Referenced by: '<S5>/Convert to RPM'
   */
  961.53846153846155,

  /* Expression: 1
   * Referenced by: '<S5>/PWM_corr'
   */
  1.0,

  /* Expression: 1
   * Referenced by: '<S5>/PWM_corr1'
   */
  1.0,

  /* Expression: 1
   * Referenced by: '<S5>/Saturation'
   */
  1.0,

  /* Expression: -1
   * Referenced by: '<S5>/Saturation'
   */
  -1.0,

  /* Computed Parameter: PWM_P1_Size
   * Referenced by: '<S5>/PWM'
   */
  { 1.0, 1.0 },

  /* Expression: BaseAddress
   * Referenced by: '<S5>/PWM'
   */
  57088.0,

  /* Computed Parameter: PWM_P2_Size
   * Referenced by: '<S5>/PWM'
   */
  { 1.0, 1.0 },

  /* Expression: T0
   * Referenced by: '<S5>/PWM'
   */
  0.01,

  /* Computed Parameter: ResetEncoder_P1_Size
   * Referenced by: '<S5>/ResetEncoder'
   */
  { 1.0, 1.0 },

  /* Expression: BaseAddress
   * Referenced by: '<S5>/ResetEncoder'
   */
  57088.0,

  /* Computed Parameter: ResetEncoder_P2_Size
   * Referenced by: '<S5>/ResetEncoder'
   */
  { 1.0, 1.0 },

  /* Expression: T0
   * Referenced by: '<S5>/ResetEncoder'
   */
  0.01,

  /* Computed Parameter: BitstreamVersion_P1_Size
   * Referenced by: '<S5>/Bitstream Version'
   */
  { 1.0, 1.0 },

  /* Expression: BaseAddress
   * Referenced by: '<S5>/Bitstream Version'
   */
  57088.0,

  /* Computed Parameter: BitstreamVersion_P2_Size
   * Referenced by: '<S5>/Bitstream Version'
   */
  { 1.0, 1.0 },

  /* Expression: T0
   * Referenced by: '<S5>/Bitstream Version'
   */
  0.01,

  /* Computed Parameter: ThermStatus_P1_Size
   * Referenced by: '<S5>/Therm Status'
   */
  { 1.0, 1.0 },

  /* Expression: BaseAddress
   * Referenced by: '<S5>/Therm Status'
   */
  57088.0,

  /* Computed Parameter: ThermStatus_P2_Size
   * Referenced by: '<S5>/Therm Status'
   */
  { 1.0, 1.0 },

  /* Expression: T0
   * Referenced by: '<S5>/Therm Status'
   */
  0.01,

  /* Expression: [1 1]
   * Referenced by: '<S5>/PWMPrescalerSource'
   */
  { 1.0, 1.0 },

  /* Computed Parameter: PWMPrescaler_P1_Size
   * Referenced by: '<S5>/PWMPrescaler'
   */
  { 1.0, 1.0 },

  /* Expression: BaseAddress
   * Referenced by: '<S5>/PWMPrescaler'
   */
  57088.0,

  /* Computed Parameter: PWMPrescaler_P2_Size
   * Referenced by: '<S5>/PWMPrescaler'
   */
  { 1.0, 1.0 },

  /* Expression: T0
   * Referenced by: '<S5>/PWMPrescaler'
   */
  0.01,

  /* Expression: [1 1]
   * Referenced by: '<S5>/ThermFlagSource'
   */
  { 1.0, 1.0 },

  /* Computed Parameter: ThermFlag_P1_Size
   * Referenced by: '<S5>/ThermFlag '
   */
  { 1.0, 1.0 },

  /* Expression: BaseAddress
   * Referenced by: '<S5>/ThermFlag '
   */
  57088.0,

  /* Computed Parameter: ThermFlag_P2_Size
   * Referenced by: '<S5>/ThermFlag '
   */
  { 1.0, 1.0 },

  /* Expression: T0
   * Referenced by: '<S5>/ThermFlag '
   */
  0.01,

  /* Computed Parameter: ResetEncoders_CurrentSetting
   * Referenced by: '<Root>/Reset Encoders'
   */
  0U
};
