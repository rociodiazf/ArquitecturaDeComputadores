#-- En este programa vamos a pedir una  cadena al usuario. Llamará a la funcion procesar y funalmente 
#-- imprimirá la cadena que salga del procedimiento y la original. 

	.include "servicios.asm"
	.eqv MAX 32

	.data 
msg_1:	.string "Escribe aqui una cadena de caracteres: "
cad_1:	.space MAX
cad_2:	.space MAX
msg_2:	.string "Cadena Procesada: "
msg_3:	.string "Cadena Sin Procesar: "

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
	
	
	#-- Antes le calculamos la direccion de la copia. 
	la a1, cad_2
	
	jal procesar
	
	#-- Pintamos la cadena de llegada
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	la a0, cad_1
	li a7, PRINT_STRING
	ecall
	
	#-- Printeamos la cadena original
	la a0, msg_3
	li a7, PRINT_STRING
	ecall
	
	la a0, cad_2
	li a7, PRINT_STRING
	ecall
	
	#--  Terminamos
	li a7, EXIT
	ecall