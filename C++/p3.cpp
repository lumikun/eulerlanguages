#include <iostream>
#include <math.h>

using namespace std;

int main(void)
{
    long n = 600851475143;
    long on = 0;
    while (n % 2 == 0)
        n /= 2;
    for (int i = 3; i < sqrt(n); i += 2)
        while (n % i == 0)
            n /= i;
    on = n;
    cout << "ans = " << on << endl;
    return 0;
}
