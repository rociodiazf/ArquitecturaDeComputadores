#-- Pedimos por terminal dos numeros enteros, hacemos la suma y devolvemos por pantalla el resultado.

#-- sevicio 5, a0 = el int
	.eqv EXIT 10
	.eqv READ_INT 5
	.eqv PRINT_INT 1

	.text
	
	#-- Pedimos los numeros
	li a7, READ_INT
	ecall
	#-- Movemos el numero leido a un registro ABI
	mv t0, a0
	
	#-- Repetimos para el segundo numero
	li a7, READ_INT
	ecall
	mv t1, a0
	
	#-- Hacemos la operación
	add t2, t0, t1
	
	#-- Imprimimos el resultado
	mv a0, t2
	li a7, PRINT_INT
	ecall
	
	