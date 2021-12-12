#-- Proframa para imprimir en la consola
#-- los numeros enteros del 1 al 10

	.include "servicios.asm"
	
	#-- Numero maximo de la cuenta
	.eqv MAX 10
	
	.text
	
	li t0, 0
	
bucle:
	#-- Incrementar contador
	addi t0, t0, 1
	
	#--Imprimir el valor del contador
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#-- Imprime un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- ¿Es t0 < t1?
	li t1, MAX
	blt t0, t1, bucle
	#-- t0 == 10 (MAXIMO)
	
	
	#-- PUNTO DE SALIDA
	li a7, EXIT
	ecall
