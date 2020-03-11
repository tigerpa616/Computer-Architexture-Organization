//
// Created by Daniel on 02/24/2020.
//

#include "dgemm.h"

/* initialize matricies */
void initialize_matricies (int n, double* a, double* b, double* c)
{
    for (int i=0; i< ROWLEN; i++) {
        for (int j = 0; j < ROWLEN; j++) {
            *(a + i + j * ROWLEN) = (double) rand() / (double) rand();
            *(b + i + j * ROWLEN) = (double) rand() / (double) rand();
            *(c + i + j * ROWLEN) = 0;
        }
    }
}

void dgemm (int n, const double *A, const double *B, double *C)
{
    for (int i = 0; i < n; ++i)
        for (int j = 0; j < n; ++j)
        {
			double cij = C[j+i*n]; /* cij = C[j][i] */
            for( int k = 0; k < n; k++ )
                cij += A[k+i*n] * B[j+k*n]; /* cij += A[k][i]*B[j][k] */
           C[j+i*n] = cij;
        }
}

void mm(double a[ROWLEN][ROWLEN], double b[ROWLEN][ROWLEN], double c[ROWLEN][ROWLEN])
{

    int i,j,k;
    for (i = 0; i != ROWLEN; i++) {
        for (j = 0; j != ROWLEN; j++) {
            for (k = 0; k != ROWLEN; k++) {
                c[i][j] = c[i][j] + a[i][k] * b[k][j];
            }
        }
    }
}

void dgemm_intrins()
{

}

void showArrary(int n, double* a, double* b, double* c)
{
    for (int i = 0; i <  ROWLEN; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            printf("c[%d][%d] = %Lf\n", i,j, c[i+j*ROWLEN] );
        }
    }
}

