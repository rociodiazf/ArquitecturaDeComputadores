#--------------------------------------------------------------------------------------------------
#-- FUNCION MULT2
#--------------------------------------------------------------------------------------------------
#-- Entrada: Numero a0
#-- Salida: Nuemro multiplicado
#--------------------------------------------------------------------------------------------------
#-- Importante: como es una funcion hoja no hace falta que guardemos el valor de ra. Tampoco
#-- tenemos que imprimir la flecha por lo que el programa quedaría de la siguiente manera:

	.globl mult2
	
	
#-- Punto de entrada
mult2:	
	.text
	#-- Multiplicamos el nuemro por dos
	li t0, 2
	mul a0, a0, t0
	
	#-- Retomamos la conexion a print_int
	ret
	