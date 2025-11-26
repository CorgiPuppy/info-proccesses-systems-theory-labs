#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>
#include <iomanip>

#include "Constants.h"

struct Point {
	double x;
	double y;
};

void saveToDat(const std::string&, const std::vector<std::vector<Point>>&, double);
std::vector<Point> generateInitialConditions(double, double, double);

int main() {
	
}

void saveToDat(const std::string& filename, const std::vector<std::vector<Point>>& trajectories, double dt) {
	std::string path = Constants::DAT_DIR + filename;
	std::ofstream file(path);

	if (!file.is_open()) {
		std::cerr << "Ошибка: не удалось открыть файл " << path << std::endl;
		return;
	}

	file << std::fixed << std::setprecision(6);

	for (std::vector traj : trajectories) {
		for (long unsigned i = 0; i < traj.size(); i++) {
			double t = i * dt;
			file << t << " " << traj[i].x << " " << traj[i].y << "\n";
		}
		file << "\n\n";
	}

	file.close();
}

std::vector<Point> generateInitialConditions(double xs, double ys, double epsilon) {
	return {
		{xs + epsilon, ys}, {xs - epsilon, ys},
		{xs, ys + epsilon}, {xs, ys - epsilon},
		{xs + epsilon, ys + epsilon}, {xs - epsilon, ys - epsilon},
		{xs + epsilon, ys - epsilon}, {xs - epsilon, ys + epsilon}
	};
}
