#-- En este ejercicio vamos a pedir una cadena al usuario y la vamos a pasar a una subrutina recursiva
#-- que la va a escribir al revés
	.include "servicios.asm"
	
	.eqv MAX 1024
	
	.data
msg_1:	.string "Escribe aqui una cadena: "
cad:	.space MAX

	.text
	
	
	#-- Pedimos la cadena
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	#-- recogemos la cadena
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Llamamos a la funcion pritn_reverse
	jal print_reverse
	
	#-- Terminamos
	li a7, EXIT
	ecall