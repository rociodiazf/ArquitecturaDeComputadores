#-- En este programa se pedirá dos numeros enteros y printearemos la suma. Como el enunciado no nos dice que
#-- que guardemos las variables en el registro de datos solo trabajamos con los registros

	.include "servicios.asm"
	
	.data 
cad1:	.string "Escribe el primer sumando:"
cad2:	.string "Escribe el segundo sumando:"
cad3: 	.string "El resultado de la suma es:"
	

	.text
#-- Pedimos el 1º numero
	#-- Printeamos la 1º frase
	la a0, cad1 
	li a7, PRINT_STRING
	ecall
	
	#--Recogemos el numero
	li a7, READ_INT
	ecall
	
	#-- Nos llevamos el numero a un registro libre
	mv t0, a0
	
#-- Pedimos el 2º numero
	#-- Printeamos el titulo
	la a0, cad2
	li a7, PRINT_STRING
	ecall
	#-- Leemos el numero
	li a7, READ_INT
	ecall
	
	#-- Nos llevamos el numero a otro registro
	mv t1, a0
	
	#-- Hacemos la suma 
	add t2, t0, t1
	
#-- Printeamos el resultado
	la a0, cad3
	li a7, PRINT_STRING
	ecall
	
	#-- Movemos el resultado de registro para impimirlo
	mv a0, t2
	#-- Printeamos el 
	li a7, PRINT_INT
	ecall 
	
	#-- Terminar 
	li a7, EXIT
	ecall
