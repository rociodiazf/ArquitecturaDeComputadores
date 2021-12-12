#-- En este ejercicio vamos a pedir al usuario un numero comprendido entre 33 y 126 
#-- y le devolveremos su letra en ascii
	.include "servicios.asm"
	
	.data
	
msg_1:	.string "Escribe aqui el numero:"
info:	.string "*Recuerda que debe ser un numero comprendido entre el 33 y el 126*\n"
msg_2:	.string "La letra equivalente es:"

	.text 
	
	#-- Pedimos el numero
	la a0, info
	li a7, PRINT_STRING
	ecall
	la a0, msg_1
	li a7, PRINT_STRING
	ecall

	#-- Recogemos un entero
	li a7, READ_INT
	ecall
	#-- Lo movemos a otro registro
	mv t0, a0
	
	#-- Hacemos la conversion (de entero a ascii)
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	#-- La letra
	mv a0, t0
	li a7, PRINT_CHAR
	ecall
	
	#-- Que no se nos olvide Terminar
	li a7, EXIT
	ecall
	