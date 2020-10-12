0;
function vec = postevanka(_a,_m)
	vec = (1:_m) * _a;  
endfunction

a = input("Vnesi stevilo a: ");
m = input("Vnesi stevilo m: ");

postevanka(a,m)




