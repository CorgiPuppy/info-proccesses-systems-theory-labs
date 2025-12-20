set terminal pngcairo size 800,600 enhanced font 'Arial,12'
set grid
set title "Фазовый портрет (r = 120) - Хаос"
set xlabel "x"
set ylabel "z"

set output "plots/pictures/phase_r_120.png"
# Линии тоньше (lw 1), чтобы хаос не превратился в кашу
plot for [i=0:1] "plots/dat-files/r_120.dat" index i using 2:4 with lines lw 1 title sprintf("Start %d", i+1)
