#-- En este programa vamos a pedir una cadena y la llevamos a ua funion externa y la ciframos en una funcion externa

	.include "servicios.asm"
	.eqv MAX 32
	.eqv K 5
	
	.data
msg_1:	.string "Escribe la cadena aqui:"
msg_2:	.string "La cadena cifrada:"
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
	
	#-- Imprimimos la cadena resultado
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	#-- Llamamos a la funcion
	#-- Le pasamos de entradas la cadena y el numero K de cifrado que viene dado por este programa
	li a1, K	#-- K = 5
	la a0, cad_1
	jal cifrar
	

	
	#-- Imprimimos el resultado que viene en a0
	li a7, PRINT_STRING
	ecall
	
fin:	#-- Terminamos
	li a7, EXIT
	ecall
	
	