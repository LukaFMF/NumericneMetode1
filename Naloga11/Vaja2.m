tab = load("cryptomarket.csv");
tab = tab(1:10,:);

printf("|A|_1 = %f\n",norm(tab,1));
printf("|A|_Inf = %f\n",norm(tab,Inf));
printf("|A|_2 = %f\n",norm(tab,2));
printf("|A|_F = %f\n",norm(tab,'fro'));
printf("\n");