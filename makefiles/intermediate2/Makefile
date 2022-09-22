## COMPILER VARIABLES
CC 			= gcc
LIBS 		= -fopenmp
CFLAGS 		= -O2 -Wall -Wextra

## FILENAME VARIABLES
EXES = 		main.exe
OBJS = 		obj.o

## TARGET: {DEPENDENCIES}
default: ${EXES} 

${EXES}: %.exe : %.c ${OBJS} 
	${CC} ${LIBS} ${CFLAGS} $^ -o $@

${OBJS}: %.o : %.c %.h  Makefile
	${CC} ${LIBS} ${CFLAGS} $< -c

clean:
	${RM} ${EXES} ${OBJS}

## PHONY TARGETS
.PHONY: default clean
