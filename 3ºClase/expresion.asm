#-- Este programa calcula la expresion f = (a + b + c) - (d - 3). Dnd las variables están en memoria.
	.data
	
a:	.word -5
b:	.word 2
c:	.word 30
d:	.word 0
f:	.word 0
	
	.text
	
	#-- leemos en los registros siguinetes la direccion de memoria donde se encuentan los datos
	la x5, a
	
	#-- cargamos en los siguientes registros los valores de los anteriores datos
	lw x10, 0(x5)
	lw x11, 4(x5)
	lw x12, 8(x5)
	lw x13, 12(x5)

	#-- hacemos las operaciones necesarias...
	#-- (d-3)
	addi x6, x13, -3	#-- x6 = x13 -3
	#-- (a+b)
	add x7, x10, x11	#-- x7 = x10 + x11
	#-- (a + b + c)
	add x7, x7, x12		#-- x7 = x7 + x12
	#-- f = (a + b + c) - (d - 3). El resultado...
	sub x8, x7, x6		#-- x8 = x7 - x6
	
	#-- Almacenamos el valor en una variable f
	sw x8, 16(x5)
	
	li a7, 10
	ecall