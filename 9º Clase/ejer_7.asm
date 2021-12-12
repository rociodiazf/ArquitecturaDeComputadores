#-- EN este programa vamos a implementar un ejemplo que mediante una funcion externa nos diga si una plabara es 
#-- es un palindromo o no. Dicha funcion ira en una subrutina aparte de este programa

	.include "servicios.asm"
	
	.eqv MAX 32
	
	.data
	#-- Guardamos espacio en memoria para la cadena
cad_1: .space MAX
msg_1:	.string "Escribe a continuacion la cadena:"
msg_2: 	.string "Es un PALINDROMO!"
msg_3: 	.string "NO es un PALINDROMO!"

	.text
	

	#-- Pedimos una cadena al usuario
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	#-- Recogemso la cadena. Guardamos en memoria
	la a0, cad_1
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Llamamos a la funcion de palindromo
	la a0, cad_1
	jal palindromo
	
	#-- Recibimos un 1 si sí es un palindromo y un no en caso contrario
	li t0, 1	#--En caso de que no sea un palindromo
	
	beq a0, t0, es_palindromo
	#-- En caso negativo: NO ES UN PALINDRIOMO
	la a0, msg_3
	li a7, PRINT_STRING
	ecall
	
	#-- Terminamos
	b fin
	
es_palindromo:
	#-- En caso de que sea un palindromo
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
fin:
	#-- Terminamos
	li a7, EXIT
	ecall
	
	
	
	
