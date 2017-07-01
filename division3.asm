.data
.text
	addi $t0, $zero, 13
	addi $t1, $zero, 5
	div  $t0, $t1
	
	mflo $s0    # Quotient
	mfhi $s1    # Remainder
	
	add $a0, $zero, $s1
	
	li   $v0, 1
	syscall       #should print the quotient
