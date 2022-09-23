## COMPILER VARIABLES
CC 			= gcc
LIBS 		= -fopenmp
CFLAGS 		= -O2 -Wall -Wextra -std=c11

MPICC		= mpicc

## FILENAME VARIABLES
EXES = 		main.exe
OBJS = 		obj.o
MPI_OBJS = 	mpi_obj.o

## TARGET: {DEPENDENCIES}
default: ${EXES} 

${EXES}: %.exe : %.c ${OBJS} ${MPI_OBJS}
	${MPICC} ${LIBS} ${CFLAGS} $^ -o $@

${OBJS}: %.o : %.c %.h  Makefile
	${CC} ${LIBS} ${CFLAGS} $< -c

${MPI_OBJS}: %.o : %.c %.h  Makefile
	${MPICC} ${LIBS} ${CFLAGS} $< -c

clean:
	${RM} ${EXES} ${OBJS} ${MPI_OBJS}

## PHONY TARGETS
.PHONY: default clean
