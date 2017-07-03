.data
    message1: .asciiz "equal\n"
    message2: .asciiz "not equal\n"
    num1:     .float  2.4
    num2:     .float  2.4

.text
    main:
        lwc1    $f0, num1
        lwc1    $f2, num2

        c.eq.s  $f0, $f2
        bc1t    exit

        la      $a0, message2
        li      $v0, 4
        syscall

    li $v0, 10
    syscall 

    exit:
        la      $a0, message1
        li      $v0, 4
        syscall



