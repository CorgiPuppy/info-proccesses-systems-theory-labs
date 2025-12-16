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
	= ОТЧЕТ ПО ЛАБОРАТОРНОЙ РАБОТЕ №8
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
		table.cell(text(size: 14.4pt, "Приняла:"), align: right), table.cell(text(size: 14.4pt, "Зинченко Дарья Ивановна"), align: left),
		table.cell(text(size: 14.4pt, "Дата сдачи:"), align: right), table.cell(text(size: 14.4pt, "17.12.25"), align: left),
		
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
	== Работа 7
])

Система уравнений:
$ cases(
	frac(d x_1, d t) = 0.4 #ptgk("a") x_1 - x_2 - 0.6 x_1 (x^2_1 + x^2_2)",",
	frac(d x_2, d t) = x_1 - x_2.
) $
1. Найти неподвижные точки и определить их тип при #ptgk("a") > 0, #ptgk("a") = 0, #ptgk("a") < 0, исследовав систему по 1-му методу Ляпунова.
2. Найти неподвижные точки и определить их тип при #ptgk("a") > 0, #ptgk("a") = 0, #ptgk("a") < 0 в полярных координатах.
2. Указать тип бифуркации и точку бифуркации.
3. Построить бифуркационную диаграмму (зависимость стационарного решения от параметра #ptgk("a").
4. Построить фазовые портреты при следующих значениях управляющего параметра #ptgk("a"): -1/2, -1/8, 1.5.

Для решения использовать явную схему Рунге-Кутты. Фазовый портрет для каждого #ptgk("a") строить на отдельном графике.

#pagebreak()

#align(center, block[
	= Выполнение задачи
])

#align(center, block[
	=== Аналитическое решение
])
/*
На @work1-1AnalyticalSolution представлено аналитическое решение.
#figure(
	image(
		"../assets/Work7.jpg",
		height: 500pt,
	),
	caption: [Аналитическое решение.],
	supplement: [Рис.]
) <work1-1AnalyticalSolution>
*/

#align(center, block[
	=== Графики
])
На @bifurcation представлена бифуркационная диаграмма.
#figure(
	image("../plots/pictures/bifurcation.png"),

	caption: [Бифуркационная диаграмма (x1(#ptgk("a"))).],
	supplement: [Рис.],
) <bifurcation>
На @phase_minus_0_5 представлен фазовый портрет при #ptgk("a") = -0.5.
#figure(
	grid(
		image("../plots/pictures/phase_minus_0_5.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = -0.5.],
	supplement: [Рис.],
) <phase_minus_0_5>
На @phase_minus_0_125 представлен фазовый портрет при #ptgk("a") = -0.125.
#figure(
	grid(
		image("../plots/pictures/phase_minus_0_125.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = -0.125.],
	supplement: [Рис.],
) <phase_minus_0_125>
На @phase_plus_1_5 представлен фазовый портрет при #ptgk("a") = 1.5.
#figure(
	grid(
		image("../plots/pictures/phase_plus_1_5.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 1.5.],
	supplement: [Рис.],
) <phase_plus_1_5>

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

