#-- Hacemos u programa en el que lea el teclado de numeros y los escriba en el display de la izquierda.
	.include "servicios.asm"
	
	.eqv BASE 0xFFFF0010	#--Base de los perifericos
	
	.eqv DISP_I 01 #-- Display Izquierdo
	
	.eqv FILA 02 	#--Seleccion de la fila
	
	.eqv TECLA 04	#-- Codigo de la tecla
	
	.text
	
	li t0, BASE	#-- Puntero a perifericos
	
bucle:
	#-- Fila 1
	li t1, 01
	sb t1, FILA(t0)
	
	#-- Leemos la tecla
	lb t2, TECLA(t0)
	
	#-- Sacamos por el siplay el numero
	sb t2, DISP_I(t0)
	
	
	b bucle
	
	