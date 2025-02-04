pkg load symbolic  % Load the symbolic package

% 1. General solution for quadratic equation ax^2 + bx + c = 0
syms a b c x
quadratic_eq = a*x^2 + b*x + c == 0;
sol_quadratic = solve(quadratic_eq, x);
disp('1. General solution for quadratic equation:');
disp(sol_quadratic);
