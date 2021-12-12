#-- En este programa vamos a pedir un caracter al usuario y devolver su codigo ascii
	.include "servicios.asm"
	
	.data
msg_1:	.string "\nEscribe aqui el caracter: "
msg_2:	.string "\nSu código ascii es: "

	.text
	#-- Pedimos el caracter
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	li a7, READ_CHAR
	ecall
	
	mv t0, a0
	
	#-- Imprimimos el numero
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	mv a0, t0	#-- Movemos
	
	li a7, PRINT_INT
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall
	
	