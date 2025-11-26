#import "@preview/xarrow:0.3.1": xarrow
#import "@preview/diverential:0.2.0": *
#import "@preview/polytonoi:0.1.0": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import fletcher.shapes: diamond

#show raw.where(block: true): it => { set par(justify: false); grid(
  columns: (100%, 100%),
  column-gutter: -100%,
  block(width: 100%, inset: 1em, for i in it.text.split("\n") {
    linebreak()
  }),
  block(radius: 1em, fill: luma(246), width: 100%, inset: 1em, it),
)}
#show table.cell.where(y: 0): strong

#set page(
	paper: "a4",
	margin: (x: 0.8cm, y: 1.5cm),
)

#set text(
	font: "New Computer Modern",
	size: 11pt,
)

#set par(first-line-indent: (
	amount: 2em,
	all: true,
))

#set page(numbering: none)
#align(center, block[
	#set text(size: 12pt)
	#set heading(outlined: false)
	= Министерство науки и вышего образования Российской Федерации
	= Федеральное государственное бюджетное образовательное учреждение высшего образования
	#set text(lang: "fr")
	= "Российский химико-технологический университет имени Д.И. Менделеева" 
])

#let count = 0
#while count < 10 {
	$ #linebreak() $
	count = count + 1
}

#align(center, block[
	#set text(size: 16pt)
	#set heading(outlined: false)
	= ОТЧЕТ ПО ЛАБОРАТОРНОЙ РАБОТЕ №1
	= Вариант 7
])

#let count = 0
#while count < 10 {
	$ #linebreak() $
	count = count + 1
}

#align(center)[
	#table(
		columns: (8.85cm,) + (10.8cm,),
		stroke: none,

		table.cell(text(size: 13.4pt, "Выполнил студент группы КС-46:"), align: right), table.cell(text(size: 14.4pt, "Золотухин Андрей Александрович"), align: left),
		table.cell(text(size: 14.4pt, "Ссылка на репозиторий:"), align: right), table.cell(text(size: 14.4pt, "https://github.com/"), align: left),
		table.cell("", align: right), table.cell(text(size: 14.4pt, "CorgiPuppy/"), align: left),
		table.cell("", align: right), table.cell(text(size: 14.4pt, "info-proccesses-systems-theory-labs"), align: left),
		table.cell(text(size: 14.4pt, "Принял:"), align: right), table.cell(text(size: 14.4pt, "Зинченко Дарья Ивановна"), align: left),
		table.cell(text(size: 14.4pt, "Дата сдачи:"), align: right), table.cell(text(size: 14.4pt, "26.11.25"), align: left),
		
	)
]

#let count = 0
#while count < 5 {
	$ #linebreak() $
	count = count + 1
}

#align(center, block[
	#set text(size: 14.4pt)
	#set heading(outlined: false)
	= Москва
	= 2025
])

#pagebreak()

#align(center, block[
	#outline(		
		title: "Оглавление",
	)
])

#pagebreak()

#set page(numbering: "1")
#align(center, block[
	= Описание задачи
])

+ #underline[Аналитическим способом] найти стационарную точку и #underline[определить характер её устойчивости] по 1-ому методу Ляпунова;
+ Написать программу, решающую систему ДУ и сттроящую следующие графики:
  + фазовый портрет системы. Подберите начальные условия, шаг по времени и масштаб таким образом, чтобы тип точки и ее координаты на графике были очевидны (в случае неустойчивой точки начальные условия рекомендуется задавать как можно ближе к неподвижной точке). #underline[Число траекторий не меньше восьми!]
  + зависимости $х_1(t)$ и $х_2(t)$ - динамику системы во времени (таким образом, чтобы поведение системы в окрестности неподвижной точки и ее координаты были очевидны.) #underline[На одном графике должно быть несколько линий динамики] при разных начальных условиях.

#align(center, block[
	== Работа 1.1
])

В реакторе идеального смешения непрерывного действия протекают реакции по схеме:
$ X xarrow(k_1) Y, $
$ X xarrow(k_2) P. $
Математическая модель реактора имеет вид:
$ cases(
	frac(d x, d t) = frac(1, #ptgk("t")) (x_0 - x) - k_1 x",",
	frac(d y, d t) = - frac(1, #ptgk("t")) y + k_1 x - k_2 y.
) $
Значения параметров процесса: $x_0 = 6$, $k_1 = 2$, $k_3 = frac(1, 3)$, $#ptgk("t") = 1$. \
Построить фазовый портрет системы - график в координатах $(x, y)$. \
Для решения использовать явную схему Эйлера:
$ cases(
	frac(x^(n+1) - x^n, #ptgk("D") t) = frac(1, #ptgk("t")) (x_0 - x^n) - k_1 x^n",",
	frac(y^(n+1) - y^n, #ptgk("D") t) = frac(1, #ptgk("t")) y^n + k_1 x^n - k_2 y^n.
) $

#align(center, block[
	== Работа 1.2
])

Система уравнений:
$ cases(
	frac(d x_1, d t) = x_1 + 5",",
	frac(d x_2, d t) = frac(2, 3) x_2 - 5.
) $
Для решения использовать неявную схему Эйлера:
$ cases(
	frac(x^(n+1) - x^n, #ptgk("D") t) = f(x^(n+1)_1)",",
	frac(y^(n+1) - y^n, #ptgk("D") t) = f(x^(n+1)_2).
) $

#align(center, block[
	== Работа 1.3
])

Система уравнений:
$ cases(
	frac(d x_1, d t) = - frac(2, 3) x_1 - 4",",
	frac(d x_2, d t) = frac(2, 5) x_2.
) $
Для решения использовать схему Эйлера:
$ cases(
	frac(x^(n+1)_1 - x^n_1, #ptgk("D") t) = f(x^(n+1)_1)",",
	frac(x^(n+1)_2 - x^n_2, #ptgk("D") t) = f(x^(n)_2).
) $

#align(center, block[
	== Работа 1.4
])

Математическая модель процесса кристаллизации в реакторе (с учётом растворения мелких частиц и кристаллизации крупных) имеет вид:
$ cases(
	frac(d #ptgk("m")_0, d t) = k #ptgk("m")_1 - b + q",",
	frac(d #ptgk("m")_1, d t) = #ptgk("m")_0 (#ptgk("h")_1 - #ptgk("h")_2) + d","
) $
где $#ptgk("m")_0$ - нулевой момент функции распределения кристаллов по размерам, характеризующий общее количество частиц в единице объёма реактора; $#ptgk("m")_1$ - первый момент функции распределения, характеризующий суммарный линейный размер кристаллов; $k$ - константа скорости образования зародышей; $k #ptgk("m")_1$ - скорость образования зародышей; $b$ - скорость отбора зародышей; $q$ - скорость пополнения крупными частицами; $#ptgk("h")_1$ - скорость роста кристаллов; $#ptgk("h")_2$ - скорость растворения кристаллов; $d$ - суммарный линейный размер поступающих частиц. \
Значения параметров процесса: $k = frac(3, 7)$, $b = frac(9, 2)$, $q = 3$, $#ptgk("h")_1 = frac(3, 7)$, $#ptgk("h") = 1$, d = 2. \
Для решения использовать явную схему Эйлера:
$ cases(
	frac(#ptgk("m")^(n+1)_0 - #ptgk("m")^n_0, #ptgk("D") t) = k #ptgk("m")^n_1 - b + q",",
	frac(#ptgk("m")^(n+1)_1 - #ptgk("m")^n_1, #ptgk("D") t) = #ptgk("m")^n_0 (#ptgk("h")_1 - #ptgk("h")_2) + d.
) $

#align(center, block[
	== Работа 1.5
])

Система уравнений:
$ cases(
	frac(d x_1, d t) = -2 x_1 - 2 x_2 + 6",",
	frac(d x_2, d t) = 3 x_1 - 3 x_2.
) $
Для решения использовать схему Эйлера:
$ cases(
	frac(x_1^(n+1) - x_1^n, #ptgk("D") t) = f(x^(n+1)_1, x^n_2)",",
	frac(x_2^(n+1) - x_2^n, #ptgk("D") t) = f(x^(n)_1, x^(n+1)_2).
) $

#align(center, block[
	== Работа 1.6
])

Система уравнений:
$ cases(
	frac(d x_1, d t) = 333 x_1 - x_2 + 2",",
	frac(d x_2, d t) = 4 x_1 + 3 x_2 + 7.
) $
Для решения использовать схему Эйлера:
$ cases(
	frac(x_1^(n+1) - x_1^n, #ptgk("D") t) = f(x^(n+1)_1, x^n_2)",",
	frac(x_2^(n+1) - x_2^n, #ptgk("D") t) = f(x^(n)_1, x^(n+1)_2).
) $

#pagebreak()

#align(center, block[
	= Выполнение задачи
	== Работа 1.1
])

#align(center, block[
	=== Аналитическое решение
])
На @work1-1AnalyticalSolution представлено аналитическое решение.
#figure(
	image(
		"../assets/Work1-1.jpg",
		height: 500pt,
	),
	caption: [Аналитическое решение.],
	supplement: [Рис.]
) <work1-1AnalyticalSolution>

#align(center, block[
	=== Алгоритм программы
])

#align(center, block[
	=== Графики
])
На @work1-1y-x представлен фазовый портрет.
#figure(
	image("../plots/pictures/task1_phase.png"),

	caption: [Фазовый портрет.],
	supplement: [Рис.],
) <work1-1y-x>

На @work1-1x-t-y-t представлены зависимости x(t) и y(t).
#figure(
	grid(
		columns: 2,
		image("../plots/pictures/task1_x_t.png"),
		image("../plots/pictures/task1_y_t.png"),
	),
	caption: [Зависимости x(t) и y(t).],
	supplement: [Рис.],
) <work1-1x-t-y-t>

#pagebreak()

#align(center, block[
	== Работа 1.2
])

#align(center, block[
	=== Аналитическое решение
])
На @work1-2AnalyticalSolution представлено аналитическое решение.
#figure(
	image(
		"../assets/Work1-2.jpg",
		height: 500pt,
	),
	caption: [Аналитическое решение.],
	supplement: [Рис.]
) <work1-2AnalyticalSolution>

#align(center, block[
	=== Алгоритм программы
])

#align(center, block[
	=== Графики
])
На @work1-2y-x представлен фазовый портрет.
#figure(
	image("../plots/pictures/task2_phase.png"),

	caption: [Фазовый портрет.],
	supplement: [Рис.],
) <work1-2y-x>

На @work1-2x-t-y-t представлены зависимости x(t) и y(t).
#figure(
	grid(
		columns: 2,
		image("../plots/pictures/task2_x_t.png"),
		image("../plots/pictures/task2_y_t.png"),
	),
	caption: [Зависимости x(t) и y(t).],
	supplement: [Рис.],
) <work1-2x-t-y-t>

#pagebreak()

#align(center, block[
	== Работа 1.3
])

#align(center, block[
	=== Аналитическое решение
])
На @work1-3AnalyticalSolution представлено аналитическое решение.
#figure(
	image(
		"../assets/Work1-3.jpg",
		height: 500pt,
	),
	caption: [Аналитическое решение.],
	supplement: [Рис.]
) <work1-3AnalyticalSolution>

#align(center, block[
	=== Алгоритм программы
])

#align(center, block[
	=== Графики
])
На @work1-3y-x представлен фазовый портрет.
#figure(
	image("../plots/pictures/task3_phase.png"),

	caption: [Фазовый портрет.],
	supplement: [Рис.],
) <work1-3y-x>

На @work1-3x-t-y-t представлены зависимости x(t) и y(t).
#figure(
	grid(
		columns: 2,
		image("../plots/pictures/task3_x_t.png"),
		image("../plots/pictures/task3_y_t.png"),
	),
	caption: [Зависимости x(t) и y(t).],
	supplement: [Рис.],
) <work1-3x-t-y-t>

#pagebreak()

#align(center, block[
	== Работа 1.4
])

#align(center, block[
	=== Аналитическое решение
])
На @work1-4AnalyticalSolution представлено аналитическое решение.
#figure(
	image(
		"../assets/Work1-4.jpg",
		height: 500pt,
	),
	caption: [Аналитическое решение.],
	supplement: [Рис.]
) <work1-4AnalyticalSolution>

#align(center, block[
	=== Алгоритм программы
])

#align(center, block[
	=== Графики
])
На @work1-4y-x представлен фазовый портрет.
#figure(
	image("../plots/pictures/task4_phase.png"),

	caption: [Фазовый портрет.],
	supplement: [Рис.],
) <work1-4y-x>

На @work1-4x-t-y-t представлены зависимости x(t) и y(t).
#figure(
	grid(
		columns: 2,
		image("../plots/pictures/task4_x_t.png"),
		image("../plots/pictures/task4_y_t.png"),
	),
	caption: [Зависимости x(t) и y(t).],
	supplement: [Рис.],
) <work1-4x-t-y-t>

#pagebreak()

#align(center, block[
	== Работа 1.5
])

#align(center, block[
	=== Аналитическое решение
])
На @work1-5AnalyticalSolution представлено аналитическое решение.
#figure(
	image(
		"../assets/Work1-5.jpg",
		height: 500pt,
	),
	caption: [Аналитическое решение.],
	supplement: [Рис.]
) <work1-5AnalyticalSolution>

#align(center, block[
	=== Алгоритм программы
])

#align(center, block[
	=== Графики
])
На @work1-5y-x представлен фазовый портрет.
#figure(
	image("../plots/pictures/task5_phase.png"),

	caption: [Фазовый портрет.],
	supplement: [Рис.],
) <work1-5y-x>

На @work1-5x-t-y-t представлены зависимости x(t) и y(t).
#figure(
	grid(
		columns: 2,
		image("../plots/pictures/task5_x_t.png"),
		image("../plots/pictures/task5_y_t.png"),
	),
	caption: [Зависимости x(t) и y(t).],
	supplement: [Рис.],
) <work1-5x-t-y-t>

#pagebreak()

#align(center, block[
	== Работа 1.6
])

#align(center, block[
	=== Аналитическое решение
])
На @work1-6AnalyticalSolution представлено аналитическое решение.
#figure(
	image(
		"../assets/Work1-6.jpg",
		height: 500pt,
	),
	caption: [Аналитическое решение.],
	supplement: [Рис.]
) <work1-6AnalyticalSolution>

#align(center, block[
	=== Алгоритм программы
])

#align(center, block[
	=== Графики
])
На @work1-6y-x представлен фазовый портрет.
#figure(
	image("../plots/pictures/task6_phase.png"),

	caption: [Фазовый портрет.],
	supplement: [Рис.],
) <work1-6y-x>

На @work1-6x-t-y-t представлены зависимости x(t) и y(t).
#figure(
	grid(
		columns: 2,
		image("../plots/pictures/task6_x_t.png"),
		image("../plots/pictures/task6_y_t.png"),
	),
	caption: [Зависимости x(t) и y(t).],
	supplement: [Рис.],
) <work1-6x-t-y-t>

#pagebreak()

#align(center, block[
	= Код
])
#let codeConstantsblock = read("../include/Constants.h")
#raw(codeConstantsblock, block:true, lang: "c++")

#let codeblock = read("../src/main.cpp")
#raw(codeblock, block:true, lang: "c++")

#pagebreak()

#align(center, block[
	= Выводы
])
