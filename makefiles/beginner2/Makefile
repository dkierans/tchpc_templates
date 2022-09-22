## VARIABLES
CC 			= gcc
LIBS 		= -fopenmp
CFLAGS 		= -O2 -Wall -Wextra

## TARGET: {DEPENDENCIES}
default: main.exe

main.exe: main.c Makefile
	${CC} ${LIBS} ${CFLAGS} $< -o $@

clean:
	rm main.exe

## PHONY TARGETS
.PHONY: default clean
