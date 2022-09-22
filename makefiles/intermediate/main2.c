#include <stdio.h>
#include <math.h>
#include <omp.h>


int main(void){
    int i;
    omp_set_num_threads(1);

    printf("main2.c :\n");
    #pragma omp parallel for private(i)
    for (i=0; i<12; ++i){
        printf("(%d of %d) Hello World! (i=%d)\n", 
                omp_get_thread_num(), omp_get_num_threads(), i );
    }

    // printf("Square root from math library: sqrt(2)=%lf\n", sqrt(2));

    return 0;
}
