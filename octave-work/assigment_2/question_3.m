working_duration = 1:1/2:6
income = [4 12 15 25 32 28 37 35 38 39 42]

general_working_duration = [0 working_duration]
general_income = [0 income]

p = polyfit(general_working_duration, general_income, 1)

disp(['Fitted Model: y = ' num2str(p(1)) 'x + ' num2str(p(2))])
disp(['Fitted Model: Income = ' num2str(p(1)) ' x Hours + ' num2str(p(2))])

