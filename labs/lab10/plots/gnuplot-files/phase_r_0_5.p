set terminal pngcairo size 800,600 enhanced font 'Arial,12'
set grid
set title "Фазовый портрет (r = 0.5) - Устойчивый узел"
set xlabel "x"
set ylabel "z"

set output "plots/pictures/phase_r_0_5.png"
# using 2:4 означает x и z (так как столбцы: 1=t, 2=x, 3=y, 4=z)
plot for [i=0:1] "plots/dat-files/r_0_5.dat" index i using 2:4 with lines lw 2 title sprintf("Start %d", i+1)
