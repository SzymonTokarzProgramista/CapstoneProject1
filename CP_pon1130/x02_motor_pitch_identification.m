clear; clc;
pos = load("03_actuators_positive_control_identification.mat");
neg = load("04_actuators_negative_control_identification.mat");
bal = load("05_actuator_pitch_step_034.mat");

%% TODO xd
% %%
% Ts = 0.01; % Sampled every 0.01 s
% control = pos.ScopeControl.signals(2).values;
% omega = pos.ScopeRPM.signals(1).values;
% 
% data = iddata(omega, control, Ts);
% sys = tfest(data, 1, 0); % First order
% 
% figure
% compare(data, sys);
% 
% %%
% % figure; 
% systems = [];
% for i = 999:1000:10000
%     d = filter(ones(1,10)/10, 1, omega(i:i+1001)-omega(i));
%     d = iddata(d, control(i:i+1001)-control(i), Ts);
% %     d = iddata(omega(i:i+1100), control(i:i+1100), Ts);
% %     d = idfilt(d, {[0 1], [0.01 1]})
% %     d = misdata(d)
% %     plot(d); hold on
% 
%     systems = [systems, tfest(d, 1, 0)];
%     figure
%     compare(d, systems(end));
% %     compare(data, sys);
% end
% hold off
% %%
% Numerators = [];
% Denominators = [];
% for i = 1:10
%     
% 
%     Numerators = [Numerators systems.Numerator{i}];
%     Denominators = [Denominators; systems.Denominator{i}];
% end
% figure
% subplot(1,2,1);
% plot(Numerators);
% subplot(1,2,2);
% plot(Denominators(:,2))

%% Simple ident
control = bal.ScopeControl.signals(2).values;
omega = bal.ScopeRPM.signals(1).values;

data = iddata(omega, control, 0.01);
sys = tfest(data, 1, 0); % First order

figure;
compare(data, sys);

numerator = sys.Numerator
denominator = sys.Denominator
