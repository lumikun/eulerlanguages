#include <iostream>

using namespace std;

int main(void)
{
    int ans = 0;
    for (int i = 3; i < 1000; i++) ans += i % 3 == 0 || i % 5 == 0 ? i : 0;
    cout << "ans = " << ans << endl;
    return 0;
}
