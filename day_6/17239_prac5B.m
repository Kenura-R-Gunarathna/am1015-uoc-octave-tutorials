% Finding the the propotionality constant b.

parts = 10;
PREDICTION_RANGE = 34; % 2022
C = 400; % million
population = [3.929, 5.308, 7.24, 9.638, 12.866, 17.069, 23.192, 31.443, 38.558, 50.156, 62.948, 75.995, 91.972, 105.711, 122.755, 131.669, 150.697, 179.323, 203.212, 226.505, 248.71, 281.416]; % million
MAX_TIME = length(population) - 1; % 20 : 0 1 ... 19 20 , index : 1 2 ... 20 21 , length : MAX_TIME + 1
time = 0:1:MAX_TIME;

P_n_1 = population(2:MAX_TIME + 1); % array index : 2 - 21
P_n = population(1:MAX_TIME);

b = sum((P_n_1 - P_n).*(C - P_n).* P_n) / sum((P_n.*(C - P_n)).^2) / parts

b = 0.00073

% Plottign the Predicted model.

predict_time = 0:(1 / parts):PREDICTION_RANGE;
predict_P_n = zeros(1, PREDICTION_RANGE*10); % predict_P_n = 211

predict_P_n(1) = population(1); % set initial value

for i = 1:1:PREDICTION_RANGE*10, % PREDICTION_RANGE*10 = 210
    predict_P_n(i+1) = predict_P_n(i) + b * (C - predict_P_n(i)) .* predict_P_n(i);
endfor

% population
% predict_P_n

plot(predict_time, predict_P_n, "-b");
xlabel("Time (Years/10)");
ylabel("Population (Millions)");
legend("Model (b=0.00073)");

ylim([min(predict_P_n), max(predict_P_n) + 180]);  % Adds extra vertical space
grid on;

predict_P_n(222)
predict_P_n(232)