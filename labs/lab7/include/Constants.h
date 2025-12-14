#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <string>

namespace Constants {
	const std::string DAT_DIR = "plots/dat-files/";

	const double dt = 0.01;
	const double T = 10.0;

	const std::vector<double> alphas = {
		-0.25,
		0.0,
		0.25
	};

	const std::vector<std::string> filenames = {
		"alpha_minux_0_25.dat",
		"alpha_0.dat",
		"alpha_plus_0_25.dat"
	};

	const std::string bif_filename = "bifurcation.dat";
}

#endif
