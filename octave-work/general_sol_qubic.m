pkg load symbolic  % Load the symbolic package

syms x
f = (x^2 + 1)/(x - 2);
printf("$$%s$$\n", latex(f));

