.data
	message1: .asciiz "Numbers are equal\n"
	message2: .asciiz "Numbers are different\n"
.text
	main:
		addi $t0, $zero, 4
		addi $t1, $zero, 6
		
		beq $t0, $t1, ifEqual
		
		la $a0, message2
		li $v0, 4
		syscall
		
	li $v0, 10
	syscall
	
	ifEqual:
		la $a0, message1
		li $v0, 4
		syscall