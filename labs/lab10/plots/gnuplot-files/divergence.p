set terminal pngcairo size 800,600 enhanced font 'Arial,12'
set grid
set title "Чувствительность к нач. условиям (d(t))"
set xlabel "t"
set ylabel "d(t)"
set logscale y

set output "plots/pictures/divergence.png"
plot "plots/dat-files/divergence.dat" using 1:2 with lines lw 2 lc rgb "red" title "Distance"
