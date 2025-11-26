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
void solveTask1();
void solveTask2();
void solveTask3();
void solveTask4();
void solveTask5();
void solveTask6();

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

void solveTask1() {
	using namespace Constants::Task1;

	double xs = x0 / (1.0 + k1 * tau);
	double ys = (k1 * xs) / (1.0/tau + k2);
	
	std::vector<Point> starts = generateInitialConditions(xs, ys, 2.0);
	std::vector<std::vector<Point>> trajectories;

	for (Point p : starts) {
		std::vector<Point> traj;
		traj.push_back(p);
		double x = p.x;
		double y = p.y;
		for (double t = 0; t < T; t += dt) {
			double dx = dt * (1.0/tau * (x0 - x) - k1 * x);
			double dy = dt * (-1.0/tau * y + k1 * x - k2 * y);
			
			x += dx;
			y += dy;

			traj.push_back({x, y});
		}
		trajectories.push_back(traj);
	}

	saveToDat(filename, trajectories, dt);
}

void solveTask2() {
	using namespace Constants::Task2;

	double x1s = -5.0;
	double x2s = 15.0 / 2.0;
	
	std::vector<Point> starts = generateInitialConditions(x1s, x2s, 0.05);
	std::vector<std::vector<Point>> trajectories;

	for (Point p : starts) {
		std::vector<Point> traj;
		traj.push_back(p);
		double x1 = p.x;
		double x2 = p.y;
		for (double t = 0; t < T; t += dt) {
			x1 = (x1 + 5.0 * dt) / (1.0 - dt);
			x2 = (x2 - 5.0 * dt) / (1.0 - (2.0/3.0) * dt);
			
			traj.push_back({x1, x2});
		}
		trajectories.push_back(traj);
	}

	saveToDat(filename, trajectories, dt);
}

void solveTask3() {
	using namespace Constants::Task3;

	double x1s = -6.0;
	double x2s = 0.0;
	
	std::vector<Point> starts = generateInitialConditions(x1s, x2s, 1.0);
	std::vector<std::vector<Point>> trajectories;

	for (Point p : starts) {
		std::vector<Point> traj;
		traj.push_back(p);
		double x1 = p.x;
		double x2 = p.y;
		for (double t = 0; t < T; t += dt) {
			x1 = (x1 - 4.0 * dt) / (1.0 + (2.0/3.0) * dt);
			x2 = (x2 - 5.0 * dt) / (1.0 - (2.0/3.0) * dt);
			
			traj.push_back({x1, x2});
		}
		trajectories.push_back(traj);
	}

	saveToDat(filename, trajectories, dt);
}

void solveTask4() {
	using namespace Constants::Task4;

	double mu1s = (b - q) / k;
	double mu0s = -d / (eta1 - eta2);
	
	std::vector<Point> starts = generateInitialConditions(mu0s, mu1s, 1.0);
	std::vector<std::vector<Point>> trajectories;

	for (Point p : starts) {
		std::vector<Point> traj;
		traj.push_back(p);
		double mu0 = p.x;
		double mu1 = p.y;
		for (double t = 0; t < T; t += dt) {
			double dmu0 = dt * (k * mu1 - b + q);
			double dmu1 = dt * (mu0 * (eta1 - eta2) + d);
			
			mu0 += dmu0;
			mu1 += dmu1;

			traj.push_back({mu0, mu1});
		}
		trajectories.push_back(traj);
	}

	saveToDat(filename, trajectories, dt);
}

void solveTask5() {
	using namespace Constants::Task5;

	double x1s = 3.0/2.0;
	double x2s = 3.0/2.0;
	
	std::vector<Point> starts = generateInitialConditions(x1s, x2s, 0.5);
	std::vector<std::vector<Point>> trajectories;

	for (Point p : starts) {
		std::vector<Point> traj;
		traj.push_back(p);
		double x1 = p.x;
		double x2 = p.y;
		for (double t = 0; t < T; t += dt) {
			double x1_old = x1;
			double x2_old = x2;

			x1 = (x1_old + dt * (-2.0 * x2_old + 6.0)) / (1.0 + 2.0 * dt);
			x2 = (x2_old + dt * 3.0 * x1_old) / (1.0 + dt * 3.0);
			
			traj.push_back({x1, x2});
		}
		trajectories.push_back(traj);
	}

	saveToDat(filename, trajectories, dt);
}

void solveTask6() {
	using namespace Constants::Task6;

	double x1s = -1.0;
	double x2s = -1.0;
	
	std::vector<Point> starts = generateInitialConditions(x1s, x2s, 0.01);
	std::vector<std::vector<Point>> trajectories;

	for (Point p : starts) {
		std::vector<Point> traj;
		traj.push_back(p);
		double x1 = p.x;
		double x2 = p.y;
		for (double t = 0; t < T; t += dt) {
			double x1_old = x1;
			double x2_old = x2;

			x1 = (x1_old + dt * (-x2_old + 2.0)) / (1.0 - 3.0 * dt);
			x2 = (x2_old + dt * (4.0 * x1_old + 7.0)) / (1.0 - dt * 3.0);
			
			traj.push_back({x1, x2});
		}
		trajectories.push_back(traj);
	}

	saveToDat(filename, trajectories, dt);
}


