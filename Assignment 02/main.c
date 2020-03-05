//Made By: Daniel Masarsky
// REFERENCES:
// https://www.geeksforgeeks.org/toggle-case-string-using-bitwise-operators/
// https://www.geeksforgeeks.org/bitwise-operators-in-c-cpp/
// https://www.geeksforgeeks.org/russian-peasant-multiply-two-numbers-using-bitwise-operators/
//
#include <stdio.h>
#include "MF1.h"
#include "MF2.h"
#include "MF3.h"

int main()
{
    char AssignmentTest[] = "Hello BitWise";

    printf("Original string: %s\n", AssignmentTest);
    printf("MF1: %s\n", MF1(AssignmentTest));
    printf("MF2: %s\n", MF2(AssignmentTest));

    //For MF3 I used an algorithm known as the Russian Peasant, fitting ain't it?

    printf("MF3 Test One: %d\n", MF3(101, 65));
    printf("MF3 Test Two: %d\n", MF3(-101, 65));
    printf("MF3 Test Three: %ld\n", MF3(1000000000, 65)); //causes an overflow, 65 billion is to big


    return 0;
}
