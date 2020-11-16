n = 9;
b = 37;

A = diag(linspace(1,1,n)) + diag(b:b + n - 2,1);

vsota = sum(sum(A))

A_2 = A*A;
v = linspace(0,0,n)';
v(1:3) = 1;
v(end) = 1;

vec = A_2*v;

norma = norm(vec)
