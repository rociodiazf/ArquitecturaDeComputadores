#--  cadenas definidas en tiempo de ejecucion
#-- limitamos

	.eqv PRINT_STRING 4
	.eqv EXIT 10
	.eqv READ_STRING 8
	#-- Tamaño maximo del nombre
	.eqv MAX 10

	.data
	
nombre:	.space MAX	#-- Tenemos que establecer a priori una estimacion de lo que va a ocupar el nombre.
cad1:	.string "Nombre?:"
#-- Lo ponemos en este orden para var, una vez lo hemos ensamblado, el numero de ceros que nos han reservado


	.text #-- segmento de codigo
	
	la a0, cad1
	
	li a7, PRINT_STRING
	ecall
	
	#-- Pedimos al usuario la cadena. Servicio numero 8
	la a0, nombre
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	
	
	#-- Terminar
	li a7, EXIT
	ecall
	
	
