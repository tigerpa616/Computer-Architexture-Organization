#include "MF3.h"

//Russian Peasant Algorithm:
//Initialize results 'russianPeasant' as 0
//Do the following while 'b' greater than 0
    //If 'b' is odd, add 'a' to 'russianPeasant'
    //Double 'a' and halve 'b'
//Return 'russianPeasant'

unsigned int MF3 (unsigned int a, unsigned int b)
{
    unsigned long int russianPeasant = 0;

    while(b > 0)
    {
        if (b & 1) //Checks if b is an Odd number
            russianPeasant = russianPeasant + a;

        a = a << 1; //Doubles the value
        b = b >> 1; //Halfs the value

    }
    return russianPeasant;
};