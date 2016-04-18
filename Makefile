WORK: main.o USD_RUB.o EUR_RUB.o
	gcc -o convert main.o USD_RUB.o EUR_RUB.o
main.o: main/main.c
	gcc -c main/main.c
USD_RUB.o: usd_in_to_rub/USD_RUB.c
	gcc -c usd_in_to_rub/USD_RUB.c
EUR_RUB.o: eur_in_to_rub/EUR_RUB.c
	gcc -c eur_in_to_rub/EUR_RUB.c
clean:
	rm -f *.o WORK
