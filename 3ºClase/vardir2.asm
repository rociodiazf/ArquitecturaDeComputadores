#-- Este programa crearemos 4 variables, inicializadas a 0
#-- las cargamos en los registros x5, x6. x7 y x8.
	.data
	
a:	.word 1
b:	.word 2
c:	.word 3
d:	.word 4	
	
	.text
	
	#-- leemos en los registros siguinetes la direccion de memoria donde se encuentan los datos
	la x5, a
	la x6, b
	la x7, c
	la x8, d
	
	#-- cargamos en los siguientes registros los valores de los anteriores datos
	lw x10, 0(x5)
	lw x11, 0(x6)
	lw x12, 0(x7)
	lw x13, 0(x8)
	
	li a7, 10
	ecall