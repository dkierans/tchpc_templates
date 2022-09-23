#include <stdio.h>
#include "obj.h"

void hello_world2(const int i, const int thread_rank, const int thread_size, 
        const int mpi_rank, const int mpi_size)
{
    printf("MPI(%d of %d), OMP(%d of %d): Hello World! (i=%d)\n",
            mpi_rank, mpi_size, thread_rank, thread_size, i);
}