#-- Escribir la serie de Fibonacci N veces. N = 10. Es una constante.
	
	.include "servicios.asm"
	
	.eqv N 10	#-- N
	
	.data 
	#-- inicializamos las dos primeras.
fib0:	.word 0
fib1:	.word 1

cad1: 	.string "0,1,"

	.text
	
	#-- cargamos la direccion de la primera variable:
	la t0, fib0
	
	#-- leemos el contenido de:
	lw t1, 0(t0)
	lw t2, 4(t0)
	
	#-- Los dos primeros numeros los pintamos directamente
	la a0, cad1
	li a7, PRINT_STRING
	ecall
	
	#-- Inicializamos t0 como nuestro contador
	li t0, 0
	
bucle:	#-- Bucle principal Printeamos N-1 numeros

	#-- dejamos el resultado en t3
	add t3, t2, t1	
	
	#-- Pasamos el valor de t1 a t2 y de t2 a t3
	mv t1, t2
	mv t2, t3
	
	#-- Printeamos el numero
	mv a0, t3
	li a7, PRINT_INT
	ecall
	
	#-- Printeamos la coma 
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Contador t0
	addi t0, t0, 1
	
	#-- Inicializamos t4 como N - 1
	li t4, N
	addi t4, t4, -1
	
#-- Repetir el bucle
	blt t0, t4, bucle
	
	#-- Cuando salga del bucle terminamos
	li a7, EXIT
	ecall