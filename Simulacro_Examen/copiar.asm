#--------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------
#-- Parámetros de entrada:
#-- a0: cadena de origen; a1: la direccion a depositar la cadena copiada
#--------------------------------------------------------------------------------------------------------------
#--Parámetros de salida: Ninguno
#--------------------------------------------------------------------------------------------------------------

	.globl copiar

#-------------------Punto de entrada
copiar:	
	.text
	
	#-- Copiar la cadena de a0 a a1
	mv t0, a0
	mv t1, a1
bucle:	
	lb t2, 0(t0)	#-- Lo cogemos de la cadena principal
	#-- COmprobamos que no sea un \0 
	beqz t2, fin_cadena
	sb t2, 0(t1)	#-- Lo copiamos en la nueva direccion
	
	#-- Actalizamos punteros
	addi t0, t0, 1
	addi t1, t1, 1
	b bucle
	
fin_cadena:
	
	#-- Terminamos
	ret