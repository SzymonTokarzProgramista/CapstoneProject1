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
% pol(x) = @(x) poly.a + poly.b*x + poly.c*x^2 + poly.d*x^3
pol(x) = @(x) poly.b*x + poly.c*x^2 + poly.d*x^3

eqn_motor =  diff(omega_p, 1) == u*K/T - omega_p / T;
eqn_xd = isolate(subs(eqn_pitch_control, F, pol(omega_p)), diff(theta_p, 2));

figure;
text(0,0.5,"$" + latex(eqn_motor) + "$",'Interpreter','latex','FontSize',20)
text(0,1,"$" + latex(eqn_xd) + "$",'Interpreter','latex','FontSize',20)

%% Generalize the coordinates
% x1 = theta_p
% x2 = diff(theta_p, 1) = diff(x1, 1)
% x3 = omega_m

syms x1(t) x2(t) x3(t)

x = [x1, x2, x3];

% Substitute these into your equations:
sys_of_eqns = [
    diff(x1,1) == x2;
    subs(eqn_xd, [theta_p, diff(theta_p,1), omega_p], [x1, x2, x3]);
    subs(eqn_motor, omega_p, x3);
    ];

figure;
text(0,1,"$" + latex(sys_of_eqns) + "$",'Interpreter','latex','FontSize',20)


%% Simulate the system of equations with ode45

% Convert symbolic equations to rhs
xdot = rhs(sys_of_eqns);

% Create "plain" symbolic variables instead of functions of t
syms x1_ x2_ x3_ u_ t_

% Substitute functional symbols with plain ones
xdot_plain = subs(xdot, [x1(t), x2(t), x3(t), u(t)], [x1_, x2_, x3_, u_]);
figure;
text(0,1,"$" + latex(xdot_plain) + "$",'Interpreter','latex','FontSize',20)

% Create numeric function
f = matlabFunction(xdot_plain, 'Vars', {t, [x1_; x2_; x3_], u_});

%% Actually simlluate
% % Control input (e.g., constant 0.5)
u = @(t) 0.1;  
% Step control: 0.5 do t = 2s, potem 0
% u = @(t) 0.2 * (t <= 1);

% Wrap the symbolic function into a numeric ODE
odefun = @(t, x) f(t, x, u(t));


x0 = [0; 0; 0];   % [theta_p(0), dtheta_p(0), omega_m(0)]

tspan = 0:0.01:30;
[t_sim, x_sim] = ode45(odefun, tspan, x0);

% Obliczamy wartość sterowania dla całego wektora czasowego
u_sim = arrayfun(u, t_sim);

figure;

% x1 = theta_p
subplot(4,1,1)
plot(t_sim, x_sim(:,1), 'LineWidth', 1.5)
ylabel('x_1 = \theta_p')
grid on

% x2 = dtheta_p/dt
subplot(4,1,2)
plot(t_sim, x_sim(:,2), 'LineWidth', 1.5)
ylabel('x_2 = d\theta_p/dt')
grid on

% x3 = omega_m
subplot(4,1,3)
plot(t_sim, x_sim(:,3), 'LineWidth', 1.5)
ylabel('x_3 = \omega_m')
grid on

% Control signal u(t)
subplot(4,1,4)
plot(t_sim, u_sim, 'LineWidth', 1.5)
ylabel('u(t)')
xlabel('Time [s]')
grid on

sgtitle('System Simulation with Control Input')  % wspólny tytuł

clear u

%% Linearize and calculate the LQR controller

% Symboliczne zmienne do linearizacji
syms x1_ x2_ x3_ u_

x_sym = [x1_; x2_; x3_];
u_sym = u_;

% % xdot_plain powinien zawierać tylko x1_, x2_, x3_, u_
% xdot_plain = subs(xdot_plain, [x1(t), x2(t), x3(t), u(t)], [x1_, x2_, x3_, u_]);

% Macierze symboliczne A i B
A_sym = jacobian(xdot_plain, x_sym);
B_sym = jacobian(xdot_plain, u_sym);

% figure;
% text(0,1,"$" + latex(A_sym) + "$",'Interpreter','latex','FontSize',20)
% text(0,10,"$" + latex(B_sym) + "$",'Interpreter','latex','FontSize',20)

% PUNKT PRACY
load("motor_1st_order.mat");  % masz tu K i T
load("pendulum_parameters.mat");
load("thrust_in_function_of_rpm_polynomial.mat");  % wczyta 'poly'

% Parametry
theta_p_setpoint = 0.8;  % [rad]
g = 9.81;
r_p = 0.235;

% Moment grawitacyjny (N·m)
M_grav = params.m * g * params.D * sin(theta_p_setpoint);

% Szukamy u_ref numerycznie
syms u_ref
omega_ref = K * u_ref;

F_expr = poly.b*omega_ref + poly.c*omega_ref^2 + poly.d*omega_ref^3;
eqn = F_expr * r_p == M_grav;

u_ref_sol = double(vpasolve(eqn, u_ref, [0, 1]));  % sterowanie w zakresie 0–1
omega_ref_sol = double(K * u_ref_sol);

x_ref = [theta_p_setpoint; 1e-12; omega_ref_sol];
u_ref = u_ref_sol;
disp('x_ref = '); disp(x_ref)
disp('u_ref = '); disp(u_ref)

% Zamiana na liczby
A = subs(A_sym, [x1_, x2_, x3_, u_], [x_ref(1), x_ref(2), x_ref(3), u_ref]);
B = subs(B_sym, [x1_, x2_, x3_, u_], [x_ref(1), x_ref(2), x_ref(3), u_ref]);


% figure;
% text(0,1,"$" + latex(A) + "$",'Interpreter','latex','FontSize',20)
% text(0,10,"$" + latex(B) + "$",'Interpreter','latex','FontSize',20)

disp('A = '); disp(double(A))
disp('eig(A) = '); disp(double(eig(A)))
disp('B = '); disp(double(B))
C = ctrb(double(A), double(B));
disp('Controllability matrix C = '); disp(C)
disp('Rank of C = '); disp(rank(C))


%% Actually compute the K matrix (LQR)

Q = diag([1000, .01, 0.0000001]);
% Q = diag([1000, 1, 0.0000001]);  % większy nacisk na x1
R = 10;

K = lqr(double(A), double(B), Q, R);
disp('K = '); disp(double(K))

disp('eig(A-BK) = '); disp(eig(double(A - B*K)))

%% Close the loop in the simulation
% Zamknięta pętla

% Z ograniczeniem
u_sat = @(u) max(-1, min(1, u));  % ograniczenie do [-1, 1]
odefun_lqr = @(t, x) f(t, x, u_sat(u_ref - K*(x - x_ref)));

% Bez ograniczenia
% odefun_lqr = @(t, x) f(t, x, -K*(x - x_ref));

[t_sim, x_sim] = ode45(odefun_lqr, tspan, x0);

% Sterowanie w czasie symulacji
u_lqr_sim = -((K*(x_sim.' - x_ref)).');   % zamiana na wiersze
u_lqr_sim_abs = u_sat(u_ref + (-K*(x_sim.' - x_ref)).');

% Wykres 4 subplotów
figure;

subplot(4,1,1)
plot(t_sim, x_sim(:,1), 'LineWidth', 1.5)
ylabel('x_1 = \theta_p'); grid on

subplot(4,1,2)
plot(t_sim, x_sim(:,2), 'LineWidth', 1.5)
ylabel('x_2 = d\theta_p/dt'); grid on

subplot(4,1,3)
plot(t_sim, x_sim(:,3), 'LineWidth', 1.5)
ylabel('x_3 = \omega_m'); grid on

subplot(4,1,4)
% plot(t_sim, u_lqr_sim, 'LineWidth', 1.5)
plot(t_sim, u_lqr_sim, 'b', t_sim, u_lqr_sim_abs, 'r--', 'LineWidth', 1.5)
legend('delta u','absolute u')
ylabel('u(t)'); xlabel('Time [s]'); grid on


sgtitle('LQR Closed-Loop Simulation')

%% LQI

An = double(A);
Bn = double(B);
Be = [Bn; 0];
Ae = [An, [0;0;0]; 1 0 0 0];

Qe = diag([1000, .01, 0.0000001, 100]);
% Q = diag([1000, 1, 0.0000001]);  % większy nacisk na x1
Re = 10;

K = lqr(Ae, Be, Qe, Re);
disp('K = '); disp(double(K))

disp('eig(A-BK) = '); disp(eig(double(Ae - Be*K)))
