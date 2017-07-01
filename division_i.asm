.data
	num1: .word 40
.text
	lw $s0, num1($zero)
	div $a0, $s0, 10
	li $v0, 1
	syscall
