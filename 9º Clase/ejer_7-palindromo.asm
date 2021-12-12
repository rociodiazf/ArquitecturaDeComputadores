#-- En esta funcion vamos a pasarle una cadena y vamos a comprobar que sea un palindromo.

 	#--------------------------------------------------------------
 	#--- FUNCION PALINDROMO
 	#--------------------------------------------------------------
 	
 	.globl palindromo
 	
 palindromo:
 	.include "servicios.asm" 
 	
 	#-- Ponemos un puntero al final de la cadena 
 	li t0, '\n'
 	mv t4, a0

cadena:
 	lb t1, 0(t4)	#-- Sacamos la letra
 	beq t0, t1, fin_cadena	#-- Comprobamos que no sea un salto de linea
 	addi t4, t4, 1
 	b cadena
fin_cadena:	#-- Fin de linea encontrado. Le restamos una posicion
 	addi t4, t4, -1	#-- Posicionamos el puntero en la ultima letra
 	
 	mv t3, a0	#-- Lo posicionamos en el primero
comparacion:
	lb t1, 0(t3)	#-- Iqz
	lb t2, 0(t4)	#-- Der
 	bne t1, t2, no_palindromo
 	addi t3, t3, 1	#-- Sumamos posicion 
 	addi t4, t4, -1	#-- Restamso posicion
 	ble t4, t3, si_palindromo	#-- Si el puntero derecho es mas pequeño que el izquierdo
 	b comparacion	#-- Bucle
 	
no_palindromo:
 	li a0, 0
 	b fin

si_palindromo:
	li a0, 1
	b fin
 	
fin:	
	ret

	#------------------------------------------------------------------------------------
	#-- END OF PALINDROMO FUNCTION
 	