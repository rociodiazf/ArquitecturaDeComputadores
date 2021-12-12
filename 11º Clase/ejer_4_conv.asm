#--------------------------------------------------------------------------------
#-- FUNNCION CONV
#--------------------------------------------------------------------------------
#-- ENTRADA--> a0: pcad
#-- SALIDA --> a0: num, a1: indice
#--------------------------------------------------------------------------------

	.globl conv

#-----------------Punto de entrada 
conv:	
	.text
	#-- Comenzamos la recursividad
	lb t0, 0(a0)
	li t1, '\n'
	bne t0,t1, conv_rec	#-- Si no es igual seguimos con la recursividad
	#-- Si es diferente es que hemos llegado al final
	li a1, 1
	li a0, 0
	
	b fin
conv_rec:
	#-- Creamos una pila para guardar el numero 
	addi sp, sp, -8
	sw ra, 0(sp)	#-- Guardamos el puntero de salida
	sw t0, 4(sp)	#-- Guardamos t0
	#-- ACtualizamos el puntero
	addi a0, a0, 1
	#-- Llamamos a la recursividad
	jal conv
	#-- Cuando salimos de la recursividad
	lw ra, 0(sp)	#-- Sacamos el puntero
	lw t0, 4(sp)	#-- Sacamos el numero 
	addi sp, sp, 8	#-- Cerramos la pila
	#-- Convertimos el char en int
	addi t0, t0, -48
	mul t0, t0, a1	#-- Multiplicamos 
	add a0, a0, t0	#-- Lo juntamos a lo otro
	li t2, 10
	mul a1, a1, t2
	
fin:	
	ret
	
