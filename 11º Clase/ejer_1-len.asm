#--------------------------------------------------------------------------------------------------
#-- SUBRUTINA LEN
#-- Entrada: una cadena
#-- Salida: su longitud
#--------------------------------------------------------------------------------------------------

	.globl len
	
#----------------Punto de entrada
	
	
len:	
	li t0, '\n'
	lb t1, 0(a0)
	bne t1, t0, len_recuento
	
	li a0, 0	#-- Comenzamos a deshacer la recursividad
	
	b fin_cad
	
len_recuento:	
	#-- Creamos la pila y metemos ra
	addi sp, sp, -16
	sw ra, 12(sp)
	#-- Incrementamso el puntero 
	addi a0, a0, 1
	#-- Reitero
	jal len
	#-- Sacamos ra
	lw ra, 12 (sp)
	#-- Aumentamos el contador
	addi a0, a0, 1
	#-- Liberamos la pila
	addi sp, sp, 16
	
	
fin_cad:
	ret