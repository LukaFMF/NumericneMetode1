0;
function _digitVec = decToBin(_num)
	_numDigits = floor(log2(_num) + 1);
	_digitVec = linspace(0,0,_numDigits);

	_eksp = 2.^(_numDigits - 1);
	i = 1;
	while(_eksp ~= 0)
		if _eksp <= _num
			_digitVec(i) = 1;
			_num -= _eksp;
		endif

		if _num == 0
			break;
		endif
		_eksp /= 2;
		i += 1;
	endwhile
endfunction

num = input("Vnesi stevilo za katero zelis binarno reprezentacijo: ");
digVec = decToBin(num);

for i = digVec
	printf("%d",i);
endfor
printf("\n");