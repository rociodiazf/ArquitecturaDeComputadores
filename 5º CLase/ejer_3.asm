#-- Pedimos por terminal dos numeros enteros, hacemos la suma y devolvemos por pantalla el resultado.

#-- sevicio 5, a0 = el int
	.eqv EXIT 10
	.eqv READ_INT 5
	.eqv PRINT_INT 1
	
	#-- Posiciones de memoria
	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	
	.data
	#--Reservamos las variables
var:	.word 0	#--A
	.word 0	#--B
	.word 0	#--Solución
	

	.text
	
	#-- Pedimos los numeros
	li a7, READ_INT
	ecall
	
	#-- Leemos la direccion de memoria
	la s0, var	#-- S0 registro para las direccines de memoria
	
	sw a0, E1(s0)	#-- Guardamos el valor en memoria
	
	#-- Repetimos para el segundo numero
	li a7, READ_INT
	ecall
	 
	sw a0, E2(s0)	#-- Guardamos en memoria
	
	#-- Leemos de memoria los datos y los sacamos a registros temporales
	lw t1, E1(s0)
	lw t2, E2(s0)
	
	#-- Hacemos la operacion
	add a0, t1, t2
	
	#-- Laguardamos en memoria
	sw a0, E3(s0)

	
	#-- Imprimimos el resultado
	li a7, PRINT_INT
	ecall
	
	
