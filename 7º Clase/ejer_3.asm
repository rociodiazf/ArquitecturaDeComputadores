#-- Mostraremos un menu con dos opciones, un contador que se vaya incrementando con cada '1' metido
#-- o la salida del programa. Si metemos cualquier otro caracter este lo mostrará como caracter invalido

	.include "servicios.asm"

	.data
	
opcion:	.string "Opcion?:"
	
	#-- Frases del Menú
menu:	.string "Menu de Opciones \n"
menu_1:	.string "================ \n"
menu_2:	.string "1. Incrementar el contador \n"
menu_3:	.string "2. Salir del Programa \n"

count:	.string "Contador: "

	#-- Caracter incorrecto
error:	.string "ERROR: Opcion invalida\n"

	#-- Fin del Programa
fin:	.string "EXIT: Terminando el programa\n"
	
	.text
	#-- COntador iniciado a 0
	li t0, 0	#-- Solo para la primera iteracion
	
bucle:	

	#-- Salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Imprimimos el menu
	la a0, menu
	li a7, PRINT_STRING
	ecall
	
	la a0, menu_1
	li a7, PRINT_STRING
	ecall
	
	la a0, menu_2
	li a7, PRINT_STRING
	ecall
	
	la a0, menu_3
	li a7, PRINT_STRING
	ecall
	
	#-- Salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Leemos la Opcion elegida
	la a0, opcion
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	
	#-- Comparaciones
	li t1, 1
	li t2, 2
	
	beq a0, t1, Opcion_1
	beq a0, t2, Opcion_2
	
	#-- Caracter incorrecto
	la a0, error
	li a7, PRINT_STRING
	ecall
	
	b bucle
	
Opcion_1:
	#-- Opcion del contador
	addi t0, t0, 1	#--Incrementamos en una unidad el contador
	
	#-- Printeamos el contador
	la a0, count
	li a7, PRINT_STRING
	ecall
	
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	b bucle
	
Opcion_2:
	#-- EXIT DEL PROGRAMA
	
	#-- Printeamos la frase
	la a0, fin
	li a7, PRINT_STRING
	ecall
	
	b final_programa
	
final_programa:
	#-- Terminamos. Unico putno de salida
	li a7, EXIT
	ecall
	
	
	
	
	
	