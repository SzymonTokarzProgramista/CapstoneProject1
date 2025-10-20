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
clear; clc;
load("00_raw_measurement_pendulum.mat");
angle = ScopeAngle.signals(2).values;
time = ScopeAngle.time;
plot(time(1:end), angle(1:end))

angle_skrajna_pitch_dol = mean(angle(200:1200));
angle_skrajna_pitch_gora = mean(angle(5400:5700));
angle_leveled = mean(angle(6500:6900));
angle_balanced = mean(angle(4000:5000));

% Rownowaga dla 28 gram

%% Free swinging pendulum identification
angle_swinging = angle(1223:4223) - angle_balanced;
time_swinging = time(1223:4223);

% Peak centers finding
[peaks, locs] = findpeaks(angle_swinging);
[flipped_peaks, flipped_locs] = findpeaks(flip(angle_swinging));
flipped_time_swinging = flip(time_swinging);
peak_times = (flip(flipped_time_swinging(flipped_locs)) + time_swinging(locs))/2;

figure
plot(time_swinging, angle_swinging); hold on;
% plot(flipped_time_swinging(flipped_locs), flipped_peaks, 'ro');
% plot(time_swinging(locs), peaks, 'ro'); 
xline(peak_times, '-r'); hold off;

omega_swinging = gradient(angle_swinging, mean(diff(time_swinging)));
figure
plot(omega_swinging)

% Some params already calculated
T = mean(diff(peak_times)) % [s] Period
T_std_dev = std(diff(peak_times)) % Period deviation
omega_0 = 2*pi / T % [Hz] Natural frequency

% Initial conditions of our measurement
theta0 = angle_swinging(1);
omega0 = omega_swinging(1);
x0 = [theta0; omega0];


%% Load the eqn
load("pendulum_equation.mat")
% Substitute input force and torque as 0
syms tau omega_r theta_p(t)
% eqn_sub = subs(eqn_clean, [tau, omega_r], [0, 0]);
% pretty(eqn_sub)

eqn_free_swinging = isolate(subs(eqn_clean, [tau, omega_r], [0, 0]), diff(theta_p, 2))
figure;
text(0.1,0.5,"$" + latex(eqn_free_swinging) + "$",'Interpreter','latex')

%% Fit the model to the equation
function dx = pendulum_model(t, x, params)
    theta = x(1);
    omega = x(2);

    Jp = params.Jp;
    Jr = params.Jr;
    b = params.b;
    c = params.c;
    m = params.m;
    D = params.D;
    g = 9.8105;

    dx = zeros(2,1);
    dx(1) = omega;
    dx(2) = -( b*(1 + c*abs(omega))*omega + m*g*D*sin(theta) ) / (Jp + Jr);
end

function err = costfun(p, time, angle_meas, x0)
    params.Jp = p(1);
    params.Jr = p(2);
    params.b  = p(3);
    params.c  = p(4);
    params.m  = p(5);
    params.D  = p(6);

    [~, x] = ode45(@(t,x) pendulum_model(t,x,params), time, x0);
    theta_sim = x(:,1);

    % Align phase and amplitude slightly (optional normalization)
    err = sum((theta_sim - angle_meas).^2);
end

p0 = [0.002, 0.0005, 0.001, 0.02, 0.03, 0.06];  % [Jp Jr b c m D]

x0 = [angle_swinging(1); 0];
best_p = fminsearch(@(p) costfun(p, time_swinging, angle_swinging, x0), p0);

% Validate
params = struct('Jp',best_p(1),'Jr',best_p(2), ...
                'b',best_p(3),'c',best_p(4),'m',best_p(5),'D',best_p(6));

[t_sim, x_sim] = ode45(@(t,x) pendulum_model(t,x,params), time_swinging, x0);

figure;
plot(time_swinging, angle_swinging, 'k', 'DisplayName', 'Measured');
hold on;
plot(t_sim, x_sim(:,1), 'r--', 'DisplayName', 'Simulated');
legend; xlabel('Time [s]'); ylabel('\theta [rad]');

