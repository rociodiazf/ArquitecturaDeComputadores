#-----------------------------------------------------------------------------------------------------
#-- FUNCION CODE
#-- Entradas: pcad, k. cadena y calve de cifrado
#-- Salida: pcad_cifrada
#-----------------------------------------------------------------------------------------------------
	.globl code
	
#-----------Punto de entrada
code:
	
	.text
	li t0, '\n'
	mv t2, a0
bucle:
	lb t1, 0(a0)
	beq t0, t1, final	#-- Cuando llegue al salto de linea--> FIN
	add t1, t1, a1	#-- Sumamos la clave
	sb t1, 0(a0)	
	addi, a0, a0, 1	#-- Incrementamos el puntero
	b bucle
	
final:	
	mv a0, t2
	ret