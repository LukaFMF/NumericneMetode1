1;
function eq = mat_eq(A,B)
	eq = false;
	[mA,nA] = size(A);
	[mB,nB] = size(B);
	if mA ~= mB || nA ~= nB
		return;
	end

	m = mA;
	n = nA;

	for i = 1:m
		for j = 1:n
			if abs(A(i,j) - B(i,j)) > 1e-15
				return;
			end
		end
	end
	eq = true;
end

function [Q,R] = qr_gram_schmidt(A,tip)
	mgs = false;
	if tip == "mgs"
		mgs = true;
	end

	[m,n] = size(A);
	Q = A;
	R = zeros(n,n);
	for i = 1:n
		R(i,i) = norm(Q(:,i));
		Q(:,i) = Q(:,i) / R(i,i);
		for j = i + 1:n
			if mgs
				R(i,j) = Q(:,i)' * Q(:,j);
			else
				R(i,j) = Q(:,i)' * A(:,j);
			end
			Q(:,j) = Q(:,j) - R(i,j) * Q(:,i);
		end
	end
end

eps = 1e-8;
A = [1 + eps 1 1;
	 1 1 + eps 1;
	 1 1 1 + eps];

[Q,R] = qr_gram_schmidt(A,"mgs")
[Q,R] = qr(A)

Q'*Q
if mat_eq(Q'*Q,eye(3))
	printf("Matirka Q je ortogonalna!\n");
else
	printf("Matirka Q ni ortogonalna!\n");
end
