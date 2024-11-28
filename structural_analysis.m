% Beam Parameters
L = 10; % length of the beam (m)
w = 500; % uniform load (N/m)
E = 210 * 10^9; % modulus of elasticity (Pa, for steel)
I = 2000 * 10^-8; % moment of inertia (m^4)

% Define the position along the beam
x = linspace(0, L, 100);

% Shear Force (V)
V = (w * L / 2) - w * x;

% Bending Moment (M)
M = (w * L / 2) * x - (w / 2) * x.^2;

% Deflection (δ)
delta = (w / (24 * E * I)) * x.^2 .* (L^2 - x.^2);

% Plot Shear Force
figure;
subplot(3, 1, 1);
plot(x, V, 'r', 'LineWidth', 2);
title('Shear Force Distribution');
xlabel('Position along the beam (m)');
ylabel('Shear Force (N)');
grid on;

% Plot Bending Moment
subplot(3, 1, 2);
plot(x, M, 'b', 'LineWidth', 2);
title('Bending Moment Distribution');
xlabel('Position along the beam (m)');
ylabel('Bending Moment (Nm)');
grid on;

% Plot Deflection
subplot(3, 1, 3);
plot(x, delta, 'g', 'LineWidth', 2);
title('Deflection Distribution');
xlabel('Position along the beam (m)');
ylabel('Deflection (m)');
grid on;
