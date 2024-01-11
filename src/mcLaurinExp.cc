#include <iostream>
#include <cstdlib>
#include <iomanip>

using namespace std;

int main(int argc, char *argv[])
{
	if (argc < 3) {
		cerr << "Error. Use: mcLaurinExp n x\n";
	} else {
		int n = atoi(argv[1]);
		double x = atof(argv[2]);
		double p = 1.0e0;
		for (int i = n; i > 0; --i) p = p*x/i + 1.0e0; 
		cout << scientific;
		cout << setw(16) << setprecision(14) << p << endl;
	}
	return 0;
}
