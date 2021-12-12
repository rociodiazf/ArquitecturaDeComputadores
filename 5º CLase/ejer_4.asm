#-- En este programa pediremos el usuario que meta 3 valores po rterminal y haremos 
#-- la operacion (f = (2*a - b) + c - 1) del ejercicio anterior. No hace falta
#-- almacenar las variables en memoria

	.eqv EXIT 10
	.eqv READ_INT 5
	.eqv PRINT_INT 1

	.text
	#-- Pedimos las variables al usuario
	
	li a7, READ_INT
	ecall 
	mv t0, a0	#-- Movemos el numero a un registro variable
	
	#-- Segundo numero
	li a7, READ_INT
	ecall 
	mv t1, a0
	
	#-- Segundo numero
	li a7, READ_INT
	ecall 
	mv t2, a0
	
	
	#-- Hacemos la operacion
	
	#-- 2*a
	add t0, t0, t0
	
	#-- (2*a-b)
	sub t3,t0,t1
	
	#-- (2*a-b)+c
	add t4, t2, t3
	
	#-- (2*a-b)+c-1
	addi a0, t4, -1		#--Solución guardada en a0 para su siguiente salida por terminal
	
	#-- Printeamos la solucion
	li a7, PRINT_INT
	ecall
	
	
	#-- Terminamos
	
	li a7, EXIT
	ecall


	