# Rodrigo de Jesus Macedo

main:
# soma de Fibonacci
li $t0, 0 # primeiro termo a ser somado
li $t1, 1 # Segundo termo a ser somado
li $t2, 0 # RESULTADO FINAL 
# lógica do loop
li $t5, 10
li $t6, 1
	loop:
		# Manter o loop
		beq $t6, $t5, end1
		addi $t6, $t6, 1
		# Cálculo do loop
		add $t2, $t1, $t0
		move $t0, $t1
		move $t1, $t2
	b loop
	end1:
end: