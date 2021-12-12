#-- Programa en el que pedimos al usuario dos numeros y le devolvemos si esos dos numeros 
#-- son iguales o no.

	.include "servicios.asm"
	
	.data
	
msg_dif:	.string "Los numeros que has escrito son DIFERENTES"
msg_igual:	.string "Los numeros que has escrito son IGUALES"

	.text
	#-- Pedimos los numeros
	
	#-- Numero 1
	li a7, READ_INT
	ecall
	#-- Guardamos el resultado en un registro temporal
	mv t1, a0
	
	#-- Numero 2
	li a7, READ_INT
	ecall
	#--Lo guardamos en t1
	mv t2, a0
	
	bne t1, t2, diferentes
	
	#-- CASO: IGUALES
	la a0, msg_igual
	li a7, PRINT_STRING
	ecall	

	b final_programa
	
diferentes:

	#-- CASO: DIFERENTES
	la a0, msg_dif
	li a7, PRINT_STRING
	ecall

final_programa:
	#-- Terminamos.  UNICA SALIDA. BUENAS PRACTICAS DE PROGRAMACION
	li a7, EXIT
	ecall
	
	