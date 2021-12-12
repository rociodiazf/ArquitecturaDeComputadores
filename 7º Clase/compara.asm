#-- Un programa que implementa un if. 
#-- Ejemplo de un salto condicional
#-- Si los registos t0 y t1 son iguales
#-- que se impima "IGUALES"
#-- sino que se imprima "DIFERENTES"

	.include "servicios.asm"
	
	.data
msg_iguales: 	.string "IGUALES"
msg_diferentes:	.string "DIFERENTES"

	.text 
	
	li t0, 10
	li t1, 20
	
	#-- Realizamos la comparacion de t0 y t1
	beq t0, t1, iguales
	
	#-- Son diferentes
	la a0, msg_diferentes
	li a7, PRINT_STRING
	ecall
	
	#--#-- Terminar
	#--li a7, EXIT
	#--ecall
	
	b fin

	
iguales: 	#-- por aqui se ira cuando sean IGUALES!!!
	la a0 ,msg_iguales
	li a7, PRINT_STRING
	ecall
fin:
	#-- UN UNICO PUNTO DE SALIDA 
	#-- UN PUNTO DE SALIDA "PARA UNIRLOS A TODOS"....
	#-- Terminar
	li a7, EXIT
	ecall