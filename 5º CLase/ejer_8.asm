#-- Escribrir la serie de Fibonacci utilizando comas, NO imprimir los dos primeros.
#-- El resultado se deja en el registros 6
#-- Usamos el registro x5 como contador: 1,2,3,4,5,6...
#-- Utilizaremos variables en menoria e iremos dejando el resultado de la serie en nuevas variables.
	
	.eqv PRINT_INT 1
	.eqv PRINT_CHAR 11

	.data 
	#-- inicializamos las dos primeras.
fib0:	.word 0
fib1:	.word 1

	.text
	
	#-- cargamos la direccion de la primera variable:
	la t0, fib0
	
	#-- leemos el contenido de:
	lw t1, 0(t0)
	lw t2, 4(t0)
	
	
bucle:	#-- Bucle principal

	#-- dejamos el resultado en x7
	add t3, t2, t1	
	
	#-- Pasamos el valor de x7 a x6 y de x6 a x5
	mv t1, t2
	mv t2, t3
	
	#-- cargamos el resultado a una variable en memoria:
	sw t3, 8(t0)
	
	#-- Incrementar el puntero
	addi t0, t0, 4
	
	#-- Printeamos el numero
	mv a0, t3
	li a7, PRINT_INT
	ecall
	
	#-- Printeamos la coma 
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Repetir el bucle
	b bucle
	
