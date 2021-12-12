#-- Programa principal
#-- Tenemos que crear una subrutina dentro de la subrutina1 para que escriba por pantalla lo que nos dice 
#-- el enunciado.

	.include "servicios.asm"
	
	.data
msg:	.string "Programa principal\n"
	
	.text
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Llamar a la funcion tarea1
	jal tarea1
	
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall