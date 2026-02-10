#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>
#include <string>
#include <iomanip>

#include "Constants.h"

// Функция отображения для Варианта 7: x_{j+1} = (alpha/5) * x_j * (1 - x_j)
double next_val(double x, double alpha) {
    return (alpha / 5.0) * x * (1.0 - x);
}

// Форматирование имени файла
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
    // --- 1. Графики итераций и 2. Фазовые портреты (Паутина) ---
    for (double alpha : Constants::alphas) {
        std::string suffix = format_alpha(alpha) + ".dat";
        
        // А) Файл для итераций (x от t)
        std::string path_iter = Constants::DAT_DIR + Constants::iterations_basename + suffix;
        std::ofstream file_iter(path_iter);
        
        // Б) Файл для фазового портрета (x_{j+1} от x_j) - Паутина
        std::string path_phase = Constants::DAT_DIR + Constants::phase_basename + suffix;
        std::ofstream file_phase(path_phase);

        if (!file_iter.is_open() || !file_phase.is_open()) continue;
        
        file_iter << std::fixed << std::setprecision(6);
        file_phase << std::fixed << std::setprecision(6);

        double x = Constants::x0;
        
        // Начальная точка для паутины (на оси или на диагонали)
        // Начнем с диагонали: (x0, x0)
        file_phase << x << " " << x << "\n";

        for (int j = 0; j <= Constants::N_ITERATIONS; ++j) {
            // Запись итераций
            file_iter << j << " " << x << "\n";

            // Расчет следующего значения
            double y = next_val(x, alpha);

            // Запись паутины:
            // 1. Вертикально до кривой: (x_j, x_j) -> (x_j, x_{j+1})
            file_phase << x << " " << y << "\n";
            // 2. Горизонтально до диагонали: (x_j, x_{j+1}) -> (x_{j+1}, x_{j+1})
            file_phase << y << " " << y << "\n";

            x = y;
        }
        
        file_iter.close();
        file_phase.close();
        std::cout << "Saved data for alpha = " << alpha << std::endl;
    }

    std::string bif_path = Constants::DAT_DIR + Constants::bif_filename;
    std::ofstream bifFile(bif_path);

    if (bifFile.is_open()) {
        std::cout << "Calculating Bifurcation Diagram..." << std::endl;
        for (double a = 0.0; a <= 20.0; a += 0.02) {
            double x = Constants::x0;
            for (int k = 0; k < 500; ++k) x = next_val(x, a);
            for (int k = 0; k < 100; ++k) {
                x = next_val(x, a);
                bifFile << a << " " << x << "\n";
            }
        }
        bifFile.close();
    }

    return 0;
}
