N = 400; % Number of months

F = zeros(1, N);
F(1) = 110; % Initial fox population

R = zeros(1, N);
R(1) = 950; % Initial rabbit population

% Model parameters
a = 1-0.88;
b = 0.0001;
c = 0.0003;
d = 1.039-1;

for n = 1:N-1
    F(n+1) = (1-a) * F(n) + b * R(n) * F(n);
    R(n+1) = (1+d) * R(n) - c * F(n) * R(n);
end

% Plot the time series
figure;
hold on;
plot(1:N, F, '*r'); % Fox population in red
plot(1:N, R, '*b'); % Rabbit population in blue
xlabel('Months');
ylabel('Population');
title('Predator-Prey Time Series');
legend('Foxes', 'Rabbits');
grid on;
hold off;

% Plot the phase plane trajectory
figure;
plot(F, R, 'k', 'LineWidth', 2);
xlabel('Fox Population');
ylabel('Rabbit Population');
title('Predator-Prey Phase Trajectory');
grid on;