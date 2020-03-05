//
// Created by Daniel on 1/26/2020.
//



#ifndef ASSIGNMENT_01_DGEMM_H
#define ASSIGNMENT_01_DGEMM_H


#define ROWLEN 1024
#define MSIZE [ROWLEN][ROWLEN]

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>

double* a;
double* b;
double* c;

void initialize_matricies (int n, double* a, double* b, double* c);
void dgemm (int n, const double *A, const double *B, double *C);
void dgemm_intrins();
void showArrary(int n, double* a, double* b, double* c);
void mm(double a[ROWLEN][ROWLEN], double b[ROWLEN][ROWLEN], double c[ROWLEN][ROWLEN]);

#endif //ASSIGNMENT_01_DGEMM_H
