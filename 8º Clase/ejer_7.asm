#-- En este programa pediremos una cadena al usuario la meteremos en memoria y la copiamos a
#-- otra dirección
	.include "servicios.asm"
	
	.eqv L_CAD 32	#-- Longitud de la cadena
	
	.data
msg_1:	.string "Introduce una cadena:"
cad:	.space L_CAD
cad_2:	.space L_CAD


	.text
	#-- Pedimos la cadena
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	la a0, cad
	li a1, L_CAD
	li a7, READ_STRING
	ecall
	
	#-- Movemos la cadena de sitio con un bucle
	la t0, cad_2
	li t6, '\0'	#-- Referencia de salto de linea
bucle:
	lb t1, 0(a0)	#-- Primera cadena
	beq t1, t6, final	#-- Es un salto de linea Sí, nos vamos al final. No, damos otra vuelta al bucle
	sb t1, 0(t0)	#-- Lo almacenamos en la cadena copia
	
	#-- Incrementamos las posiciones de memoria
	addi t0, t0, 1
	addi a0, a0, 1
	
	b bucle
final: 
	#-- Printeamos desde la cadena copiada
	la a0, cad_2
	li a7, PRINT_STRING
	ecall
		
	#-- Terminamos
	li a7, EXIT
	ecall
	