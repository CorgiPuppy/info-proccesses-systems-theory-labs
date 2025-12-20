#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>
#include <string>
#include <iomanip>

#include "Constants.h"

double next_val(double x, double alpha) {
    return (alpha / 5.0) * x * (1.0 - x);
}

std::string format_alpha(double alpha) {
    std::string s = std::to_string(alpha);
    s.erase(s.find_last_not_of('0') + 1, std::string::npos); 
    if(s.back() == '.') s.pop_back();
    
    size_t dot = s.find('.');
    if (dot != std::string::npos) {
        s[dot] = '_';
    }
    return s;
}

int main() {
    for (double alpha : Constants::alphas) {
        std::string filename = Constants::iterations_basename + format_alpha(alpha) + ".dat";
        std::string path = Constants::DAT_DIR + filename;

        std::ofstream file(path);
        if (!file.is_open()) {
            std::cerr << "Error opening: " << path << std::endl;
            continue;
        }
        file << std::fixed << std::setprecision(6);

        double x = Constants::x0;
        
        for (int j = 0; j <= Constants::N_ITERATIONS; ++j) {
            file << j << " " << x << "\n";
            x = next_val(x, alpha);
        }
        file.close();
        std::cout << "Saved iteration data for alpha = " << alpha << std::endl;
    }

    std::string bif_path = Constants::DAT_DIR + Constants::bif_filename;
    std::ofstream bifFile(bif_path);

    if (bifFile.is_open()) {
        std::cout << "Calculating Bifurcation Diagram..." << std::endl;
        
        for (double a = 0.0; a <= 20.0; a += 0.02) {
            double x = Constants::x0;

            for (int k = 0; k < 500; ++k) {
                x = next_val(x, a);
            }

            for (int k = 0; k < 100; ++k) {
                x = next_val(x, a);
                bifFile << a << " " << x << "\n";
            }
        }
        bifFile.close();
    }

    return 0;
}
