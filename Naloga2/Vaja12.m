% koledar
danVTednu = input("1. januar je kateri dan v tednu (1-7)? ");
imenaDnevov = {"ponedeljek", "torek", "sreda", "cetrtek", "petek", "sobota", "nedelja"};
imenaMesecev = {"januar", "februar", "marec", "april", "maj", "junij", "julij", "avgust", "september","oktober", "november", "december"};

binJanJul = mod([1:7],2) == 0;
janDoJul = binJanJul * 30 + ~binJanJul * 31;
janDoJul(2) = 28; % februar ima 28 dni

binAvgDec = mod([8:12],2) == 0;
avgDoDec = binAvgDec * 31 + ~binAvgDec * 30;

steviloDniVMesecu = [janDoJul avgDoDec];
meje = cumsum(steviloDniVMesecu);

i = input("Kateri dan v letu te zanima(1-365)? ");

zamik = mod(i - 1,7);
danTedna = mod(danVTednu + zamik - 1 ,7) + 1;
	
danVMesecu = 0;
mesec = 0;
for j = 1:12
	if i <= meje(j) % nasli smo mesec v katerem je ta dan
		if j == 1
			danVMesecu = i;
		else
			danVMesecu = i - meje(j - 1);
		end
		mesec = j;
		break;
	end
endfor

fprintf("%d. dan v letu, ki se je zacelo na %s je %s, %d. %s\n",i,imenaDnevov{danVTednu},imenaDnevov{danTedna},danVMesecu,imenaMesecev{mesec}); 





