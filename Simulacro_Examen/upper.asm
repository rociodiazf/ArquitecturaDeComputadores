#--------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------
#-- Parámetros de entrada:
#-- a0: cadena para cambiar a MAYUS
#--------------------------------------------------------------------------------------------------------------
#--Parámetros de salida: Ninguno
#--------------------------------------------------------------------------------------------------------------

	.eqv "servicios.asm"
	.globl upper
	.eqv MAYUS -32

#-------------------Punto de entrada
upper:	
	.text
	li t0, '\n'	#-- Para sabber cuando parar
	mv t1, a0	#-- Para no cambiar el puntero de salida de la cadena
	
bucle:
	lb t2, 0(t1)	#-- Sacamos el caracter
	#-- Comprobamos que no sea un finald e cadena
	beq t2, t0, fin_cadena
	addi t2, t2, MAYUS	#-- Transformamos la letra a MAYUS
	sb t2, 0(t1)	#--Guardamos el caracter
	addi t1, t1, 1
	
	b bucle
	
fin_cadena:
	
	#-- Terminamos
	mv a0, t1
	ret
	