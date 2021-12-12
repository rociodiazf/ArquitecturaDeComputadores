#-- En este programa vamos a pedir al usuario una cadena de caracteres y vamos a pasarla a una funcion en otro fichero
#-- que la cuente. Como parametros pasaremos la direccion de la cadena  y nos devolverá un int con la longitud
	.eqv MAX 32	#-- Maximo de la cadena
	
	.include "servicios.asm"
	
	.data
	
cad_1:	.space MAX
msg_1:	.string "Escribe una frase o palabra:"
msg_2:	.string "La longitud es:"

	.text
	
	#-- Pedimos la palabra o frase
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	#-- Leemos la frase y la guardamos en memoria
	la a0, cad_1
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Pasamos el control a la subrutina
	la a0, cad_1	#--  Le pasamos la direccion de la cadena
	
	jal len
	
	#-- Printeamos el resultado que nos llega en a0
	mv s0, a0	#-- Lo cambiamos de lugar para usar a0 para el mensaje
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	mv a0, s0
	li a7, PRINT_INT
	ecall
	
	
	#-- Terminamos
	li a7, EXIT
	ecall
	