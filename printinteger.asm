.data
	num1: .word 3000
		
.text
	lw $a0, num1
	li $v0, 1
	syscall 