#-- En esta funcion vamos a recibir una cadena y un numero entero y tenemos que cifrar la cadena. De tal manera
#-- que modificamos el ascii tantas posiciones como determine K

	#-------------------------------------------------------------------------------
	#-- FUNCION CIFRAR
	#-------------------------------------------------------------------------------
	
	.globl cifrar

cifrar:
	.include "servicios.asm"
	
	.text
	addi t0, a0, 0	#-- Cambiamos de registro para trabajar con registros temporales
	mv t1, a1	#-- ''
	li t3, '\n'
	
bucle:
	lb t2, 0(t0)	#-- Sacamos el bit
	beq t2, t3, final_cifrado	#-- Si es un salto de linea nos vamos
	add t2, t2, a1	#-- Sumamos K
	sb t2, 0(t0)	#-- Almacenamos el bit cifrado
	addi t0, t0, 1	#-- Sumamos 1 al puntero

	b bucle
	
final_cifrado:
	ret
	
	#-------------------------------------------------------------------------------------
	#--FINAL DE FUNCION
	#-------------------------------------------------------------------------------------
	
	