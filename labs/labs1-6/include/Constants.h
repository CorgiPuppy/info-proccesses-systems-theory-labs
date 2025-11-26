#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <string>

namespace Constants {
	const std::string DAT_DIR = "plots/dat-files/";

	namespace Task1 {
		const double x0 = 6.0;
		const double k1 = 2.0;
		const double k2 = 1.0 / 3.0;
		const double tau = 1.0;

		const double dt = 0.01;
		const double T = 5.0;
		const std::string filename = "task1.dat";
	}

	namespace Task2 {
		const double dt = 0.01;
		const double T = 2.0;
		const std::string filename = "task2.dat";
	}

	namespace Task3 {
		const double dt = 0.01;
		const double T = 4.0;
		const std::string filename = "task3.dat";
	}

	namespace Task4 {
		const double k = 3.0 / 7.0;
		const double b = 9.0 / 2.0;
		const double q = 3.0;
		const double eta1 = 3.0 / 7.0;
		const double eta2 = 1.0;
		const double d = 2.0;

		const double dt = 0.01;
		const double T = 2.0;
		const std::string filename = "task4.dat";
	}

	namespace Task5 {
		const double dt = 0.01;
		const double T = 3.0;
		const std::string filename = "task5.dat";
	}

	namespace Task6 {
		const double dt = 0.01;
		const double T = 2;
		const std::string filename = "task6.dat";
	}
}

#endif
