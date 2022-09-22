## COMPILER VARIABLES
CC 			= gcc
LIBS 		= -fopenmp
CFLAGS 		= -O2 -Wall -Wextra

## FILENAME VARIABLES
EXES = 		main1.exe main2.exe

## TARGET: {DEPENDENCIES}
default: ${EXES}

${EXES}: %.exe : %.c Makefile
	${CC} ${LIBS} ${CFLAGS} $< -o $@

clean:
	${RM} ${EXES}

## PHONY TARGETS
.PHONY: default clean
