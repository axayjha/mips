.data
	prompt: .asciiz "Enter a number: "
	
.text

	la $a0, prompt
	li $v0, 4
	syscall
	
	li $v0, 7
	syscall
	
	add.d $f12, $f0, $f10  # assuming $f10 has 0.0
	li    $v0 , 3
	syscall 
	
	
	