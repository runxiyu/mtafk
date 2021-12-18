.PHONY: all
.PHONY: clean
all: afktest

clean:
	rm -f *.o
	rm -f afktest

afktest: main.o network.o packet.o srp.o mini-gmp.o sha256.o
	$(CXX) -O3 main.o network.o packet.o srp.o mini-gmp.o sha256.o -o $@

.cpp.o:
	$(CXX) -O3 -c $< -o $@

.c.o:
	$(CC) -O3 -c $< -o $@
