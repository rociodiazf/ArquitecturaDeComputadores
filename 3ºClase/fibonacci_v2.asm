#-- El resultado se deja en el registros 6
#-- Usamos el registro x5 como contador: 1,2,3,4,5,6...
#-- Utilizaremos variables en menoria e iremos dejando el resultado de la serie en nuevas variables.

	.data 
	#-- inicializamos las dos primeras.
fib0:	.word 0
fib1:	.word 1

	.text
	
	#-- cargamos la direccion de la primera variable:
	la x1, fib0
	
	#-- leemos el contenido de:
	lw x5, 0(x1)
	lw x6, 4(x1)

	#-- Inicializamos los registros x6, x7 a 0
	addi x7, x0, 0
	
	#-- Bucle principal
bucle:

	#-- dejamos el resultado en x7
	add x7, x6, x5
	
	#-- Pasamos el valor de x7 a x6 y de x6 a x5
	addi x5, x6, 0
	addi x6, x7, 0
	
	#-- cargamos el resultado a una variable en memoria:
	sw x7, 8(x1)
	
	#-- Incrementar el puntero
	addi x1, x1, 4
	

	
	#-- Repetir el bucle
	b bucle
