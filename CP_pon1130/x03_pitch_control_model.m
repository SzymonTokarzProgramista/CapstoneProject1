clear; clc;
%% x03_pitch_control_model

load("pendulum_parameters.mat")

load("pendulum_equation.mat")
% Omit the yaw motor's torque
% Substitute identified parameters 
syms tau(t) omega_r theta_p(t) J_p J_r m D b c g
syms r_p F(t) % F(t) to tak na prawde thrust(rpm(ctrl(t))) = F(t)
r_p = 0.235; % [m]

figure;
text(0.1,0.5,"$" + latex(eqn_clean) + "$",'Interpreter','latex','FontSize',24)

eqn_pitch_control = subs(eqn_clean, [omega_r, J_p, J_r, m, D, b, c, g], ...
    [0, params.Jp, params.Jr, params.m, params.D, params.b, params.c, 9.81]);

eqn_pitch_control = subs(eqn_pitch_control, tau, F*r_p);

figure;
text(0.1,0.5,"$" + latex(eqn_pitch_control) + "$",'Interpreter','latex','FontSize',24)

load("thrust_in_function_of_rpm_polynomial.mat")

%%
syms omega_p(t) u(t)
load("motor_1st_order.mat")

syms pol(x)
pol(x) = @(x) poly.a + poly.b*x + poly.c*x^2 + poly.d*x^3

eqn_motor =  diff(omega_p, 1) == u*K/T - omega_p / T;
eqn_xd = subs(eqn_pitch_control, F, pol(omega_p));

figure;
text(0,0.5,"$" + latex(eqn_motor) + "$",'Interpreter','latex','FontSize',20)
text(0,1,"$" + latex(eqn_xd) + "$",'Interpreter','latex','FontSize',20)

%%

TODO 

zasymulowac rownania i zobaczyc co sie dzieje

ten uklad eqn_motor i eqn_xd


digitsOld = digits(2);
figure;
text(0.1,0.5,"$" + latex(vpa(isolate(eqn_xd, diff(theta_p,2)))) + "$",'Interpreter','latex','FontSize',24)