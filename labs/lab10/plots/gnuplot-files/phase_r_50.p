set terminal pngcairo size 800,600 enhanced font 'Arial,12'
set grid
set title "Фазовый портрет (r = 50) - Устойчивые фокусы"
set xlabel "x"
set ylabel "z"

set output "plots/pictures/phase_r_50.png"
plot for [i=0:1] "plots/dat-files/r_50.dat" index i using 2:4 with lines lw 2 title sprintf("Start %d", i+1)
