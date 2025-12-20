#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>
#include <iomanip>
#include <string>

#include "Constants.h"

using namespace std;

struct Point {
    double x;
    double y;
    double z;
};

Point get_derivatives(Point p, double r) {
    double dx = Constants::sigma * (p.y - p.x);
    double dy = r * p.x - p.y - p.x * p.z;
    double dz = p.x * p.y - Constants::b * p.z;
    return {dx, dy, dz};
}

void step_rk4(Point& p, double dt, double r) {
    Point k1 = get_derivatives(p, r);

    Point p2 = {p.x + 0.5*dt*k1.x, p.y + 0.5*dt*k1.y, p.z + 0.5*dt*k1.z};
    Point k2 = get_derivatives(p2, r);

    Point p3 = {p.x + 0.5*dt*k2.x, p.y + 0.5*dt*k2.y, p.z + 0.5*dt*k2.z};
    Point k3 = get_derivatives(p3, r);

    Point p4 = {p.x + dt*k3.x, p.y + dt*k3.y, p.z + dt*k3.z};
    Point k4 = get_derivatives(p4, r);

    p.x += (dt / 6.0) * (k1.x + 2*k2.x + 2*k3.x + k4.x);
    p.y += (dt / 6.0) * (k1.y + 2*k2.y + 2*k3.y + k4.y);
    p.z += (dt / 6.0) * (k1.z + 2*k2.z + 2*k3.z + k4.z);
}

// Задание 2: Фазовые портреты
void solveTask2() {
    vector<Point> starts = {
        {0.0001, 0.0, 0.0},
        {-0.0001, 0.0, 0.0}
    };

    for(size_t i = 0; i < Constants::r_values.size(); ++i) {
        double r = Constants::r_values[i];
        string path = Constants::DAT_DIR + Constants::filenames[i];
        
        ofstream file(path);
        if (!file.is_open()) {
            cerr << "Error opening: " << path << endl;
            continue;
        }
        file << fixed << setprecision(6);


        for(auto start : starts) {
            Point curr = start;
            for(double t = 0; t <= Constants::T; t += Constants::dt) {
                file << t << " " << curr.x << " " << curr.y << " " << curr.z << "\n";
                step_rk4(curr, Constants::dt, r);
            }
            file << "\n\n";
        }
        file.close();
    }
}

void solveTask3() {
    double r = Constants::r_chaos;
    string path = Constants::DAT_DIR + Constants::div_filename;
    
    ofstream file(path);
    if (!file.is_open()) return;
    file << fixed << setprecision(12); 

    Point p1 = {1.0, 1.0, 1.0}; 
    Point p2 = {1.0, 1.0, 1.0 + Constants::epsilon}; 

    for(double t = 0; t <= Constants::T; t += Constants::dt) {
        double dist = sqrt(pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2) + pow(p1.z - p2.z, 2));
        
        file << t << " " << dist << "\n";

        step_rk4(p1, Constants::dt, r);
        step_rk4(p2, Constants::dt, r);
    }
    file.close();
}

int main() {
    solveTask2();
    solveTask3();
    return 0;
}
