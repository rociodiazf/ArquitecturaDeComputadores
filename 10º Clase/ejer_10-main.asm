#-- En este programa vamos a  pedir al usuario una cadena de caracteres y una clave de cifrado comprendida
#-- entre 0-255
	.include "servicios.asm"
	.eqv MAX 1024
	
	.data
msg_1:	.string "Escribe aqui la cadena: "
msg_2:	.string "Escribe una clave de cifrado (0-255): "
cad:	.space MAX
msg_3:	.string "Cadena sin cifrar: "
msg_4:	.string "Cadena cifrada: "
msg_5:	.string "Cadena descifrada: "

	.text
	#-- Pedimos la cadena
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	#-- Leemos la cadena
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Pedimos la clave de cofrado
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	#-- Leemos la clave de cifrado
	li a7, READ_INT
	ecall
	#-- Lo movemos a s1
	mv s1, a0
	
	#-- Imprimimos la cadena sin cifrar
	la a0, msg_3
	li a7, PRINT_STRING
	ecall
	la a0, cad 
	li a7, PRINT_STRING
	ecall
	
	#-- Llamamos a la funcion code
	la a0, cad
	mv a1, s1
	jal code
	
	#-- Imprimimos la cadena cifrada
	la a0, msg_4
	li a7, PRINT_STRING
	ecall
	
	la a0, cad
	li a7, PRINT_STRING
	ecall
	
	#-- Llamamos a decode
	la a0, cad
	mv a1, s1
	jal decode
	
	#-- Imprimimos la cadena decodificada
	la a0, msg_5
	li a7, PRINT_STRING
	ecall
	
	la a0, cad
	li a7, PRINT_STRING
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall