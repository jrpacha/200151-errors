#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

double mcLaurinExp(const int &, const double &);

int main()
{
	double p10= mcLaurinExp(10,-2.0e0);
	double q10=1.0/mcLaurinExp(10,2.0e0);
	double x=exp(-2.0e0);

	cout << scientific << setprecision(15); 
	cout << "p10(-2) = " << p10 << endl;
	cout << "q10(-2) = " << q10 << endl;
	cout << "exp(-2) = " << exp(-2) << endl;

	double abs_err_p10 = abs(x - p10);
	double abs_err_q10 = abs(x - q10);

	double rel_err_p10 = abs_err_p10/x;
	double rel_err_q10 = abs_err_q10/x;

	cout << "abs_err_p10 = " << abs_err_p10 << endl;
	cout << "abs_err_q10 = " << abs_err_q10 << endl;
	cout << "rel_err_p10 = " << rel_err_p10 << endl;
	cout << "rel_err_q10 = " << rel_err_q10 << endl;

	return 0;
}

double mcLaurinExp(const int & n, const double & x)
{
	double p;
	p = 1.0e0;
	for (int i = n; i > 0; --i) p = p*x/i + 1.0e0; 
	return p;
}


