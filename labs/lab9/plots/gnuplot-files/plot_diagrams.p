set terminal pngcairo size 800,800 enhanced font 'Arial,12'
set grid
set size square
set xlabel "x_j"
set ylabel "x_{j+1}"
set xrange [0:1]
set yrange [0:1]

# Функция для отрисовки фона (параболы)
# Вариант 7: f(x) = (alpha/5) * x * (1-x)
f(x, a) = (a / 5.0) * x * (1.0 - x)
# Диагональ
g(x) = x

# Список alpha (как в C++)
alphas = "5 10 15 16 17 17.25 17.5 17.75 17.85 18 18.5 19 20"

# Мы используем цикл do for, но поскольку имена файлов с подчеркиваниями,
# проще прописать блоки вручную или использовать system().
# Для надежности пропишем блоки вручную, как и раньше.

# --- Alpha = 5 ---
set output "plots/pictures/phase_5.png"
set title "Фазовый портрет ({/Symbol a} = 5)"
# 1. Диагональ (серый пунктир)
# 2. Парабола (синяя линия)
# 3. Траектория (красная линия из файла)
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 5) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_5.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 10 ---
set output "plots/pictures/phase_10.png"
set title "Фазовый портрет ({/Symbol a} = 10)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 10) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_10.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 15 ---
set output "plots/pictures/phase_15.png"
set title "Фазовый портрет ({/Symbol a} = 15)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 15) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_15.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 16 (Цикл 2) ---
set output "plots/pictures/phase_16.png"
set title "Фазовый портрет ({/Symbol a} = 16)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 16) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_16.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 17 ---
set output "plots/pictures/phase_17.png"
set title "Фазовый портрет ({/Symbol a} = 17)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 17) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_17.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 17.25 ---
set output "plots/pictures/phase_17_25.png"
set title "Фазовый портрет ({/Symbol a} = 17.25)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 17.25) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_17_25.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 17.5 ---
set output "plots/pictures/phase_17_5.png"
set title "Фазовый портрет ({/Symbol a} = 17.5)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 17.5) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_17_5.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 17.75 ---
set output "plots/pictures/phase_17_75.png"
set title "Фазовый портрет ({/Symbol a} = 17.75)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 17.75) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_17_75.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 17.85 ---
set output "plots/pictures/phase_17_85.png"
set title "Фазовый портрет ({/Symbol a} = 17.85)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 17.85) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_17_85.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 18 ---
set output "plots/pictures/phase_18.png"
set title "Фазовый портрет ({/Symbol a} = 18)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 18) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_18.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 18.5 ---
set output "plots/pictures/phase_18_5.png"
set title "Фазовый портрет ({/Symbol a} = 18.5)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 18.5) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_18_5.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 19 ---
set output "plots/pictures/phase_19.png"
set title "Фазовый портрет ({/Symbol a} = 19)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 19) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_19.dat" with lines lw 1 lc rgb "red" title "Траектория"

# --- Alpha = 20 (Хаос) ---
set output "plots/pictures/phase_20.png"
set title "Фазовый портрет ({/Symbol a} = 20)"
plot g(x) with lines lc rgb "gray" dt 2 title "y=x", \
     f(x, 20) with lines lw 2 lc rgb "blue" title "f(x)", \
     "plots/dat-files/phase_alpha_20.dat" with lines lw 0.5 lc rgb "red" title "Траектория"
