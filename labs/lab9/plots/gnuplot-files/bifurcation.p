set terminal pngcairo size 1200,800 enhanced font 'Arial,12'

set title "Бифуркационная диаграмма (Вариант 7)"
set xlabel "{/Symbol a}"
set ylabel "x"
set xrange [0:20]
set yrange [0:1]
set grid

set output "plots/pictures/bifurcation.png"
plot "plots/dat-files/bifurcation.dat" using 1:2 with dots lc rgb "black" title ""
