	.text
#-- inicializamos el registro x5 a 5
	addi x5, x0, 5
#-- inicializammos el registro x6 a 6
	addi x6, x0, 6
#-- inicializamos el registro x7 a 0
	addi x7, x0, 0
a:
#--cuando los registros x5 y x0 sean iguales comineza FIN
	beq x5,x0,fin
	add x7, x7, x6
	addi x5, x5, -1
	b a
fin:
#-- fin de programa
	li a7, 10
	ecall