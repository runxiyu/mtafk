.PHONY: all
.PHONY: clean
all: afktest

clean:
	$(RM) *.o
	$(RM) afktest

afktest: main.o network.o packet.o srp.o mini-gmp.o sha256.o
	$(CXX) main.o network.o packet.o srp.o mini-gmp.o sha256.o -o $@

.cpp.o:
	$(CXX) -c $< -o $@

.c.o:
	$(CC) -c $< -o $@
