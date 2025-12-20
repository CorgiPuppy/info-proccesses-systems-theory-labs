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
	= ОТЧЕТ ПО ЛАБОРАТОРНОЙ РАБОТЕ №10
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
	== Работа 10
])

#pagebreak()

#align(center, block[
	= Выполнение задачи
])

#align(center, block[
	=== Аналитическое решение
])
На @work10AnalyticalSolution представлено аналитическое решение.
#figure(
	image(
		"../assets/Work10.jpg",
		height: 400pt,
	),
	caption: [Аналитическое решение.],
	supplement: [Рис.]
) <work10AnalyticalSolution>

#pagebreak()

#align(center, block[
	=== Графики
])
На @divergence представлена бифуркационная диаграмма.
#figure(
	image("../plots/pictures/divergence.png"),

	caption: [Бифуркационная диаграмма.],
	supplement: [Рис.],
) <divergence>
На @phase_r_0_5 представлен фазовая плоскость при r = 0.5.
#figure(
	grid(
		image("../plots/pictures/phase_r_0_5.png")
	),
	caption: [Фазовая плоскость при r = 0.5.],
	supplement: [Рис.],
) <phase_r_0_5>
На @phase_r_50 представлен фазовая плоскость при r = 50.
#figure(
	grid(
		image("../plots/pictures/phase_r_50.png")
	),
	caption: [Фазовая плоскость при r = 50.],
	supplement: [Рис.],
) <phase_r_50>
На @phase_r_120 представлен фазовая плоскость при r = 120.
#figure(
	grid(
		image("../plots/pictures/phase_r_120.png")
	),
	caption: [Фазовая плоскость при r = 120.],
	supplement: [Рис.],
) <phase_r_120>
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
