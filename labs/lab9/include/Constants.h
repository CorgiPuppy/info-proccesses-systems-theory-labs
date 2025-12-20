#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <string>
#include <vector>

namespace Constants {
    const std::string DAT_DIR = "plots/dat-files/";

    const int N_ITERATIONS = 100; 
    const double x0 = 0.6;        

    const std::vector<double> alphas = {
        5.0, 10.0, 15.0, 16.0, 17.0, 
        17.25, 17.5, 17.75, 17.85, 
        18.0, 18.5, 19.0, 20.0
    };

    const std::string iterations_basename = "iter_alpha_";

    const std::string bif_filename = "bifurcation.dat";
}

#endif
