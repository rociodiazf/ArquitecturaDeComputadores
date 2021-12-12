#-- En este programa vamos a pedir un entero al usuario y escribiremos los numero de 1 hasta n
#-- separados por comas.
	
	.include "servicios.asm"

	.data
	#-- Recogida del numero
n:	.string "Que numero?:"

	.text
	
	#-- Recogemos el numero n
	la a0, n
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	mv t0, a0	#-- Movemos de a0 a t0
	addi t0, t0, 1
	
	#-- Inicializamos t1 a 1
	li t1, 1
	
	#--Comenzamos un bucle finito hasta n
	
b:	
	#-- Printeamos el numero
	mv a0, t1
	li a7, PRINT_INT
	ecall
	
	#-- Printeamos una coma
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Incrementamos el contador
	addi t1, t1, 1
	
	#-- Comparamos ¿t1 < t0?
	
	blt t1, t0, b
	
	#--Cuando termine el bucle, terminamos el programa
	li a7, EXIT
	ecall
	
