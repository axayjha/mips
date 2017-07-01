.data
	num1: .word 6
	num2: .word 5
	
.text

	lw $s0, num1($zero)
	lw $s1, num2
	
	add $t0, $s0, $s1
	
	move $a0, $t0
	li $v0, 1
	syscall