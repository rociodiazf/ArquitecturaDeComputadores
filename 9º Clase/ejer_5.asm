#-- En este programa pediremos una cadena al usuario y se la pasaremos a una subrutina junto a un caracter como
#-- parametros. Dicha subrutina tendra que buscar el caracter dado como parámetro y no nos tiene que devolver nada
#-- la funcion printeará los resultados con la letra que le hayan insertado para buscar
#-- En este caso el progrma nos pide que busquemos la letra a y la e

	#--------------------------------------------------------------
	#-- PROGRAMA PRINCIPAL
	#--------------------------------------------------------------
	
	.eqv MAX 32

	.include "servicios.asm"
	
	.data
	
cad_1: 	.space MAX
msg_1:  .string "Escriba aqui su frase: "
msg_2:	.string	"Que letra vamos a buscar?: "

	.text
	#-- Pedimos la frase
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	#-- Recogemos la frase
	la a0, cad_1
	li a1, MAX
	li a7, READ_STRING
	ecall

	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
#-- CASO 1. BUSCAMOS LA A
	li a1, 'a'	#-- Parametro 2
	la a0, cad_1	#-- Parametro 1
	#-- Llamamos a la subrutina para este caso
	jal count
	
	#-- Escribimos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
#-- CASO 1. BUSCAMOS LA e
	li a1, 'e'	#-- Parametro 2
	la a0, cad_1	#-- Parametro 1
	#-- Llamamos a la subrutina para este caso
	jal count
	
	#-- Termianmos
	li a7, EXIT
	ecall
	
	#--------------------------------------------------------------
	#-- FINAL DEL PROGRAMA PRINCIPAL
	#--------------------------------------------------------------