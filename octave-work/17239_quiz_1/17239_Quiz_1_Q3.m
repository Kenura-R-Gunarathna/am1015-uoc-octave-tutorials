hours_worked = 0:5 % x
incomes = [0 16 32 48 52 72] % y

p = polyfit(hours_worked, incomes, 1)

predicted_income = polyval(p, 6.5)

hours_worked_2 = 0:0.1:5 % x
predicted_incomes = p(1) * hours_worked_2 + p(2)

income = 142
hours_for_income = (income - p(2))/p(1)

plot(hours_worked, incomes, "or", hours_worked_2, predicted_incomes, "-b")


