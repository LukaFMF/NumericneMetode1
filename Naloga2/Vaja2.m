n = input("Vnesi stevilo n: ");
if n < 3
	printf("Operacija na matrika manjsi od 3x3 ni mogoca!");
	quit;
end

mat = triu(ones(n),1) * 4 + diag(1:n) + diag(linspace(1,1,n - 1),-1) + diag(linspace(-1,-1,n - 2),-2);
mat


