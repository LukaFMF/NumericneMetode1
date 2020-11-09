prvi = 1/3 + 1/1000;
drugi = 1/12 + 1/1000;
vec = [prvi drugi];

num = 100;
for i = 3:num
	k1 = vec(end);
	k2 = vec(end - 1);
	vec = [vec (9/4)*k1 - (1/2)*k2];
endfor

figure(1);
semilogy(1:num,vec);

waitfor(1);
