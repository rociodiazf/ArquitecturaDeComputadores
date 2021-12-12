#-- Escribimos un programa en el que leemos un caracter, lo incrementamos una unidad y lo 
#-- escrbimos por pantalla. Finalmente escribe un salto de linea.

#-- Como no nos dicen nada de guardar en memoria solo vamos a usar registros.

	.eqv PRINT_CHAR 11
	.eqv READ_CHAR 12
	.eqv EXIT 10
	
	.text
	
	#-- Leemos el caracter
	li a7, READ_CHAR
	ecall
	
	#--Incrementamos una unidad
	mv t0, a0	#-- Lo movemos a un registro ABI temporal
	addi t0, t0, 1
	
	#-- Imprimimos por terminal
	mv a0, t0
	li a7, PRINT_CHAR
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall
	