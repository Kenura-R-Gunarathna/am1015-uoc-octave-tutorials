C = 400;

Population = [3.929, 5.308, 7.24, 9.638, 12.866, 17.069, 23.192, 31.443, 38.558, 50.156, 62.948, 75.995, 91.972, 105.711, 122.755, 131.669, 150.697, 179.323, 203.212, 226.505, 248.71, 281.416];
time = 0:1:(length(Population)-1);

% Calculate population changes per 10 years
PopChange = diff(Population);

% Display results
disp('Change in Population (per decade):');
disp(PopChange);

% Plot the change over time
plot(time(2:end), PopChange, 'ob');
xlabel('Year');
ylabel('Population Change (in million)');
title('Change in Population Per Decade');
grid on;
