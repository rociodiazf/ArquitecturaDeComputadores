#.. Programa par sumar dos variables

#-- Definir las variables
	.data
	
a:	.word 10
b:	.word 20

	.text
	
	#-- cargamos la direccion de la variable. 
	la x5, a	#x5 apunta a "a"
	
	#-- apunta a la variable b
	la x6, b
	
	#-- x10 = a
	lw x10, 0(x5)
	
	#-- x11 = b 
	lw x11, 0(x6)
	
	#-- x12 = a +b
	add x12, x10, x11
	
	#-- 36 bytes
	
	#-- Terminar
	li a7, 10
	ecall