#-- En este programa pediremos al usuario una cadena de caracteres y el programa contara el
#-- numero de n's que hay en la frase.

	.include "servicios.asm"
	.eqv MAX 1024
	
	.data
cad1:	.string "Introduce una frase:"
cad3:	.string "Contador de caracteres 'a':"

cad2:	.space MAX

	.text
#-- Pedimos la frase
	la a0, cad1
	li a7, PRINT_STRING
	ecall
	#-- Guardamos la frase
	la a0, cad2
	li a1, MAX
	li a7, READ_STRING
	ecall
	
#-- Comenzamos la inspeccion de la cadena. Con un bucle que recorra toda la cadena hasta '\n'
	#-- Inicializamos a t4 como el contador de a's
	li t4, 0
	
	#-- Comprobamos que el caracter es una 'a'
	li t3, 'a'
	la t0, cad2	#-- Apuntamos al inicio de la cadena
bucle:	
	lb t1, 0(t0)
	
	beq t1, zero, operacion_final	#-- Es el final de la cadena?
	
	bne t1, t3, no_contamos		#-- Es un caracter != de a
	#-- Si sí es una 'a'
	addi, t4, t4, 1
	
no_contamos: 	#-- Aqui pasamos ni no es una 'a'
	
	#-- Incrementamos el puntero
	addi t0, t0, 1
	
	b bucle
	
	#-- Cuando se acabe la cadena salimos del bucle. Printeamos el resultado de la suma
operacion_final:
	#-- Printeamos el contador de a's
	la a0, cad3
	li a7, PRINT_STRING
	ecall
	mv a0, t4	#-- Movemos el contador de a's
	li a7, PRINT_INT
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall
	
	
	
	