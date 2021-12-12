#-- En este primer ejercicio lo que vamos es a modificar el programa que nos da el enunciado y añadirle una subrutina
  
	    .include "servicios.asm" 
	    
	    .data
msg_main:   .string "Comienza el programa principal\n"	
	
	.text
	
	#----- PROGRAMA PRINCIPAL ----------------
	
	#-- Imprimir mensaje desde programa principal
	la a0, msg_main
	li a7, PRINT_STRING
	ecall
	
	#-- Saltamos a la subrutina SALUDAR
	jal saludar
	
	#-- Llamamos una segunda vez a la subrutina
	jal saludar
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------
	#-- FIN DEL PROGRAMA PRINCIPAL
	#-----------------------------------------