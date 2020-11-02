vecX = input("Vnesi vektor x: ");
a = input("Vnesi vodilni koeficient a: ");

function _vecOdv = OdvodPolinoma(_vecKoef)
	_vecKoef = _vecKoef(1:end-1);
	_n = size(_vecKoef)(2);
	_koefOdv = _n:-1:1;
	_vecOdv = _koefOdv .* _vecKoef;
endfunction 

if iscolumn(vecX)
	vecX = vecX';
end

najmanj = min(vecX) - 1;
najvec = max(vecX) + 1;

vecX = a*poly(vecX);
odvod = OdvodPolinoma(vecX);

x = linspace(najmanj,najvec,500);
figure(1);
plot(x,polyval(vecX,x));
hold on;
plot(x,polyval(odvod,x));
hold off;

waitfor(1);