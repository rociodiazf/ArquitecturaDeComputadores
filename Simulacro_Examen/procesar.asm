#--------------------------------------------------------------------------------------------------------------
#-- En esta subrutina llamaremos a la funcion copiar y lo recibido lo pasaremos a la funcion upper
#--------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------
#-- Parámetros de entrada:
#-- a0: cadena de origen; a1: la direccion a depositar la cadena copiada
#--------------------------------------------------------------------------------------------------------------
#--Parámetros de salida: Ninguno
#--------------------------------------------------------------------------------------------------------------

	.globl procesar

#-------------------Punto de entrada
procesar:	
	.text
	#-- Guardamos la direccion ra en la pila 
	addi sp, sp, -8
	sw ra, 4(sp)
	
	#-- Llamamos a la funcion copiar
	jal copiar
	
	#-- Llamamos  a la subrituna
	jal upper
	
	#-- Terminamos 
	lw ra 4(sp)
	addi sp, sp, 8
	ret