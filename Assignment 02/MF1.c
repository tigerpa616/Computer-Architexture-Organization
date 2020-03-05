#include "MF1.h"

char* MF1 (char* bitTest)
{
    for (int i = 0; bitTest[i] != '\0'; ++i)
    {
        if(bitTest[i] >= 65 && bitTest[i] <= 90)//Checks if the characters ASCII value if in the range needed to be a uppercase letter so it can be swapped
        bitTest[i] ^= 32; //changes the ASCII value to its alternative case
    }
    return bitTest;
}

