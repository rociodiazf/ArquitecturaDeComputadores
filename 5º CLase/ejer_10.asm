#-- Escribiremos un programa en el que con un bucle infinito printearemos los numeros del 
#-- del 1 al 10 que estaran guardados en memoria
	.eqv PRINT_INT 1
	.eqv PRINT_CHAR 11
	.eqv PRINT_HEX 34

	.data
	
	#-- Rservamos las posiciones de los datos
word:	.word 10,11,12,13,14,15,127,255,0x00FABADA, 0xCAFEBACA
	

	.text
	#-- Leemos la posicion de memoria de los numero
	la s0, word
	
bucle:
	lw a0, 0(s0)	#-- Cargamos el dato en a0 para printearlo
	
	#-- Escribimos el numero por pantalla
	li a7, PRINT_HEX
	ecall
	
	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Incrementamos el contador en 4 para la siguiente posicion de memoria
	addi s0, s0, 4
	
	b bucle