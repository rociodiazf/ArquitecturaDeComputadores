#-- En este programa vamos a pedir al usuario una cadena de caracteres y la vamos a escribir por pantalla
#-- Reservamos en memoria 1024 bytes

	.include "servicios.asm"
	
	#-- Tamañ que reservamos en memoria
	.eqv MAX 1024

	.data
	
msg:	.string "Escribe aqui tu frase:"
msg2: 	.string "Tu frase es:"

cad1:	.space MAX
	
	.text 
	#-- Sacamos la frase por terminal
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#--Guardamos la frase
	la a0, cad1
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Imprimimos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Enseñamos un mensaje
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Printeamos la frase
	la a0, cad1
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar 
	li a7, EXIT
	ecall
	
#-- En la frase "Busca el caracter X" La X se guarda en el byte 16.