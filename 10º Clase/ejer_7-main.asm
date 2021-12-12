#-- Programa principal. Modificaremos el programa del ejercicio 6 para que la funcion operar
#-- Admita 4 parametros en donde el 3º y el 4º seran los incrementos del 1º y 2º respectivamente
#-- 
	.include "servicios.asm"
	
	.eqv I_10 10	#-- Incremento 10 para la componente x
	.eqv I_100 100	#-- Incremento 100 para la componente y
	
	.data
msg_x:  .string "Coordenada x: "
msg_y:  .string "Coordenada y: "	
	
	.text
	
	#----- Pedir la coordenada x
	la a0,msg_x
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	
	#-- Guardar cordenada x en s0
	mv s0, a0
	
	#----- Pedir la coordenada y
	la a0,msg_y
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	
	#-- Guardar cordenada y en a1
	mv a1, a0
	
	mv a0, s0
	
	#-- Pondremos 10 y 100 como incrementos a x e y respectivamente.
	li a2, I_10
	li a3, I_100
	
	#--- Llamar a la subrutina operar(x,y)
	jal operar
	
	#-- Terminar
	li a7, EXIT
	ecall
