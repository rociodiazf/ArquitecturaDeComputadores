#-- Escribimos un programa que calcule la siguiente expresión
#-- f = (d - c) + 15 - (a + b) para el siguiente conjunto de variables:
#-- a = 1, 2, 3, 4, 5....
#-- b = 2, 3, 4, 5, 6 ....
#-- c = 3, 4, 5, 6, 7 ....
#-- d = 4, 5, 6, 7, 8 ....
#-- así, en cada iteracion se escogería una columna de variables.

	.text
#-- declaramos el primer conjunto de variables
	addi x1, x0, 1	#-- A
	addi x2, x0, 2	#-- B
	addi x3, x0, 3	#-- C
	addi x4, x0, 4	#-- D
	addi x8, x0, 15	#-- 15
	
bucle:
	
#--comenzamos a construir la expresión
	sub x5, x4, x3	#-- (d - c)
	add x6, x1, x2	#-- (a + b)
	#-- 15 = x8
	sub x7, x8, x6	#-- 15 - (a + b)
	add x9, x5, x7
	#-- x9 --> resultado
	addi x1, x1, 1	#-- A + 1
	addi x2, x2, 1	#-- B + 1
	addi x3, x3, 1	#-- C + 1
	addi x4, x4, 1	#-- D +11

	b bucle


