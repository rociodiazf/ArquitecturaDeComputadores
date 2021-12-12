#--------------------------------------------------------------------------------------------------
#-- SUBRUTINA PRINT_REVERSE
#-- ENTRADA--> a0: cadena de caracteres
#-- SALIDA --> Nada
#--------------------------------------------------------------------------------------------------

	.globl print_reverse
	
	.include "servicios.asm"
	
	.data
msg: 	.string "La cadena al revés es: "

	.text
	
#---------------Punto de entrada
print_reverse:
	li t0, '\n'
	lb t1, 0(a0)
	bne t1, t0, no_final
	
	b si_fin
	
no_final:
	addi sp, sp, -16
	sw ra, 12(sp)
	sw t1, 8(sp)
	addi a0, a0, 1
	
	jal print_reverse
	#-- Sacamos ra
	lw ra 12(sp)
	#-- Printeamos el char
	lw a0, 8(sp)
	li a7, PRINT_CHAR
	ecall
	#-- Cerramos la pila 
	addi sp, sp, 16
	
	
si_fin:
	ret