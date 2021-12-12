#-- Escribiremos un programa en el que con un bucle infinito printearemos los numeros del 
#-- del 1 al 10 que estaran guardados en memoria
	.eqv PRINT_INT 1
	.eqv PRINT_CHAR 11

	.data
	
	#-- Rservamos las posiciones de los datos
num:	.word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	

	.text
	#-- Leemos la posicion de memoria de los numero
	la s0, num
	
bucle:
	lw a0, 0(s0)	#-- Cargamos el dato en a0 para printearlo
	
	#-- Escribimos el numero por pantalla
	li a7, PRINT_INT
	ecall
	
	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Incrementamos el contador en 4 para la siguiente posicion de memoria
	addi s0, s0, 4
	
	b bucle