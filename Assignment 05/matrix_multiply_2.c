#include "dgemm.h"

int main(int argc, char *argv[])
{
    // seed random generator
    srand(2020);



//    double a[ROWLEN][ROWLEN];
//    double b[ROWLEN][ROWLEN];
//    double c[ROWLEN][ROWLEN];


a = malloc(ROWLEN * ROWLEN * sizeof(double));
b = malloc(ROWLEN * ROWLEN * sizeof(double));
c = malloc(ROWLEN * ROWLEN * sizeof(double));

    clock_t start, end;
    double cpu_time_used;
    start = clock();

    initialize_matricies (ROWLEN, a, b, c);

    //mm(a, b, c);
    //dgemm(ROWLEN, a, b, c);
    //dgemm_intrins();

    //end = clock();
    //cpu_time_used = ((double)(end - start))/CLOCKS_PER_SEC;
    //printf("the elapsed CPU time of dgemm is %Lf\n", cpu_time_used);
    //printf("Clocks per sec: %d\n", CLOCKS_PER_SEC);

    //showArrary(ROWLEN, a, b, c);
	
	  //mm(a, b, c);
    //dgemm_SIMD(ROWLEN, a, b, c);
    //dgemm_intrins();

    //end = clock();
    //cpu_time_used = ((double)(end - start))/CLOCKS_PER_SEC;
    //printf("the elapsed CPU time of dgemm_SIMD is %Lf\n", cpu_time_used);
   // printf("Clocks per sec: %d\n", CLOCKS_PER_SEC);

    //showArrary(ROWLEN, a, b, c);
	
	  //mm(a, b, c);
    dgemm_SIMD_Pipelined(ROWLEN, a, b, c);
    dgemm_intrins();

    end = clock();
    cpu_time_used = ((double)(end - start))/CLOCKS_PER_SEC;
    printf("the elapsed CPU time of dgemm_SIMD_Pipelined is %Lf\n", cpu_time_used);
    printf("Clocks per sec: %d\n", CLOCKS_PER_SEC);

    showArrary(ROWLEN, a, b, c);
    return 0;
}


