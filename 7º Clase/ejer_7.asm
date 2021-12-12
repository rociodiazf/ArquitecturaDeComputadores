#-- Este programa pedira al usuario un numero de enteros. Cuando el usuario meta un 0 se terminará y 
#-- nos dirá el resultado de la suma 
	.include "servicios.asm"
	
	.data
cad1:	.string "Escribe numero:"
cad2:	.string "La suma total es:"

	.text
	
	#-- Pedimos los numeros en un bucle y los sumamos en cada iteracion
	
	#-- Llevaremos la cuenta en t0
	li t0, 0
	
bucle:	#-- El procedimiento será: ir escuchando numeros e irlos sumando en cada iteracion
	#-- Printeamos frase
	la a0, cad1
	li a7, PRINT_STRING
	ecall
	#-- Recogemos numero
	li a7, READ_INT
	ecall
	#-- Hacemos la suma
	add t0, t0, a0
	
	#-- Si se ha insertado un cero FINALIZAMOS EL BUCLE
	bnez a0, bucle	#-- Si a0 es diferente de 0 continua el bucle
	
	#-- Cuando salga del bucle
	
	#-- Printeamos frase final
	la a0, cad2
	li a7, PRINT_STRING
	ecall
	#-- Printamos el resultado de la suma
	mv a0, t0
	li a7, PRINT_INT
	ecall
	#-- Printeamos un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Terminamos el programa
	li a7, EXIT
	ecall
	
	
	
