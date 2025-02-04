working_duration = 1:1/2:6
income = [4 12 15 25 32 28 37 35 38 39 42]

general_working_duration = [0 working_duration]
general_income = [0 income]

p = polyfit(general_working_duration, general_income, 1)
predicted_income_for_4_15_hours = polyval(p, 4.15)
