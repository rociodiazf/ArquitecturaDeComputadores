#-- En este ejercicio vamos a pedir una cadena de nuemros, un string y se lo vamos a pasar a una subrutina
#-- que printeará el numero resultante imprimiendo un int.
#-- Para ello y no perder el tiempo implementaremos el ejercicio 5.

	
	.include "servicios.asm"
	
	.eqv MAX 16
	
	.data

cad:	.space MAX
msg_1:	.string "\nEscribe una cadena de caracteres de MÁXIMO 10 caracteres:"

	.text
	#-- Pedimos el string
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	#-- Recogemos la cadena
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Lamamos a la subrutina
	jal atoi
	
	#-- Terminamos
	li a7, EXIT
	ecall