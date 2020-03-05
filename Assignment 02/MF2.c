#include "MF2.h"

//Should take a character and convert it to lower case

char* MF2 (char* bitTest)
{
    for (int i = 0; bitTest[i] != '\0'; ++i)
    {
        if(bitTest[i] >= 97 && bitTest[i] <= 122)//Checks if the characters ASCII value if in the range needed to be a uppercase letter so it can be swapped
            bitTest[i] ^= 32; //changes the ASCII value to its alternative case
    }
    return bitTest;
}