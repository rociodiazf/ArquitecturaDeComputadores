#-- En este programa vamos a pedir una cadena al usuario y la vamos a pasar a una funcion que va a convertr las 
#-- minusculas en mayusculas
 
	.include "servicios.asm"
	.eqv MAX 32

	.data
	
msg_1:	.string "Escribe aquí la cadena: "
msg_2:	.string "La cadena resultado es: "
cad_1:	.space MAX

	.text
	
	#-- Pedimos la cadena
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	#-- Recogemos la cadena
	la a0, cad_1
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Llamamos a la funcion
	jal upper
	
	#-- Printeamos el mensaje
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	
	#-- Mostramos el resultado
	la a0, cad_1
	li a7, PRINT_STRING
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall
	