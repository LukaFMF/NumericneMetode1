n = input("Delitelje katerega stevila zelis: ");

if n < 1
	printf("Stevilo za keterega zelis najti delitelje mora biti pozitivno!");
	exit(-1);
end 

delteljiManjsi = [1];
delteljiVecji = [n];

for deli = 2:sqrt(n)
	if mod(n,deli) == 0
		delteljiManjsi = [delteljiManjsi deli];
		delteljiVecji = [(n / deli) delteljiVecji];
	end
endfor

if delteljiManjsi(end) == delteljiVecji(1)
	delitelji = [delteljiManjsi(1:end - 1) delteljiVecji];
else
	delitelji = [delteljiManjsi delteljiVecji];
end

delitelji