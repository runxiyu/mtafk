.PHONY: all
.PHONY: clean
all: afktest

clean:
	rm -f *.o
	rm -f afktest

afktest: main.o network.o packet.o srp.o mini-gmp.o sha256.o
	g++ $^ -o $@

main.o: main.cpp network.h packet.h
	g++ -c $< -o $@

network.o: network.cpp network.h packet.h
	g++ -c $< -o $@

packet.o: packet.cpp packet.h
	g++ -c $< -o $@

srp.o: srp.cpp srp.h mini-gmp.h
	g++ -c $< -o $@

mini-gmp.o: mini-gmp.c mini-gmp.h
	gcc -c $< -o $@

sha256.o: sha256.c sha2.h md32_common.h
	gcc -c $< -o $@
