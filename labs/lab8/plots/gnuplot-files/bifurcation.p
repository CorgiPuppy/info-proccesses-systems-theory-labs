set terminal pngcairo size 1000,800 enhanced font 'Arial,12'

set title "Бифуркационная диаграмма (x1({/Symbol a}))"
set xlabel "{/Symbol a}"
set ylabel "x1"
set xrange [-0.5:1.0]
set yrange [-0.1:1.0]
set grid
set arrow from 0,-0.1 to 0,1.0 nohead ls 2 dt 2 lc rgb "gray"

set output "plots/pictures/bifurcation.png"
plot "plots/dat-files/bifurcation.dat" using 1:2 with lines lw 3 lc rgb "blue" title "Устойчивый фокус", \
     "plots/dat-files/bifurcation.dat" using 1:3 with lines dt 2 lw 3 lc rgb "red" title "Неустойчивый фокус"
