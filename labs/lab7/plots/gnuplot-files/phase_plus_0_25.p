set terminal pngcairo size 800,600 enhanced font 'Arial,12'

set title "Фазовый портрет ({/Symbol a} = 0.25)"
set xlabel "x1"
set ylabel "x2"
set xrange [-0.5:2.5]
set yrange [-0.5:2.5]
set grid

set output "plots/pictures/phase_plus_0_25.png"
plot for [i=0:24] "plots/dat-files/alpha_plus_0_25.dat" index i using 2:3 with lines lw 2 notitle, \
     for [i=0:24] "" index i every ::0::0 using 2:3 with points pt 7 ps 1.5 lc rgb "black" notitle
