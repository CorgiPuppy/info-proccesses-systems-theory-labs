#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <string>
#include <vector>

namespace Constants {
    const std::string DAT_DIR = "plots/dat-files/";

    const double sigma = 7.0;
    const double b = 5.0;

    const double dt = 0.005; 
    const double T = 50.0;   

    const std::vector<double> r_values = {0.5, 50.0, 120.0};
    
    const std::vector<std::string> filenames = {
        "r_0_5.dat",
        "r_50.dat",
        "r_120.dat"
    };

    const double r_chaos = 120.0;
    const double epsilon = 1e-12;
    const std::string div_filename = "divergence.dat";
}

#endif
