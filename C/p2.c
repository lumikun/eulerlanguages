#include <stdlib.h>
#include <stdio.h>

void main()
{
    long long ef1 = 0, ef2 = 2, ef3 = 0;
    long long ans = ef1 + ef2;
    while (ef2 <= 4000000) {
        ef3 = 3 * ef2 + ef1;
        if (ef3 > 4000000)
            break;
        ef1 = ef2;
        ef2 = ef3;
        ams += ef2;
    }
    printf("ans = %ld\n", ans);
    exit(EXIT_SUCCESS);
}