#---------------------------------------------------------------------------------------------
#-- FUNCION LINEA
#-- Entradas: a0, a1 como char y anchura
#---------------------------------------------------------------------------------------------
	.globl linea
	
	.include "servicios.asm"
#---------------------Punro de entrada
linea:	
	.text
	li t0, 0	#-- inicilizamos un contador
bucle:	
	beq t0, a1, fin_bucle	#-- si el contador = anchura
	#-- Printeamos un char
	li a7, PRINT_CHAR
	ecall	
	#-- Incrementamos el contador
	addi t0, t0, 1
	b bucle
fin_bucle:
	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Devolvemos la conexion
	ret
	
			
	