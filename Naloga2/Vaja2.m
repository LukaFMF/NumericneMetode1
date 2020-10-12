n = input("Vnesi stevilo n: ");
if n < 3
	printf("Operacija na matrika manjsi od 3x3 ni mogoca!");
	quit;
end
A = ones(n);
mat = triu(A,1) * 4 + diag(1:n) + (tril(A,-1) - tril(A,-2)) + (tril(A,-2) - tril(A,-3)) * -1;
mat


