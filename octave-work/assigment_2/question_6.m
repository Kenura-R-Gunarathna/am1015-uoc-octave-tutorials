pkg load symbolic

syms x y m c income duration

working_duration = 1:1/2:6
income = [4 12 15 25 32 28 37 35 38 39 42]

general_working_duration = [0 working_duration]
general_income = [0 income]

p = polyfit(general_working_duration, general_income, 1)

% income = m * duration + c
f_word = m*duration + c == income
sol = solve(f_word, duration)

f = p(1)*x + p(2) == 50
sol = solve(f, x)

% method 2
duration_for_50 = (50 - p(2))/p(1)
