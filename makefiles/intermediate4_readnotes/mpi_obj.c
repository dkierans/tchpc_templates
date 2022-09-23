#include <stdio.h>
#include "mpi_obj.h"

void get_mpi_rank_size(MPI_Comm comm, int* rank, int* size)
{
        MPI_Comm_rank(comm, rank);
        MPI_Comm_size(comm, size);
}