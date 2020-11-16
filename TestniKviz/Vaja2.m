n = 8;
b = 31;

kvadrat = magic(n);
vsota = sum(kvadrat)(1);

A = kvadrat./vsota;
elementNa3_3 = A(3,3)

A2 = diag(diag(A));
vrsticaB = b:b + n - 1;

B = vrsticaB;
for i = 1:n - 1
	B = [B; vrsticaB];
end

A3 = A2 + B;

razlikaMaxMin = max(max(A3)) - min(min(A3))

A4 = A3;
A4(5:end,5:end) = 1;

vsota = sum(sum(A4))