.PHONY: all
.PHONY: clean

CFLAGS += -Ofast -Wall -Wextra -std=c++23

all: mtafk

clean:
	rm -f *.o
	rm -f mtafk

mtafk: main.o network.o packet.o srp.o mini-gmp.o sha256.o
	$(CXX) $(CFLAGS) $^ -o $@

main.o: main.cpp network.h packet.h srp.h
	$(CXX) $(CFLAGS) -c $< -o $@

network.o: network.cpp network.h packet.h
	$(CXX) $(CFLAGS) -c $< -o $@

packet.o: packet.cpp packet.h
	$(CXX) $(CFLAGS) -c $< -o $@

srp.o: srp.cpp srp.h mini-gmp.h sha2.h
	$(CXX) $(CFLAGS) -c $< -o $@

mini-gmp.o: mini-gmp.c mini-gmp.h
	$(CC) $(CFLAGS) -c $< -o $@

sha256.o: sha256.c sha2.h
	$(CC) $(CFLAGS) -c $< -o $@
