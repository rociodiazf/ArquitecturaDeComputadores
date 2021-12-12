#-- En este programa pediremos una cadena de caracteres al usuario y se la devolveremos 
#-- del revés

	.include "servicios.asm"
	
	.eqv L_CAD 64	#-- Longitud de la cadena
	
	.data
	
msg_1:	.string "Escribe aquí la cadena de caracteres: "
cad:	.space L_CAD
cad_2:	.space L_CAD	#-- La usaremos para poner la inversa de la cadena ya que 
			#-- destruiríamos la info si la dejamos en la misma durante la operacion

	.text
	#-- Pedimos la cadena
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	la a0, cad
	li a1, L_CAD
	li a7, READ_STRING
	ecall
	
	#-- Comenzamos inversion
	#-- Ponemos un puntero al final de la cadena original
	#-- Hacemso una copia de la cadena para poderla dar la vuelta
	
	la t1, cad_2	#-- Para hacer la copia
	
bucle:	#-- Hasta que encontremos en cad el \0
	lb t0, 0(a0)
	beq t0, zero, fin_bucle 
	sb t0, 0(t1)
	
	addi a0, a0, 1	#-- Pasamos a la siguiente posicion
	addi t1, t1, 1	#-- Aumentamos la posicion de la copia
	b bucle
	
fin_bucle:
	addi a0, a0, -2	#-- Le restamos una posicion alpuntero
	
	la t0, cad_2	#-- Leemos la primera posicion de memoria
invierte:
	lb t1, 0(t0)	#-- Cogemos la primera posicion de la copia
	beq t1, zero, printeamos_cadena
	sb t1, 0(a0)	#-- Lo dejamos en la ultima de la original
	
	addi t0, t0, 1
	addi a0, a0, -1
	
	b invierte
	
printeamos_cadena:	
	#-- Printeamos la cadena original que es la que hemos dado la vuelta
	la a0, cad
	li a7, PRINT_STRING
	ecall
	
	#-- Terminamos 
	li a7, EXIT
	ecall
	
	