#include <iostream>

using namespace std;

int main(void)
{
    long long ef1 = 0, ef2 = 2, ef3 = 0;
    long long ans = ef1 + ef2;
    while (ef2 <= 4000000) {
        ef3 = 3 * ef2 + ef1;
        if (ef3 > 4000000)
            break;
        ef1 = ef2;
        ef2 = ef3;
        ans += ef2;
    }
    cout << "ans = " << ans << endl;
    return 0;
}
