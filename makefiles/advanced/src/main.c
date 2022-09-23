#include <stdio.h>
#include <omp.h>
#include <mpi.h>
#include "obj.h"
#include "mpi_obj.h"


int main(int argc, char* argv[]){
    int myid, nprocs;
    int num_threads_per_proc;
    int root = 0;
    int i;

    MPI_Init(&argc, &argv);
    get_mpi_rank_size(MPI_COMM_WORLD, &myid, &nprocs);

    // Send number of threads to each proc from root
    if (myid==root){
        num_threads_per_proc = 2;
    }
    MPI_Bcast(&num_threads_per_proc, 1, MPI_INT, root, MPI_COMM_WORLD);
    omp_set_num_threads(num_threads_per_proc);

    // Loop through i over num_threads_per_proc, on each mpi proc
    #pragma omp parallel for private(i)
    for (i=0; i<4; ++i){
        hello_world2(i, omp_get_thread_num(), omp_get_num_threads(), myid, nprocs );
    }

    MPI_Finalize();

    return 0;
}
