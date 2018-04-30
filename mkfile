CC=gcc -c -std=c99 -pedantic -Wall -march=native -O0 -DVERSION="alpha2"
LD=gcc -s -static -mwindows
all:V: dwm-win32.exe

dwm-win32.exe: dwm-win32.o
	$LD dwm-win32.o -o dwm-win32
dwm-win32.o: dwm-win32.c config.h
	$CC dwm-win32.c

run: dwm-win32.exe
	dwm-win32.exe

install:V: dwm-win32.exe
	cp ./dwm-win32.exe /c/bin/dwm-win32.exe

clean:V:
	rm $ALL.exe
	rm $ALL.o
