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
        ;% Auto data (TRAS_wzorzec_P)
        ;%
            section.nData     = 52;
            section.data(52)  = dumData; %prealloc

                    ;% TRAS_wzorzec_P.Reset_Value
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% TRAS_wzorzec_P.Normal_Value
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% TRAS_wzorzec_P.Encoder_P1_Size
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% TRAS_wzorzec_P.Encoder_P1
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 4;

                    ;% TRAS_wzorzec_P.Encoder_P2_Size
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 5;

                    ;% TRAS_wzorzec_P.Encoder_P2
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 7;

                    ;% TRAS_wzorzec_P.Encoder1024PPR_Gain
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 8;

                    ;% TRAS_wzorzec_P.Converttorad_Gain
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 10;

                    ;% TRAS_wzorzec_P.Constant1_Value
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 11;

                    ;% TRAS_wzorzec_P.Constant_Value
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 12;

                    ;% TRAS_wzorzec_P.PitchControlFIlter_NumCoef
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 13;

                    ;% TRAS_wzorzec_P.PitchControlFIlter_DenCoef
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 19;

                    ;% TRAS_wzorzec_P.PitchControlFIlter_InitialStates
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 25;

                    ;% TRAS_wzorzec_P.AnalogInput_P1_Size
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 26;

                    ;% TRAS_wzorzec_P.AnalogInput_P1
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 28;

                    ;% TRAS_wzorzec_P.AnalogInput_P2_Size
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 29;

                    ;% TRAS_wzorzec_P.AnalogInput_P2
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 31;

                    ;% TRAS_wzorzec_P.AnalogInput_P3_Size
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 33;

                    ;% TRAS_wzorzec_P.AnalogInput_P3
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 35;

                    ;% TRAS_wzorzec_P.AnalogInput_P4_Size
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 37;

                    ;% TRAS_wzorzec_P.AnalogInput_P4
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 39;

                    ;% TRAS_wzorzec_P.ConverttoRPM_Gain
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 40;

                    ;% TRAS_wzorzec_P.PWM_corr_Gain
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 41;

                    ;% TRAS_wzorzec_P.PWM_corr1_Gain
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 42;

                    ;% TRAS_wzorzec_P.Saturation_UpperSat
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 43;

                    ;% TRAS_wzorzec_P.Saturation_LowerSat
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 44;

                    ;% TRAS_wzorzec_P.PWM_P1_Size
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 45;

                    ;% TRAS_wzorzec_P.PWM_P1
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 47;

                    ;% TRAS_wzorzec_P.PWM_P2_Size
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 48;

                    ;% TRAS_wzorzec_P.PWM_P2
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 50;

                    ;% TRAS_wzorzec_P.ResetEncoder_P1_Size
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 51;

                    ;% TRAS_wzorzec_P.ResetEncoder_P1
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 53;

                    ;% TRAS_wzorzec_P.ResetEncoder_P2_Size
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 54;

                    ;% TRAS_wzorzec_P.ResetEncoder_P2
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 56;

                    ;% TRAS_wzorzec_P.BitstreamVersion_P1_Size
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 57;

                    ;% TRAS_wzorzec_P.BitstreamVersion_P1
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 59;

                    ;% TRAS_wzorzec_P.BitstreamVersion_P2_Size
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 60;

                    ;% TRAS_wzorzec_P.BitstreamVersion_P2
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 62;

                    ;% TRAS_wzorzec_P.ThermStatus_P1_Size
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 63;

                    ;% TRAS_wzorzec_P.ThermStatus_P1
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 65;

                    ;% TRAS_wzorzec_P.ThermStatus_P2_Size
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 66;

                    ;% TRAS_wzorzec_P.ThermStatus_P2
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 68;

                    ;% TRAS_wzorzec_P.PWMPrescalerSource_Value
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 69;

                    ;% TRAS_wzorzec_P.PWMPrescaler_P1_Size
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 71;

                    ;% TRAS_wzorzec_P.PWMPrescaler_P1
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 73;

                    ;% TRAS_wzorzec_P.PWMPrescaler_P2_Size
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 74;

                    ;% TRAS_wzorzec_P.PWMPrescaler_P2
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 76;

                    ;% TRAS_wzorzec_P.ThermFlagSource_Value
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 77;

                    ;% TRAS_wzorzec_P.ThermFlag_P1_Size
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 79;

                    ;% TRAS_wzorzec_P.ThermFlag_P1
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 81;

                    ;% TRAS_wzorzec_P.ThermFlag_P2_Size
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 82;

                    ;% TRAS_wzorzec_P.ThermFlag_P2
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 84;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% TRAS_wzorzec_P.ResetEncoders_CurrentSetting
                    section.data(1).logicalSrcIdx = 52;
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
        ;% Auto data (TRAS_wzorzec_B)
        ;%
            section.nData     = 18;
            section.data(18)  = dumData; %prealloc

                    ;% TRAS_wzorzec_B.Encoder
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% TRAS_wzorzec_B.Converttorad
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 2;

                    ;% TRAS_wzorzec_B.Constant1
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 4;

                    ;% TRAS_wzorzec_B.Constant
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 5;

                    ;% TRAS_wzorzec_B.Rst
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 6;

                    ;% TRAS_wzorzec_B.Filtered
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 7;

                    ;% TRAS_wzorzec_B.AnalogInput
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 8;

                    ;% TRAS_wzorzec_B.ConverttoRPM
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 10;

                    ;% TRAS_wzorzec_B.Saturation
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 12;

                    ;% TRAS_wzorzec_B.PWM
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 14;

                    ;% TRAS_wzorzec_B.ResetEncoder
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 16;

                    ;% TRAS_wzorzec_B.BitstreamVersion
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 18;

                    ;% TRAS_wzorzec_B.ThermStatus
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 19;

                    ;% TRAS_wzorzec_B.PWMPrescalerSource
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 21;

                    ;% TRAS_wzorzec_B.PWMPrescaler
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 23;

                    ;% TRAS_wzorzec_B.ThermFlagSource
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 25;

                    ;% TRAS_wzorzec_B.ThermFlag
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 27;

                    ;% TRAS_wzorzec_B.startTime
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 29;

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
        ;% Auto data (TRAS_wzorzec_DW)
        ;%
            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% TRAS_wzorzec_DW.PitchControlFIlter_states
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% TRAS_wzorzec_DW.PitchControlFIlter_tmp
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% TRAS_wzorzec_DW.AngleScope_PWORK.LoggedData
                    section.data(1).logicalSrcIdx = 2;
                    section.data(1).dtTransOffset = 0;

                    ;% TRAS_wzorzec_DW.ControlScope_PWORK.LoggedData
                    section.data(2).logicalSrcIdx = 3;
                    section.data(2).dtTransOffset = 2;

                    ;% TRAS_wzorzec_DW.PitchAngleControl_PWORK.LoggedData
                    section.data(3).logicalSrcIdx = 4;
                    section.data(3).dtTransOffset = 5;

                    ;% TRAS_wzorzec_DW.RPMScope_PWORK.LoggedData
                    section.data(4).logicalSrcIdx = 5;
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


    targMap.checksum0 = 305813833;
    targMap.checksum1 = 82090058;
    targMap.checksum2 = 2163045358;
    targMap.checksum3 = 3828220038;

