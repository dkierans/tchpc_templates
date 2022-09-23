## COMPILER VARIABLES
# Separate compiler for mpi-dependent code
CC 			= gcc
LIBS 		= -fopenmp
CFLAGS 		= -O2 -Wall -Wextra -std=c11
DEP_FLAGS	= -MMD -MP

MPICC		= mpicc

## FILENAME VARIABLES
# Dependency files for make
EXES = 		main.exe
OBJS = 		obj.o
MPI_OBJS = 	mpi_obj.o
DEPS= ${OBJS:%.o=%.d} ${MPI_OBJS:%.o=%.d} ${EXES:%.exe=%.d}


## TARGET: {DEPENDENCIES}
default: ${EXES} 

${EXES}: %.exe : ${OBJS} ${MPI_OBJS} %.c
	${MPICC} ${LIBS} ${CFLAGS} ${DEP_FLAGS} $^ -c
	${MPICC} ${EXES:%.exe=%.o} -c ${EXES}

${OBJS}: %.o : %.c %.h  Makefile
	${CC} ${LIBS} ${CFLAGS} ${DEP_FLAGS} $< -c

${MPI_OBJS}: %.o : %.c %.h  Makefile
	${MPICC} ${LIBS} ${CFLAGS} ${DEP_FLAGS} $< -c

-include ${DEPS}

clean:
	${RM} ${EXES} ${OBJS} ${MPI_OBJS} ${DEPS}

## PHONY TARGETS
.PHONY: default clean
