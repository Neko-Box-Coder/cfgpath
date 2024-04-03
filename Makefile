.PHONY: all check

all: test-linux test-win

check: test-linux test-win
	./tests/test-linux
	./tests/test-win

test-linux: ./tests/test-linux.c
	$(CC) -O0 -g -o ./tests/$@ $< -I.

test-win: ./tests/test-win.c
	$(CC)  -O0 -g -o ./tests/$@ $< -I. -I./tests
