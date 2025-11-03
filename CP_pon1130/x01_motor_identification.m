% Used model: TRAS_wzorzec.slx

% 1 measurement of dc motor (just simulink)
% 2 measurement of thrust using weights or sth
% 3 model the 

% wieszamy obciazniki i dobieramy sterowanie tak zeby byl poziom
% Poziom to jest leveled angle 0.789927423379634 rad przy enkoderze wyzerowanym w
% skrajnej dolnej 
clear; clc;
hanging_masses =    [-74 -59 -45  -26 -16  -9    0       9   16     26      40      55      69      83]
control =           [-.77  -.57  -.37   0   .19  0.27  0.34    .44 .48    0.54    0.65    0.77    0.895   1]
RPM =               [-2860  -2420  -1850   0   1160 1505  1750    2068 2185   2350   2660   2950 3180 3340 ]
% encoder =           [0.8]

thrust_g = hanging_masses - hanging_masses(4); % pay attention here
thrust_N = thrust_g * 9.81 / 1000;

x = linspace(-3500,3500,100);

% % Polynomial fit
% poly = polyfit(RPM, thrust_N, 3);
% y_poly = polyval(poly, x);

% Polynomial fit 
ftype = fittype('a + b*x + c*x^2 + d*x^3', 'independent', 'x');
poly = fit(RPM(:), thrust_N(:), ftype, 'StartPoint', [1e-6, 2 0 0]);
y_poly = poly.a + poly.b*x + poly.c*x.^2 + poly.d*x.^3;
% Exponential fit
% ftype = fittype('k * x^n', 'independent', 'x');
% expo = fit(RPM(:), thrust_N(:), ftype, 'StartPoint', [1e-6, 1]);
% y_expo = expo.k*x.*expo.n;

figure;
plot(RPM, thrust_N, 'o', x, y_poly, '-') %, x, y_expo, '--' );
xlabel('RPM'); ylabel('Thrust [N]');
legend('Data', 'Fitted curve');

save("thrust_in_function_of_rpm_polynomial", "poly")

%% Motor dynamical response fitting
% Our input is the setpoint with range u [-1, 1]
% Output is the rotational velocity 
% We will approximate the motor with first order equation
% G(s) = K / (tau * s + 1)
clear; clc;
load("01_raw_actuators_positivie_control.mat")

Ts = 0.01; % Sampled every 0.01 s
control = ScopeControl.signals(1).values;
omega = ScopeRPM.signals(1).values;

data = iddata(omega, control, Ts);
sys = tfest(data, 1, 0); % First order

figure
compare(data, sys);

%% Since the nonlinearity is high, i choosen black box for dynamics of the motor
clear; clc;
load("01_raw_actuators_positivie_control.mat")

Ts = 0.01;
control = ScopeControl.signals(1).values;
omega = ScopeRPM.signals(1).values;

data = iddata(omega, control, Ts);

% Choose orders: [nb nf nk] = [number of B coeffs, F coeffs, delay]
nb = 2; nf = 2; nk = 1;

motor_nlhw = nlhw(data, [nb nf nk], 'idPiecewiseLinear', 'idPiecewiseLinear');

% Compare simulated vs measured RPM
figure;
compare(data, motor_nlhw);

K(u)
