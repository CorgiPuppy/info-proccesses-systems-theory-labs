#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>
#include <string>
#include <iomanip>

#include "Constants.h"

void step(double&, double&, double, double);

struct Point {
	double x;
	double y;
};

int main() {
	return 0;

}

void step(double& x1, double& x2, double dt, double alpha) {
	double dx1 = (std::pow(x1 - 1.0, 2) + alpha) * dt;
	double dx2 = (x1 - x2) * dt;

	x1 += dx1;
	x2 += dx2;
}
