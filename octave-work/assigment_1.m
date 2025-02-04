# Jesse, Maria, Charles

# x1 = craft paper
# x2 = bells
# x3 = ornaments

# Jesse   : 3x1 + 4x2 + 5x3 = $24.40
# Maria   : 6x1 + 5x2 + 2x3 = $30.40
# Charles : 3x1 + 2x2 + 1x3 = $13.40

# System of linear equations
# 3*x1 + 4*x2 + 5*x3 = 24.40
# 6*x1 + 5*x2 + 2*x3 = 30.40
# 3*x1 + 2*x2 + 1*x3 = 13.40

# Matrix format

A = [3 4 5; 6 5 2; 3 2 1]
# X = [x1; x2; x3]
B = [24.40; 30.40; 13.40]

# A*X = B

X = inv(A)*B

