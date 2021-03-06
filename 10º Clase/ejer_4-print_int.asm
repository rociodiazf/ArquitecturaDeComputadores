#-----------------------------------------
#-- Subrutina: Print_int(num)
#-- ENTRADA:
#--    a0:  Imprimir el numero entero
#-- SALIDA: Ningua
#-----------------------------------------

	#-- Punto de entrada
	.globl print_int
	
	.include "servicios.asm"
	
	.data

msg:	.string "---> "	
			
	.text
print_int:
	
	#-- El parametro a0 lo necesitamos para imprimir la 
	#-- la cadena "--->"
	#-- Para no perderlo, hay que guardarlo en la pila
	
	#-- Crear pila
	addi sp, sp, -8
	
	#-- Guardar a0 en la pila
	sw a0, 0(sp)
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Recuperar a0 de la pila
	lw a0, 0(sp)
	
	#-- Imprimir el numero entero
	li a7, PRINT_INT
	ecall
	
	#-- Recueprar pila
	addi sp, sp, 8
	ret
