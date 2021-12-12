#-- en este progrma pediremos al usuario un caracter entre '0'-'9' y lo convertiremos al entero.
#-- En caso de que sea una entrada distinta. Printearemos una entrada invalida y terminaremos el programa
	.include "servicios.asm"

	.data
msg_1:	.string "\nEscribe un caracter comprendido entre '0'-'9': " 
msg_2:  .string "\nEl resultado es:"
msg_3:	.string "\nEl valor introducido no es correcto."


 	.text
 	
inicio:	 #-- Printeamos el mensaje 1
 	 la a0, msg_1
 	 li a7, PRINT_STRING
 	 ecall
 	 
 	 #-- Recogemos el numero
 	 li a7, READ_CHAR
 	 ecall
 	 #-- Está dentro de los caracteres requeridos?
 	 li t4, '9'
 	 ble a0, t4, correcto
 	 
 #-- En caso de caracter invalido
 	 #-- Printeamos
 	 la a0, msg_3
 	 li a7, PRINT_STRING
 	 ecall 
 	 b inicio
correcto:
 	 #-- Movemos el caracter a un registro
 	 mv t0, a0
 	 
 	 #-- Conversion 'X' -'0' = X
 	 li t1, '0'
 	 sub t2, t0, t1
 	 
 	 #-- Imprimimos el resultado
 	 la a0, msg_2
 	 li a7, PRINT_STRING
 	 ecall
 	 mv a0, t2	#-- Devolvemos al a0 el numero transformado
 	 li a7, PRINT_INT
 	 ecall
 	 
 	 #-- Terminamos
 	 li a7, EXIT
 	 ecall
 	 
 	  