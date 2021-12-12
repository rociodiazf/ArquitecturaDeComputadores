#-----------------------------------------
# Subrutina print_vect(x,y)
#--
#--  Imprimir el vector (x,y)
#--
#-- ENTRADA:
#     a0: Coordenada x
#     a1: Coordenada y
#-- SALIDA: Ninguna
#--------------------------------------------

	#-- Punto de entrada
	.globl print_vec
	
	.include "servicios.asm"
	
	.data
p_1:	.string "("
coma:	.string ","
p_2:	.string ")"
			
	.text
	
print_vec:	
	
	addi sp, sp, -16
	
	#-- Necesitamos guardar a0 en la pila
	sw a0, 0(sp)
	
	la a0, p_1
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir coordenada x
	lw a0, 0(sp)
	li a7, PRINT_INT
	ecall
	
	#-- Imprimir la coma
	la a0, coma
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir coordenada y
	mv a0, a1
	li a7, PRINT_INT
	ecall
	
	la a0, p_2
	li a7, PRINT_STRING
	ecall
	
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Liberamos a la pila
	addi sp, sp, 16
	
	#-- Devolvemos la conexion
	ret