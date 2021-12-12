#-- Ejemplo de llamada al sistema
#-- Servicio EXIT: Terminar

	#--codigo del servicio exit
	.eqv EXIT 10
	
	#-- Imprimir el numero entero
	.eqv PRINT_INT 1
	

	.text
#-- Punto de entrada

	#-- Servicio de  PRINT_INT
	li a7, PRINT_INT
	li a0, 290
	ecall
	
	#-- Terminar. Punto de salida
	li a7, EXIT
	ecall
	
	
	