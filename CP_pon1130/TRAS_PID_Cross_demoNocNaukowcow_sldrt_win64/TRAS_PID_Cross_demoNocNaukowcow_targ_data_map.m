    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 2;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc paramMap
        ;%
        paramMap.nSections           = nTotSects;
        paramMap.sectIdxOffset       = sectIdxOffset;
            paramMap.sections(nTotSects) = dumSection; %prealloc
        paramMap.nTotData            = -1;

        ;%
        ;% Auto data (TRAS_PID_Cross_demoNocNaukowcow_P)
        ;%
            section.nData     = 86;
            section.data(86)  = dumData; %prealloc

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController1_D
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController3_D
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController4_D
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController2_D
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController1_I
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController2_I
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController3_I
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController4_I
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController1_InitialConditionForFilter
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController3_InitialConditionForFilter
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController4_InitialConditionForFilter
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController2_InitialConditionForFilter
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController1_InitialConditionForIntegrator
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController3_InitialConditionForIntegrator
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController4_InitialConditionForIntegrator
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController2_InitialConditionForIntegrator
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController1_N
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController3_N
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController4_N
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController2_N
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 19;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController1_P
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 20;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController3_P
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 21;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController4_P
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 22;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PIDController2_P
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 23;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Reset_Value
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 24;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Normal_Value
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 25;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AzimuthReference_Amplitude
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 26;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AzimuthReference_Frequency
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 27;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Encoder_P1_Size
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 28;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Encoder_P1
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 30;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Encoder_P2_Size
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 31;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Encoder_P2
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 33;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Encoder1024PPR_Gain
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 34;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Converttorad_Gain
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 36;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PitchReference_Amplitude
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 37;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PitchReference_Frequency
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 38;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Sat_UpperSat
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 39;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Sat_LowerSat
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 40;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AzimuthControlFIlter_NumCoef
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 41;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AzimuthControlFIlter_DenCoef
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 47;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AzimuthControlFIlter_InitialStates
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 53;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Constant_Value
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 54;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Sat1_UpperSat
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 55;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Sat1_LowerSat
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 56;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PitchControlFIlter_NumCoef
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 57;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PitchControlFIlter_DenCoef
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 63;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PitchControlFIlter_InitialStates
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 69;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AnalogInput_P1_Size
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 70;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AnalogInput_P1
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 72;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AnalogInput_P2_Size
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 73;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AnalogInput_P2
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 75;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AnalogInput_P3_Size
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 77;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AnalogInput_P3
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 79;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AnalogInput_P4_Size
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 81;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.AnalogInput_P4
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 83;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ConverttoRPM_Gain
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 84;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWM_corr_Gain
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 85;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWM_corr1_Gain
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 86;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Saturation_UpperSat
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 87;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.Saturation_LowerSat
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 88;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWM_P1_Size
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 89;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWM_P1
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 91;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWM_P2_Size
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 92;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWM_P2
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 94;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ResetEncoder_P1_Size
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 95;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ResetEncoder_P1
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 97;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ResetEncoder_P2_Size
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 98;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ResetEncoder_P2
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 100;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.BitstreamVersion_P1_Size
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 101;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.BitstreamVersion_P1
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 103;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.BitstreamVersion_P2_Size
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 104;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.BitstreamVersion_P2
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 106;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ThermStatus_P1_Size
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 107;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ThermStatus_P1
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 109;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ThermStatus_P2_Size
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 110;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ThermStatus_P2
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 112;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWMPrescalerSource_Value
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 113;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWMPrescaler_P1_Size
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 115;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWMPrescaler_P1
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 117;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWMPrescaler_P2_Size
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 118;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.PWMPrescaler_P2
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 120;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ThermFlagSource_Value
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 121;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ThermFlag_P1_Size
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 123;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ThermFlag_P1
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 125;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ThermFlag_P2_Size
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 126;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ThermFlag_P2
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 128;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% TRAS_PID_Cross_demoNocNaukowcow_P.ResetEncoders_CurrentSetting
                    section.data(1).logicalSrcIdx = 86;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section


            ;%
            ;% Non-auto Data (parameter)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        paramMap.nTotData = nTotData;



    ;%**************************
    ;% Create Block Output Map *
    ;%**************************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 1;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc sigMap
        ;%
        sigMap.nSections           = nTotSects;
        sigMap.sectIdxOffset       = sectIdxOffset;
            sigMap.sections(nTotSects) = dumSection; %prealloc
        sigMap.nTotData            = -1;

        ;%
        ;% Auto data (TRAS_PID_Cross_demoNocNaukowcow_B)
        ;%
            section.nData     = 28;
            section.data(28)  = dumData; %prealloc

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.AzimuthReference
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.Encoder
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.Converttorad
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 3;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.PitchReference
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 5;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.FilterCoefficient
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 6;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.FilterCoefficient_a
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 7;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.Sat
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 8;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.Filtered
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 9;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.FilterCoefficient_af
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 10;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.FilterCoefficient_h
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 11;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.Sat1
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 12;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.Filtered_g
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 13;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.AnalogInput
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 14;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.ConverttoRPM
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 16;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.IntegralGain
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 18;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.IntegralGain_j
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 19;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.IntegralGain_p
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 20;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.IntegralGain_f
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 21;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.ResetEncoders
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 22;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.Saturation
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 23;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.PWM
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 25;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.ResetEncoder
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 27;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.BitstreamVersion
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 29;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.ThermStatus
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 30;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.PWMPrescalerSource
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 32;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.PWMPrescaler
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 34;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.ThermFlagSource
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 36;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_B.ThermFlag
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 38;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section


            ;%
            ;% Non-auto Data (signal)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        sigMap.nTotData = nTotData;



    ;%*******************
    ;% Create DWork Map *
    ;%*******************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 2;
        sectIdxOffset = 1;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc dworkMap
        ;%
        dworkMap.nSections           = nTotSects;
        dworkMap.sectIdxOffset       = sectIdxOffset;
            dworkMap.sections(nTotSects) = dumSection; %prealloc
        dworkMap.nTotData            = -1;

        ;%
        ;% Auto data (TRAS_PID_Cross_demoNocNaukowcow_DW)
        ;%
            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% TRAS_PID_Cross_demoNocNaukowcow_DW.AzimuthControlFIlter_states
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_DW.PitchControlFIlter_states
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 5;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_DW.AzimuthControlFIlter_tmp
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 10;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_DW.PitchControlFIlter_tmp
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 11;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% TRAS_PID_Cross_demoNocNaukowcow_DW.AngleReference_PWORK.LoggedData
                    section.data(1).logicalSrcIdx = 4;
                    section.data(1).dtTransOffset = 0;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_DW.AzimuthAngleControl_PWORK.LoggedData
                    section.data(2).logicalSrcIdx = 5;
                    section.data(2).dtTransOffset = 2;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_DW.PitchAngleControl_PWORK.LoggedData
                    section.data(3).logicalSrcIdx = 6;
                    section.data(3).dtTransOffset = 5;

                    ;% TRAS_PID_Cross_demoNocNaukowcow_DW.RPM_PWORK.LoggedData
                    section.data(4).logicalSrcIdx = 7;
                    section.data(4).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section


            ;%
            ;% Non-auto Data (dwork)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        dworkMap.nTotData = nTotData;



    ;%
    ;% Add individual maps to base struct.
    ;%

    targMap.paramMap  = paramMap;
    targMap.signalMap = sigMap;
    targMap.dworkMap  = dworkMap;

    ;%
    ;% Add checksums to base struct.
    ;%


    targMap.checksum0 = 2028750925;
    targMap.checksum1 = 3764595917;
    targMap.checksum2 = 470329722;
    targMap.checksum3 = 3334342192;

