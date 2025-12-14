set terminal pngcairo size 800,600 enhanced font 'Arial,12'

set title "Фазовый портрет ({/Symbol a} = -0.25)"
set xlabel "x1"
set ylabel "x2"
set xrange [-0.5:2.5]
set yrange [-0.5:2.5]
set grid
set arrow from 0,0 to 0,2 nohead ls 2 dt 2 lc rgb "gray"

set output "plots/pictures/phase_minus_0_25.png"
plot "plots/dat-files/alpha_minus_0_25.dat" using 2:3 with lines lc rgb "black" notitle, \
     "" using 2:3 every ::0::0 with points pt 7 ps 1 lc rgb "blue" notitle
