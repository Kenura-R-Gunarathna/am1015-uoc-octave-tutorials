pkg load symbolic

function latexOut(f)
    disp(['$$' latex(f) '$$'])
endfunction

syms a b c d x
cubic_sol = a*x^3 + b*x^2 + c*x + d;

latexOut(cubic_sol)
