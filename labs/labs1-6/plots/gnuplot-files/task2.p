set terminal pngcairo size 800,600 enhanced font 'Arial,12'
set grid

# Фазовый портрет
set title "Фазовый портрет"
set xlabel "x"
set ylabel "y"

set output "plots/pictures/task2_phase.png"
plot for [i=0:7] "plots/dat-files/task2.dat" index i using 2:3 with lines lw 2 title sprintf("Траектория %d", i+1), \
     for [i=0:7] "" index i eve ::0::0 using 2:3 with points pt 7 ps 1.6 lc rgb "black" notitle

# Динамика x(t)
set title "Зависимость x(t)"
set xlabel "t"
set ylabel "x"

set output "plots/pictures/task2_x_t.png"
plot for [i=0:7] "plots/dat-files/task2.dat" index i using 1:2 with lines lw 2 title sprintf("Траектория %d", i+1)

# Динамика x(t)
set title "Зависимость y(t)"
set xlabel "t"
set ylabel "y"

set output "plots/pictures/task2_y_t.png"
plot for [i=0:7] "plots/dat-files/task2.dat" index i using 1:3 with lines lw 2 title sprintf("Траектория %d", i+1)
