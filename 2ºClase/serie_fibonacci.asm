#-- Programa para calcular la suma de los números enteros: 1+2+3+4+5+...
#-- El resultado se deja en el registros 6
#-- Usamos el registro x5 como contador: 1,2,3,4,5,6...
#-- En cada vuelta sumamos el valor de x5 a la cuenta acumulada en x6

	.text

	#-- Inicializamos los registros x6, x7 a 0
	addi x5, x0, 0
	addi x6, x0, 1
	addi x7, x0, 0
	
	#-- Bucle principal
bucle:

	#-- dejamos el resultado en x7
	add x7, x6, x5
	
	#-- Pasamos el valor de x7 a x6 y de x6 a x5
	addi x5, x6, 0
	addi x6, x7, 0

	
	#-- Repetir el bucle
	b bucle
