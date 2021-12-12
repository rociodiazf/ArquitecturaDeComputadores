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
	
	#-- cargamos en los siguientes registros los valores de los anteriores datos
	lw x10, 0(x5)
	lw x11, 4(x5)
	lw x12, 8(x5)
	lw x13, 12(x5)
	
	li a7, 10
	ecall