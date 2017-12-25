
all: test

test: LRU-cache
	./LRU-cache
	@echo "Everything fine!"

LRU-cache: LRU-cache.cpp
	g++ -o $@ -Wall -std=c++0x $@.cpp

