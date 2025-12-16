#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <string>
#include <vector>

namespace Constants {
	const std::string DAT_DIR = "plots/dat-files/";

	const double dt = 0.01;
	const double T = 20.0;

	const std::vector<double> alphas = {
		-0.5,
		-0.125,
		1.5
	};

	const std::vector<std::string> filenames = {
		"alpha_minus_0_5.dat",
		"alpha_minus_0_125.dat",
		"alpha_plus_1_5.dat"
	};

	const std::string bif_filename = "bifurcation.dat";
}

#endif
