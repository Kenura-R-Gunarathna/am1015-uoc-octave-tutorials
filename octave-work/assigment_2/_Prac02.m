working_duration = 1:1/2:6
income = [4 12 15 25 32 28 37 35 38 39 42]

general_working_duration = [0 working_duration]
general_income           = [0 income]

plot(general_working_duration, general_income, "ro")
hold on
xlabel("Working Duration (Hours)")
ylabel("Income ($)")
title("Income vs Working Duration")
grid on;
hold off

p = polyfit(general_working_duration, general_income, 1)

disp(['Proportionality (k): ', num2str(p(1))]);

disp(['Fitted Model: Income = (' num2str(p(1)) ' x Hours) + ' num2str(p(2))]);

predicted_incomes = polyval(p, general_working_duration)
plot(general_working_duration, general_income, 'bo', general_working_duration, predicted_incomes, 'r-', 'LineWidth', 1);
hold on;
xlabel("Working Duration (Hours)");
ylabel("Predicted Income ($)");
title(['Income vs Working Duration - Fitted Model: y = ' num2str(p(1)) 'x + ' num2str(p(2))]);
legend('Data', 'Fitted Line');
grid on;
hold off;

predicted_income_for_4_15_hours = polyval(p, 4.15)

duration_for_50 = (50 - p(2))/p(1)
