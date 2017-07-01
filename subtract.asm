#  Program to subtract two numbers
#  Akshay Anand

.data
	num1: .word 20
	num2: .word 8


.text

	lw $s0, num1
	lw $s1, num2
	
	sub $t0, $s0, $s1
	
	move $a0, $t0   # or we can do: add $a0, $t0, $zero
	li $v0, 1
	syscall
	