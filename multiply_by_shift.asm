.data
.text
	addi $s0, $zero, 5
	sll  $a0, $s0, 3
	li   $v0, 1
	syscall   ## output should be 5 * (2^3) = 40
	
	