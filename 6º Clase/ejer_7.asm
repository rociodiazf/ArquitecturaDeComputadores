#-- En este ejercicio tenemos que cifrar la palabra "Hola\n" con un cifrado de incrementacion de 
#-- 1 char en cada letra
	.include "servicios.asm"

	#-- Posiciones de memoria del string
	.eqv P1 0
	.eqv P2 1
	.eqv P3 2
	.eqv P4 3
	
	.data
	
hola:	.string "Hola\n"

	.text
	
	#-- Imprimimos el mensaje original
	la a0, hola
	li a7, PRINT_STRING
	ecall
	
	#-- Ciframos la letra H
	lb t0, P1(a0)	#-- almacenamos la letra
	addi t0, t0, 1	#-- Incrementammos 1
	sb t0, P1(a0)
	
	#-- Ciframos la letra o
	lb t0, P2(a0)
	addi t0, t0, 1
	sb t0, P2(a0)
	
	#-- Ciframos la letra l
	lb t0, P3(a0)
	addi t0, t0, 1
	sb t0, P3(a0)
	
	#--Ciframos la letra a
	lb t0, P4(a0)
	addi t0, t0, 1
	sb t0, P4(a0)
	
	#-- Imprimimos el cifrado
	la a0, hola
	li a7, PRINT_STRING
	ecall

	
	#-- Terminamos
	li a7, EXIT
	ecall
	
	