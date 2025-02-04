# s17239_Nov17_part4 - Kenura R. Gunarathna - s17239

# Jesse, Maria, Charles

# x1 = craft paper
# x2 = bells
# x3 = ornaments

# Jesse   : 3x1 + 4x2 + 5x3
# Maria   : 6x1 + 5x2 + 2x3
# Charles : 3x1 + 2x2 + 1x3

# Matrix format

# [Jesse, Maria, Charles]
A = [3 4 5; 6 5 2; 3 2 1]

# X = [x1; x2; x3]

# [Jesse, Maria, Charles]
B = [22.90; 27.55; 12.20]

# A*X = B

X = inv(A)*B

