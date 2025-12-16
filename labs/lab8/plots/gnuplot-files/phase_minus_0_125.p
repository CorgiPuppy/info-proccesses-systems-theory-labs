set terminal pngcairo size 800,600 enhanced font 'Arial,12'

set title "Фазовый портрет ({/Symbol a} = -0.125)"
set xlabel "x1"
set ylabel "x2"
set xrange [3:3]
set yrange [3:3]
set grid
set size square

set output "plots/pictures/phase_minus_0_125.png"
plot for [i=0:24] "plots/dat-files/alpha_minus_0_125.dat" index i using 2:3 with lines lw 2 notitle, \
     for [i=0:24] "" index i every ::0::0 using 2:3 with points pt 7 ps 1.5 lc rgb "black" notitle
