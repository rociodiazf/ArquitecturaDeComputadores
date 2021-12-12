#-- Ejercicio 3. 
#-- variables .eqv
	#-- Definimos los siguientes numeros
	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	#-- Incremento para los datos.
	.eqv INC 4
	
	.data
tabla:	.word 2, 3, 4, 5
	
	.text
	
	#-- Cargamos la direccion del primer dato en x5
	la x5, tabla	

	#-- Cargamos los datos de x5 en 
	lw x10, E1(x5)
	lw x11, E2(x5)
	lw x12, E3(x5)
	lw x13, E4(x5)
	
	#-- Modificamos los valores 
	addi x10, x10, INC
	addi x11, x11, INC
	addi x12, x12, INC
	addi x13, x13, INC
	
	#-- Los volvemos a almacenar en memoria
	sw x10, E1(x5)
	sw x11, E2(x5)
	sw x12, E3(x5)
	sw x13, E4(x5)
	
	#-- Terminar
	li a7, 10
	ecall