#-- Pedimos una frase al usuario, contamos los caracteres e imprimimos la frase y
#-- el numero de caracteres que la componen

	.include "servicios.asm"
	
	.data

	#-- Reservamso el espacio del string
cad2:	.space 1024
	
	.data
cad1:	.string "Escribe aqui tu frase:"
cad3:	.string "La longitud es:"

	.text
	#-- Pedimos la frase
	la a0, cad1
	li a7, PRINT_STRING
	ecall 
	
	li a1, 1024
	la a0, cad2
	li a7, READ_STRING
	ecall
	
	#-- Inicializamos el t1 a 0 como contador para la posicion de la letra y del contador final
	li t0, 0
	
	#-- Contamos los caracteres
bucle:
	lb t1, 0(a0)	#-- Sacamos la letra de la posicion
	li t3, '\n'
	beq t1, t3, fin_bucle
	addi t0, t0, 1	#-- Incrementamos el contador de la palabra
	addi a0, a0, 1	#-- Incrementamos la posicion
	b bucle
	
fin_bucle:
	
	#--Printeamos la solucion
	la a0, cad3
	li a7, PRINT_STRING
	ecall
	#-- el numero
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
fin_programa:
	#-- Terminamos el programa
	li a7, EXIT
	ecall 

	 