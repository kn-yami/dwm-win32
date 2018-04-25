CC=clang -c -std=c99 -pedantic -Wall -march=native -O1 -DVERSION="alpha2"
LD=clang -s -static -mwindows
ALL=dwm-win32

all:V: $ALL.exe

%.exe: %.o
	$LD $stem.o -o $stem
%.o: %.c
	$CC $stem.c

install:V:
	cp ./$ALL.exe /c/bin/$ALL.exe

clean:V:
	rm $ALL.exe
	rm $ALL.o
