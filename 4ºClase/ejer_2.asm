#-- Ejercicio 2: en el cual tenemos que observar el siguiente codigo y ver como se implementan las 
#-- variables .eqv
	#-- Definimos los siguientes numeros
	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	
	.data
tabla:	.word 0xBEBECAFE, 0xFACEB00C, 0x00FABADA, 0xCACABACA
	
	.text
	
	#-- Cargamos la direccion del primer dato en x5
	la x5, tabla	

	#-- Cargamos los datos de x5 en 
	lw x10, E1(x5)
	lw x11, E2(x5)
	lw x12, E3(x5)
	lw x13, E4(x5)
	
	#-- Terminar
	li a7, 10
	ecall