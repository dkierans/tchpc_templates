# VARIABLES
CC=gcc

# TARGET: {DEPENDENCIES}
default: main.exe

main.exe: main.c Makefile
	${CC} main.c -o main.exe 

clean:
	rm main.exe

# PHONY TARGETS
.PHONY: default clean
