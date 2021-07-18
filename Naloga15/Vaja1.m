eps = 1e-8;
A = [1 + eps 1 1;
	 1 1 + eps 1;
	 1 1 1 + eps];

[Q,R] = qr(A)

if Q'*Q == eye(3)
	printf("Matirka Q je ortogonalna!\n");
else
	printf("Matirka Q ni ortogonalna!\n");
end
