#-- Definimos dos cadenas en tiempo de compilacion y que las imprima por consola

	.include "servicios.asm"
	
	.data
cad1:	.string "Hola"
cad2:	.string "Adios"

	.text
	
	#--Guardamos la direccion de memoria de cad1
	la a0, cad1
		
	#-- Imprimimos las cadenas de caracteras
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimimos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Guardamos la direccion de memoria de cad2
	la a0, cad2
	
	#-- Imprimimos la cadena 2
	li a7, PRINT_STRING
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall
	
	