#-----------------------------------------------------------------------------------------------------
#-- FUNCION CONTACT
#-- Entrada: a0 (cadena), a1(cadena)
#-- Salida: Ninguna
#-----------------------------------------------------------------------------------------------------
	.globl concat
	
#-------------Punto de entrada
concat:

	.text
	
	#-- Primero bucamos el final de la cadena 1 
	#-- Para saber donde empezar a copiar la cadena 2
	li t0, '\n'	#-- Detectar final de cadena
	
	
paso_1:
	lb t1, 0(a0)
	beq t1, t0, paso_2
	addi a0, a0, 1	#-- Apuntamos al siguiente bit
	b paso_1
	
paso_2:	
	#-- Comenzamos a copiar la cadena 2 a continuacion de la cadena 1
	#-- Cuidado: debemos copiar hasta el simbolo \n inclusive
	
	lb t1, 0(a1)
	beqz t1, fin
	sb t1, 0(a0)
	#-- Incrementamos punteros
	addi a0, a0, 1
	addi a1, a1, 1
	
	b paso_2
	
fin:	
	ret
	
	