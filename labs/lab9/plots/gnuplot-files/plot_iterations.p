set terminal pngcairo size 800,600 enhanced font 'Arial,12'
set grid
set xlabel "Итерация (j)"
set ylabel "x_j"
set yrange [0:1]

alphas = "5 10 15 16 17 17.25 17.5 17.75 17.85 18 18.5 19 20"

set output "plots/pictures/iter_5.png"
set title "Итерации ({/Symbol a} = 5)"
plot "plots/dat-files/iter_alpha_5.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_10.png"
set title "Итерации ({/Symbol a} = 10)"
plot "plots/dat-files/iter_alpha_10.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_15.png"
set title "Итерации ({/Symbol a} = 15)"
plot "plots/dat-files/iter_alpha_15.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_16.png"
set title "Итерации ({/Symbol a} = 16)"
plot "plots/dat-files/iter_alpha_16.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_17.png"
set title "Итерации ({/Symbol a} = 17)"
plot "plots/dat-files/iter_alpha_17.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_17_25.png"
set title "Итерации ({/Symbol a} = 17.25)"
plot "plots/dat-files/iter_alpha_17_25.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_17_5.png"
set title "Итерации ({/Symbol a} = 17.5)"
plot "plots/dat-files/iter_alpha_17_5.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_17_75.png"
set title "Итерации ({/Symbol a} = 17.75)"
plot "plots/dat-files/iter_alpha_17_75.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_17_85.png"
set title "Итерации ({/Symbol a} = 17.85)"
plot "plots/dat-files/iter_alpha_17_85.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_18.png"
set title "Итерации ({/Symbol a} = 18)"
plot "plots/dat-files/iter_alpha_18.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_18_5.png"
set title "Итерации ({/Symbol a} = 18.5)"
plot "plots/dat-files/iter_alpha_18_5.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_19.png"
set title "Итерации ({/Symbol a} = 19)"
plot "plots/dat-files/iter_alpha_19.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""

set output "plots/pictures/iter_20.png"
set title "Итерации ({/Symbol a} = 20)"
plot "plots/dat-files/iter_alpha_20.dat" using 1:2 with points pt 7 ps 0.5 lc rgb "blue" title ""
