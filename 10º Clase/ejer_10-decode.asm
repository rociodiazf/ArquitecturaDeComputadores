#-----------------------------------------------------------------------------------------------------
#-- FUNCION DECODE
#-- Entradas: pcad, k. cadena y calve de cifrado
#-- Salida: pcad_cifrada
#-----------------------------------------------------------------------------------------------------
	.globl decode
	
#-------------------Punto de entrada
decode:
	
	.text
	li t0, '\n'
	mv t2, a0
bucle:
	lb t1, 0(a0)
	beq t0, t1, final	#-- Cuando llegue al salto de linea--> FIN
	sub t1, t1, a1	#-- Quitamos la clave de cofrado
	sb t1, 0(a0)	
	addi, a0, a0, 1	#-- Incrementamos el puntero
	b bucle
	
final:	
	mv a0, t2
	ret