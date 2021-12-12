#--------------------------------------------------------------------------------------------------
#-- FUNCION OPERAR
#--------------------------------------------------------------------------------------------------
#-- Entrada: Numero a0
#-- Salida: NADA
#--------------------------------------------------------------------------------------------------
	.globl operar

#-----------Punto de entrada
operar:
	.text
	
	#-- Guardamos en la pila ra
	#-- Creamos la pila
	addi sp, sp, -16
	
	#-- Guardamos ra
	sw ra, 12(sp)

	#-- Metemos a0 
	sw a0, 8(sp)
	
	#-- Llamamos a print_int
	jal print_int
	
	#-- Sacamos la a0
	lw a0, 8(sp)	
	
	#-- Llamamos a mult2
	jal mult2
	
	#-- Imprimimos el nuemro multiplicado usando la funcin de print_int
	#-- La a0 nos sirve por que sabemos que mult2 nos devuelve el nuemro multiplicado directamente
	jal print_int

	#-- Sacamos la a0 para volver a imprimirlo
	lw a0, 8(sp)
	
	jal print_int
	
	#-- Sacamos ra de la pila
	lw ra, 12(sp)
	
	#-- Liberamos la pila
	addi sp, sp, 16
	
	#-- Devolvemos la conexion
	ret
	
	