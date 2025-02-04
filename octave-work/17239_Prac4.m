time = 10; %  Years
yearlyDeposit = 2000; % USD

n = 0:1:time;
an = zeros(1, time+1);
r = 0.05;
an(1, 1) = 5000;

for i = 1:1:time,
    an(1, i+1) = (r+1) * an(1, i) + yearlyDeposit;
end

% a(n+1) = (r+1)*a(n)

printf("\n");

printf("--------------------------------------\n");
printf("Time (End of Year) \t| Amount (LKR)\n");
printf("--------------------------------------\n");
for i = 1:1:time,
    printf("%d \t\t\t| %.2f\n", i,an(1, i+1));
end

printf("\n");

plot(n, an(1,:), "r-", n, an(1,:), "bo");
xlabel("Time (Years)");               % Label for x-axis
ylabel("Amount of Money (LKR)");            % Label for y-axis
title("Yearly amount in account vs Time"); % Title of the graph
legend( "Shape", "a0 = 5000");
grid on;
