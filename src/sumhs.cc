// (*\bf sumhs.cc *) $\copyright$ ALN 2020
// Sums the harmonic series $\sum_{n=1}^{\infty} 1/n$. It stops when the next term 
// doesn't add any significant digit.

#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
	unsigned long n = 0;
	float delta, sum, sum_next = 0.0f;

	do {
		sum = sum_next;
		sum_next = sum + 1.0f/++n;
	} while (sum_next != sum);

	cout << setprecision(8) << scientific;
	cout << "for n = " << setw(8) << --n 
	     << ", sum = " << setw(12) << sum << endl;
	return 0;
}
