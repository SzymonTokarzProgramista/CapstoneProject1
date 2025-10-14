% Used model: TRAS_wzorzec.slx

% 1 Swing the pendulum freely
% 2 calculate coefficients etc...

%% Position reference
% 1. Crude measurements of neutral position with our mobile devices
%   - Freely hanging 67 degrees
%   - Locked with a block 89 degrees
%   - That means that the neutral positon is 22 deg apart from the locked
%   position
%   - Skrajna pitch w dol position 42 degrees
%   - Skrajna pitch w gore position 136 degrees
% 2. Encoder reference measurement
%   1. zero the encoder in skrajna position
%   2. let it stabilise, obtain the angle
%   3. obtain angle from locked leveled pos
clear
load("00_raw_measurement_pendulum.mat");
angle = ScopeAngle.signals(2).values;
time = ScopeAngle.time;
plot(time(1:end), angle(1:end))

angle_skrajna_pitch_dol = mean(angle(200:1200))
angle_skrajna_pitch_gora = mean(angle(5400:5700))
angle_leveled = mean(angle(6500:6900))
angle_balanced = mean(angle(4000:5000))

% Rownowaga dla 28 gram