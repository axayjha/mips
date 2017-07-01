.data


.text
	addi $s0, $zero, 10
	addi $s1, $zero, 4
	mul  $t0, $s0, $s1
	add $a0, $t0, $zero  # or move $a0, $t0
	li   $v0, 1
	syscall 