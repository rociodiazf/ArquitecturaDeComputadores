#-- En este programa vamos a crear un programa que pida al usuario, una altura, un ancho y
#-- un tipo de caracter
	.include "servicios.asm"
	.data
msg_1:	.string "Tipo de caracter: "
msg_2:	.string "Anchura: "
msg_3:	.string "Altura: "

	.text
	#-- Pedimos el caracter
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	#-- Recogemos el caracter y lo guardamos en s0
	li a7, READ_CHAR
	ecall
	mv s0, a0
	
	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Pedimos la anchura
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	#-- Recogemos la altura y la guardamos en s1
	li a7, READ_INT
	ecall
	
	#-- Guardamos la altura en lugar seguro
	mv s1, a0
	
	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Pedimos la altura
	la a0, msg_3
	li a7, PRINT_STRING
	ecall
	
	#-- Recogemos la anchura y la ponemos en a2
	li a7, READ_INT
	ecall
	mv a2, a0

	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Recolocamos en a0, a1 lo que esta en s0, s1 respectivamente
	mv a0, s0
	mv a1,s1
	
	#-- Llamamos a la funcion box
	jal box
	
	#-- Terminamos
	li a7, EXIT
	ecall
	
	