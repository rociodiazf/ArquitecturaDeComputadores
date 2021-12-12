# --Siempre porner comentarios. Mi primer programa
# -- Asignar el valor 30 al registro x3
# -- X3 = 30
str:
	.text
main:	
	# -- x3 = x0 + 30
	#-- Inicializar el registro
	addi x3, x0, 30
		
	#-- tenemos que cerrar el programa
	li a7, 10
	ecall
	
	