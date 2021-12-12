#---------------------------------
#-- Subrutina Tarea 1
#---------------------------------
#-- ENTRADAS: Ninguna
#-- SALIDAS: Ninguna
#---------------------------------

	#-- Punto de entrada
	.globl tarea1
	
	.include "servicios.asm"

	.data
msg:	.string "  Tarea 1\n" 	
			
	.text
	
	
#-------- Punto de entrada
tarea1:

	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Creamos la pila
	addi sp, sp, 16
	#-- Guardamos la direccion de ra en la pila 
	sw ra, 0(sp)
	
	#-- Llamamos a la nueva subrutina llamada: Tarea_2
	jal tarea2

	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Volvemos de Tarea 2. sacamos ra de la pila
	lw ra, 0(sp)
			
#------- Punto de salida
	ret