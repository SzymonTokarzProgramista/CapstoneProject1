clear; clc;

%% Kinetic energy
syms theta_p(t) J_p T_p J_r T_r omega_r(t) T real
% Pendulum body and all elements connected
T_p = J_p * diff(theta_p, t)^2 / 2;

% Back rotor (spin axis is parallel to the pendulum's rotation axis, so 
% the total angular velocity of the rotor (in the inertial frame) 
% is the sum of the pendulum rotation and rotor spin
T_r = J_r * (diff(theta_p, t) + omega_r)^2 / 2;

% Total kinetic energy of the system
T = T_p + T_r;

%% Potential energy
syms V m g D real
% Only pendulum energy
% V = m * g * h(theta_p); h is the height above lowest COM position (rest)
% h(theta) = D - D * cos(theta_p); Where D is distance from pivot to COM
V = m * g * D * (1 - cos(theta_p));

%% Lagrangian
syms L
L = T - V;

%% Dissipation
syms P P_v P_n b c real
% Viscous damping
P_v = b * diff(theta_p, t)^2 / 2; % Viscous damping proportional to angular velocity
% Nonlinear damping
P_n = b * c * abs(diff(theta_p, t))^3 / 3; 
% Total power dissipation
P = P_v + P_n;

%% Differentiations
syms tau(t) q u omega_p real
% Define the generalized coordinates
q = [theta_p]; 

% differentiate
diff_t_q_prim = diff(jacobian(L, diff(q, t)), t).';
diff_q = jacobian(L, q).';
diff_q_prim = jacobian(P, diff(q, t)).';

% Final differential equation (u = d/dt(dL/dq') - dL/dq + dP/dq')
eqn = tau == diff_t_q_prim - diff_q + diff_q_prim

figure;
text(0.1,0.5,"$" + latex(eqn) + "$",'Interpreter','latex')

% % Trick in order to have real values of diff(theta_p)
% % omega_p = diff(theta_p, t);
% % eqn = subs(eqn, diff(theta_p, t), omega_p);
% eqn = simplify(eqn);
% eqn = subs(eqn, omega_p, diff(theta_p, t))
% 
% figure;
% text(0.1,0.5,"$" + latex(eqn) + "$",'Interpreter','latex')

%% Cleaning the eqn
eqn_clean = subs(eqn, ...
    abs(diff(theta_p(t),t))^2*(conj(diff(theta_p(t),t)) + diff(theta_p(t),t)) ...
    /(2*(conj(diff(theta_p(t),t))*diff(theta_p(t),t))^(1/2)), ...
    abs(diff(theta_p(t),t))*diff(theta_p(t),t));
eqn_clean = simplify(eqn_clean);
figure;
text(0.1,0.5,"$" + latex(eqn_clean) + "$",'Interpreter', 'latex')

% Save eqn_clean in a file named pendulum_equation
save('pendulum_equation.mat', 'eqn_clean');
