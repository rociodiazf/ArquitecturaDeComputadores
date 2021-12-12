 #-- En este programa definiremos en tiempo de compliacion la palabra "Hola\n" 
 #-- y cambiaremos el caracter a por una i
 
 	.include "servicios.asm"
 	#-- Posicion de la letra o
 	.eqv P4 3
 	
 	.data 
msg:	.string "Hola\n"
 
 	.text
 	
 	#-- Escribimos Hola por pantalla
 	la a0, msg
 	li a7, PRINT_STRING
 	ecall
 	
 	#-- Moidificamos la palabra
 	la t0, msg	#-- Nos guardamos la direccion de memoria
 	li t1, 'i'	#-- Cambiamos la 'a' por la 'i'
 	sb t1, P4(t0)
 	
 	#-- Imprimimos la nueva palabra por pantalla
 	la a0, msg
 	li a7, PRINT_STRING
 	ecall
 	
 	
 	#-- Terminar
 	li a7, EXIT
 	ecall