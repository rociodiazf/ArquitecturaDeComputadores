#-- En este programa vamos a definir 3 variables en memoria  e incrementarla 
#-- en una unidad cada una de ellas.
	.include "servicios.asm"
	
	.data
v1:	.word 0xCADACAFE
v2:	.half 0xBACA
v3:	.byte 0xEA

	.text 
	#-- Primera variable
	la t0, v1 	#-- Guardamos la adireccion de memoria
	lw t1, 0(t0)	#-- Cargamos la palabra en un registro
	addi t1,t1,1	#-- Le sumamos la unidad
	sw t1, 0(t0)	#-- La volvemos a guardar en  memoria
	
	#-- Segunda variable
	la t0, v2
	lh t1, 0(t0)
	addi t1, t1, 1
	sh t1, 0(t0)
	
	#--Tercera variable
	la t0, v3
	lb t1, 0(t0)
	addi t1,t1,1 
	sb t1, 0(t0)	
	
	#-- Terminar
	li a7, EXIT
	ecall