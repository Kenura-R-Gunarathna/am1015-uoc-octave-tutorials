time = 15; % years
p_0 = 200 % initial no of chickens
ncby = 0.3 % growth rate per annum
nchy = 60 % yearly harvested no of chickens

t = 0:1:time;
p_n = zeros(1, time+1);
p_n(1, 1) = p_0;

for i = 1:1:time,
    p_n(1, i+1) = (ncby + 1) * p_n(1, i) - nchy;
end

% P(t+1) = (ncby + 1) * P(t)

plot(t, p_n(1,:), "b");
xlabel("Time (years-t)");
ylabel("Chicken Population (n)");
title("Plot of Chicken Population vs Time");
legend("P_0 = 200");
grid on;

printf("Checken population in %d years when a0 = %d is: %.2f\n", time, p_0, p_n(1, time+1)); % nth year