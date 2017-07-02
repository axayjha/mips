.data
	message1: .asciiz "First number is lesser than second\n"
	message2: .asciiz "Second number is lesser than first\n"
.text
	main:
		addi $t0, $zero, 5  # first number
		addi $t1, $zero, 3  # second number
		
		# sets s0 to 1 if t0 < t1, else sets s0 to 0
		slt $s0, $t0, $t1		
		
		beq $s0, $zero, second_is_less
		
		# gets executed if first number is lesser, means if s0 is 1
		la $a0, message1
		li $v0, 4
		syscall
		
	li $v0, 10
	syscall
	
	second_is_less:
		la $a0, message2
		li $v0, 4
		syscall	
				