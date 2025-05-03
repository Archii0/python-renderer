flags=-O2 -Wall -std=c2x
ldflags=

.PHONY: all clean

all: clean python-renderer

python-renderer: python-renderer.o
	cc $(flags) $^ -o $@ $(ldflags)

python-renderer.o: python-renderer.c python-renderer.h
	cc $(flags) -c $<

clean:
	rm -f *.o python-renderer