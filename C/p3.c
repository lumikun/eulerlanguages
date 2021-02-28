#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void main()
{
    long n = 600851475143;
    long on = 0;
    while (n % 2 == 0) 
        n = n / 2;
    for (size_t i = 3; i <= sqrt(n); i = i + 2)
        while (n % i == 0)
            n = n / i;
    on = n;
    printf("%ld\n", on);
    exit(EXIT_SUCCESS);
}