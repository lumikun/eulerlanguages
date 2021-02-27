#include <stdio.h>
#include <stdlib.h>

// Problem 1 is super easy in C so i've made it as short as possible for the lulz

void main()
{
    int ans = 0;
    for (size_t i = 3; i < 1000; i++) ans += i % 3 == 0 || i % 5 == 0 ? i : 0;
    printf("ans = %d\n", ans);
    exit(EXIT_SUCCESS);
}