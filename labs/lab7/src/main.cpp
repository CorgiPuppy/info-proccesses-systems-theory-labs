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
	std::vector<Point> starts;
	for (double x = 0.0; x <= 2.0; x += 0.5)
		for (double y = 0.0; y <= 2.0; y += 0.5)
			starts.push_back({x, y});

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
				if (std::abs(x1) > 50.0 || std::abs(x2) > 50.0)
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
		for (double a = -1.0; a <= 0.2; a += 0.01) {
			if (a <= 0) {
				double x_stable = 1.0 - std::sqrt(-a);
				double x_unstable = 1.0 + std::sqrt(-a);

				bifFile << a << " " << x_stable << " " << x_unstable << "\n";
			}
		}
		bifFile.close();
	}

	return 0;
}

void step(double& x1, double& x2, double dt, double alpha) {
	double dx1 = (std::pow(x1 - 1.0, 2) + alpha) * dt;
	double dx2 = (x1 - x2) * dt;

	x1 += dx1;
	x2 += dx2;
}
