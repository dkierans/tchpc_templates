#include <stdio.h>
#include <omp.h>
#include "obj.h"


int main(void){
    int i;
    omp_set_num_threads(4);

    printf("main.c :\n");
    #pragma omp parallel for private(i)
    for (i=0; i<12; ++i){
        printf("(%d of %d) ", omp_get_thread_num(), omp_get_num_threads() );
        hello_world(i);
    }

    return 0;
}
