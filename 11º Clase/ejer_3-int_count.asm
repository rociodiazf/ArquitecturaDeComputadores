#-- En esta funcion vamos a contar, mediante RECUSIVIDAD, el numero de caracteres de tipo del 2º parametro
#-- en la cadena ofrecida en el 1º parametro
#----------------------------------------------------------------------------------------------------------
#-- FUNCION CHAR_COUNT
#----------------------------------------------------------------------------------------------------------
#-- Entrada-> a0: puntero de la cadena; a1: el char que tenemos que contar
#-- Salida -> a0: el numero de caracteres del tipo a1
#----------------------------------------------------------------------------------------------------------

	.globl count_char
	
#---------------------Punto de entrada
count_char:
	.text
	
	#-- Lo que tenemos que hacer es buscar el ultimo char para despues ir comparando hacia atras
	
	lb t0, 0(a0)
	li t1, '\n'
	bne t0, t1, count_char_rec	#-- Si son diferentes seguimos haciendo recusividad
	li a0, 0	#-- inicializamso el contador final
	b fin	#-- Salto directo a ret
	
count_char_rec:	#-- En caso de que el caracter sea distinto de 0
	#-- Creamos una pila (ra, t0, a1)
	addi sp, sp, -12
	#-- Metemos ra
	sw ra, 0(sp)
	#-- Metemos t0
	sw t0, 4(sp)
	#-- Metemos a1
	sw a1, 8(sp)
	
	#-- Actualizamos el puntero
	addi a0, a0, 1
	
	#-- Ya estamos listos para llamar a la recursividad
	jal count_char
	
	#-- EN caso de que ya estemos saliendo sacamos las cosas de la pila
	lw ra, 0(sp)	#-- Sacamso la proxima direccion de retorno
	lw t0, 4(sp)	#-- Sacamos el caracter correspondiente a comparar
	lw a1, 8(sp)	#-- Sacamos el caracter comparador
	#-- Davolvemos la pila
	addi sp, sp, 12
	
	bne t0, a1, fin	#-- Si son diferentes
	#-- si son iguales
	addi a0, a0, 1	#-- Sumamos 1 a a0

fin:	#-- Vamos saliendo	
	ret	

 
		
	