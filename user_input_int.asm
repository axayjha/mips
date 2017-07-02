.data
	PROMPT: .asciiz "Enter your age: "
	MESSAGE: .asciiz "Your age is "
.text
	# PRINTS THE PROMPT
	la   $a0, PROMPT
	li   $v0, 4
	syscall
	
	# GETS THE USER INPUT
	li   $v0, 5
	syscall 	
	move $t0, $v0
	
	# PRINT THE MESSAGE
	la   $a0, MESSAGE
	li   $v0, 4
	syscall
	
	# PRINT THE VALUE
	move $a0, $t0
	li   $v0, 1
	syscall
	
	
	