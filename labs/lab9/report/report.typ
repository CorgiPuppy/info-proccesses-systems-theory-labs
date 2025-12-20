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
	= ОТЧЕТ ПО ЛАБОРАТОРНОЙ РАБОТЕ №9
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
		table.cell(text(size: 14.4pt, "Дата сдачи:"), align: right), table.cell(text(size: 14.4pt, "20.12.25"), align: left),
		
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

#align(center, block[
	== Работа 9
])

Отображние: \
$ x_(j+1) = frac(1, 5) #ptgk("a") x_j (1 - x_j) $.
$ x in [0; 1], #ptgk("a") in [0; 20]. $
1. Найти неподвижные точки и значение параметра #ptgk("a"), при которых они будут устойчивы.
2. Построить бифуркационную диаграмму. Отметить точки бифуркации.
3. Построить точечные графики зависимости $x_j = f(j)$ при следующих значениях #ptgk("a"): 5; 10; 15; 16; 17; 17.25; 17.5; 17.75; 17.85; 18; 18.5; 19; 20.

В качестве начального условия выбрать $x_0 = 0.6$. Фазовый портрет для каждого #ptgk("a") строить на отдельном графике.

#pagebreak()

#align(center, block[
	= Выполнение задачи
])

#align(center, block[
	=== Аналитическое решение
])
На @work9AnalyticalSolution представлено аналитическое решение.
#figure(
	image(
		"../assets/Work9.jpg",
		height: 400pt,
	),
	caption: [Аналитическое решение.],
	supplement: [Рис.]
) <work9AnalyticalSolution>

#pagebreak()

#align(center, block[
	=== Графики
])
На @bifurcation представлена бифуркационная диаграмма.
#figure(
	image("../plots/pictures/bifurcation.png"),

	caption: [Бифуркационная диаграмма.],
	supplement: [Рис.],
) <bifurcation>
На @iter_5 представлен фазовый портрет при #ptgk("a") = 5.
#figure(
	grid(
		image("../plots/pictures/iter_5.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 5.],
	supplement: [Рис.],
) <iter_5>
На @iter_10 представлен фазовый портрет при #ptgk("a") = 10.
#figure(
	grid(
		image("../plots/pictures/iter_10.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 10.],
	supplement: [Рис.],
) <iter_10>
На @iter_15 представлен фазовый портрет при #ptgk("a") = 15.
#figure(
	grid(
		image("../plots/pictures/iter_15.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 15.],
	supplement: [Рис.],
) <iter_15>
На @iter_16 представлен фазовый портрет при #ptgk("a") = 16.
#figure(
	grid(
		image("../plots/pictures/iter_16.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 16.],
	supplement: [Рис.],
) <iter_16>
На @iter_17 представлен фазовый портрет при #ptgk("a") = 17.
#figure(
	grid(
		image("../plots/pictures/iter_17.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 17.],
	supplement: [Рис.],
) <iter_17>
На @iter_17_25 представлен фазовый портрет при #ptgk("a") = 17.25.
#figure(
	grid(
		image("../plots/pictures/iter_17_25.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 17.25.],
	supplement: [Рис.],
) <iter_17_25>
На @iter_17_5 представлен фазовый портрет при #ptgk("a") = 17_5.
#figure(
	grid(
		image("../plots/pictures/iter_17_5.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 17.5.],
	supplement: [Рис.],
) <iter_17_5>
На @iter_17_75  представлен фазовый портрет при #ptgk("a") = 17_75.
#figure(
	grid(
		image("../plots/pictures/iter_17_75.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 17.75.],
	supplement: [Рис.],
) <iter_17_75>
На @iter_17_85 представлен фазовый портрет при #ptgk("a") = 17.85.
#figure(
	grid(
		image("../plots/pictures/iter_17_85.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 17.85.],
	supplement: [Рис.],
) <iter_17_85>
На @iter_18 представлен фазовый портрет при #ptgk("a") = 18.
#figure(
	grid(
		image("../plots/pictures/iter_18.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 18.],
	supplement: [Рис.],
) <iter_18>
На @iter_18_5 представлен фазовый портрет при #ptgk("a") = 18.5.
#figure(
	grid(
		image("../plots/pictures/iter_18_5.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 18.5.],
	supplement: [Рис.],
) <iter_18_5>
На @iter_19 представлен фазовый портрет при #ptgk("a") = 19.
#figure(
	grid(
		image("../plots/pictures/iter_19.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 19.],
	supplement: [Рис.],
) <iter_19>
На @iter_20 представлен фазовый портрет при #ptgk("a") = 20.
#figure(
	grid(
		image("../plots/pictures/iter_20.png")
	),
	caption: [Фазовый портрет при #ptgk("a") = 20.],
	supplement: [Рис.],
) <iter_20>

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
В ходе выполнения работы было проведено исследование динамики дискретной системы, описываемой логистическим отображением. \
Аналитическое исследование позволило найти неподвижные точки и интервалы их устойчивости: \
Неподвижная точка $x=0$ устойчива при значениях параметра $0≤α<5$. При $α=5$ происходит бифуркация (обмен устойчивостью). \
Нетривиальная неподвижная точка $x = 1 − frac(5, α)$ становится устойчивой при $α>5$ и сохраняет устойчивость до $α=15$. \
При $α=15$ происходит бифуркация удвоения периода: неподвижная точка теряет устойчивость, и рождается устойчивый цикл периода $2$. \
Численное моделирование подтвердило теоретические выводы.
