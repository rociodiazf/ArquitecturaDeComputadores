#-- En este programa vamos a pedir una cadena de caracteres al usuario. Los
#-- caracteres de las letras en minusculas los vamos a convertir en MAYÚSCULAS

	.include "servicios.asm"
	
	.eqv L_CAD 64	#-- Longitud de la cadena
	.eqv MAYUS -32	#-- De minusculas a mayusculas
	
	.data
	
msg_1:	.string "Escribe aquí tu cadena: "
cad:	.space L_CAD

	.text
	#-- Pedimos la cadena
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	
	li a1, L_CAD
	la a0, cad
	li a7, READ_STRING
	ecall
	
	#-- Bucle que busque las minusculas ('a'-'z')
	#-- Cuyos codigos ascii van desde 97 - 122 inclusives
	#-- Una vez encontrados les restaremos 32 para pasarlos al numero ascii con su
	#-- correspondencia en mayusculas
	
	#-- Iniciliaciamos las letras de comparacion para que sea una letra minus
	li t1, 'a'	#-- Mayor que a
	li t2, 'z'	#-- Menos que z
bucle:
	lb t0 0(a0)	#--Sacamos el valor del caracter
	beq t0, zero, fin_bucle	#-- Si es igual a \0 acabamos con el bucle.
	blt t0, t1, no_minus	#-- Si es menor que a no es minuscula
	bgt t0, t2, no_minus	#-- Si es mayor que z no es minuscula
	#-- Si sí es minuscula
	addi t0, t0, MAYUS	#--Hacemos la conversion de minus a mayus
	sb t0, 0(a0)	#-- Almacenamos el resultado en la memoria
	
no_minus:
	addi a0, a0, 1	#-- Incrementamos la posicion	
	b bucle
	
fin_bucle:
	#-- Printeamos el resultado
	la a0, cad
	li a7, PRINT_STRING
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall
	
	