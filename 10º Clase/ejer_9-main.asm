#-- En este programa vamos a pedir 3 cadenas al usuario. Vamos a concatenar las 3 haciendo dos
#-- llamadas a la subfucnion concat

	.eqv MAX 1024	##-- Nuermo de bits que reservamos en memoria
	
	.include "servicios.asm"
	
	.data
cad:	.space MAX
pref:	.space MAX
suf:	.space MAX

msg_1:	.string "Escribe la cadena: "
msg_2:	.string "Escribe el prefijo: "
msg_3:	.string "Escribe el sufijo: "

	.text
	
	#-- Pedimos la cadena
	la a0, msg_1
	li a7, PRINT_STRING
	ecall
	#-- Recogemos la cadena
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Pedimos el prefijo
	la a0, msg_2
	li a7, PRINT_STRING
	ecall
	
	#-- Leemos el prefijo
	la a0, pref
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Pedimos el sufijo
	la a0, msg_3
	li a7, PRINT_STRING
	ecall
	
	#-- Leemos el sufijo
	la a0, suf
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Llamamos a concat
	#-- Juntamos prefijo con cadena
	#-- Se elimina cad y queda pref con todo
	la a0, pref
	la a1, cad
	
	jal concat
	
	#-- Llamamos a concat por segunda vez
	#-- Juntamos el resto con el sufijo
	la a0, pref 
	la a1, suf
	
	jal concat
	
	#-- Imprimir salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Imprimimos la cadena resultante
	la a0, pref
	li a7, PRINT_STRING
	ecall
	
	#-- Terminamos
	li a7, EXIT
	ecall
	