A = [15 10 25; 10 15 15; 20 10 10];
B = [200; 160; 120];

X = inv(A)*B;

x_1 = round(X(1,1));
x_2 = round(X(2,1));
x_3 = round(X(3,1));

printf("lettuce: %.0f\n", x_1);
printf("tomatoes: %.0f\n", x_2);
printf("cucumbers: %.0f\n", x_3);

% -----------------------------------

standard_pack_price = 5*x_1 + 3*x_2 + 2*x_3

% -----------------------------------

n_boxes = 100;
total_production_cost = n_boxes * standard_pack_price

% -----------------------------------

selling_price = 35;

total_weekly_revenue = n_boxes * selling_price
weekly_profit = total_weekly_revenue - total_production_cost

