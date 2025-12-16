#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>
#include <string>
#include <iomanip>

#include "Constants.h"

struct Point {
	double x;
	double y;
};

Point get_derivatives(double, double, double);
void step(double&, double&, double, double);

int main() {
	std::vector<Point> starts;
	for (double x = -2.0; x <= 2.0; x += 1.0) {
		for (double y = -2.0; y <= 2.0; y += 1.0) {
			if (x == 0 && y == 0) continue;
			starts.push_back({x, y});
		}
	}
	starts.push_back({0.1, 0.1});

	for (long unsigned int i = 0; i < Constants::alphas.size(); i++) {
		double alpha = Constants::alphas[i];
		std::string path = Constants::DAT_DIR + Constants::filenames[i];

		std::ofstream file(path);
		if (!file.is_open()) {
			std::cerr << "Ошибка открытия файла: " << path << std::endl;
			continue;
		}
		file << std::fixed << std::setprecision(6);

		for (Point start : starts) {
			double x1 = start.x;
			double x2 = start.y;

			for (double t = 0; t <= Constants::T; t += Constants::dt) {
				if (std::abs(x1) > 10.0 || std::abs(x2) > 10.0)
					break;

				file << t << " " << x1 << " " << x2 << "\n";
				step(x1, x2, Constants::dt, alpha);
			}
			file << "\n\n";
		}

		file.close();
	}

	std::string bif_path = Constants::DAT_DIR + Constants::bif_filename;
	std::ofstream bifFile(bif_path);

	if (bifFile.is_open()) {
		for (double a = -0.5; a <= 1.5; a += 0.01) {
			double r_stable = 0;

			if (a <= 0)
				r_stable = 0;
			else
				r_stable = std::sqrt((2.0 * a) / 3.0);

			bifFile << a << " " << r_stable << "\n";
		}
		bifFile.close();
	}

	return 0;
}

Point get_derivatives(double x1, double x2, double alpha) {
	double r2 = std::pow(x1, 2) + std::pow(x2, 2);
	double dx1 = 0.4*alpha*x1 - x2 - 0.6*x1*r2;
	double dx2 = x1 + 0.4*alpha*x2 - 0.6*x1*r2;
	
	return {dx1, dx2};
}

void step(double& x1, double& x2, double dt, double alpha) {
	Point k1 = get_derivatives(x1, x2, alpha);
	Point k2 = get_derivatives(x1 + 0.5*dt*k1.x, x2 + 0.5*dt*k1.y, alpha);
	Point k3 = get_derivatives(x1 + 0.5*dt*k2.x, x2 + 0.5*dt*k2.y, alpha);
	Point k4 = get_derivatives(x1 + dt*k3.x, x2 + dt*k3.y, alpha);

	x1 += (dt / 6.0) * (k1.x + 2.0*k2.x + 2.0*k3.x + k4.x);
	x2 += (dt / 6.0) * (k1.y + 2.0*k2.y + 2.0*k3.y + k4.y);
}
