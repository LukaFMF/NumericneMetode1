tab = load("cryptomarket.csv");
names = {"BTC","ETH","XRP","LTC","BCH","ETC","NEO","XMR","DASH","OMG"};
for i = 1:10
	printf("Valuta: %s\n",names{i});
	printf("|c|_1 = %f\n",norm(tab(:,i),1));
	printf("|c|_Inf = %f\n",norm(tab(:,i),Inf));
	printf("|c|_2 = %f\n",norm(tab(:,i),2));
	printf("\n");
end 