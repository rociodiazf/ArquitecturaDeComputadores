#-- Este programa crearemos 4 variables, inicializadas a 0
#-- las cargamos en los registros x5, x6. x7 y x8.
	.data
	
a:	.word 0
b:	.word 0
c:	.word 0
d:	.word 0	
	
	.text
	
	#-- leemos en los registros siguinetes la direccion de memoria donde se encuentan los datos
	la x5, a
	la x6, b
	la x7, c
	la x8, d
	
	li a7, 10
	ecall 