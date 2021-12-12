#-- Escribir un programa que tenga dos contadores y que salgan por los displays izquierdo y derecho. 
#-- Uno empieza en 0 y el otro en 1, respectivamente.

	.data
	
	#-- Puerto base de salida
	.eqv BASE 0xFFFF0010
	 
	#-- Display's
	.eqv DISP_I 0	#-- Izquierdo
	.eqv DISP_D 1	#--Derecho
	
	 

	.text
	
	li t0, 0	#-- Contador t0 a 0
	li t1, 1	#-- Contador t1 a 1
	
	li t3, BASE	#-- Base de ambos DISPLAYS
	 
bucle:	
	#-- Los sacamos al puerto
	sb t0, DISP_I(t3)
	sb t1, DISP_D(t3)
	
	#-- Los incrementamos en la unidad
	addi t0, t0, 1
	addi t1, t1, 1
	
	b bucle
	
	
	