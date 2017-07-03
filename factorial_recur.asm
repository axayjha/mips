#=========================================================================================================
# Implementatin of factorial program using recursion
#
# Stanford MIPS Assembly
# Assembler tested with: MARS 
#
#
# Akshay Anand
# 03/07/2017
# https://github.com/axayjha/mips
#
#=========================================================================================================


         .data
prompt:  .asciiz "Enter a number: "
msg1:    .asciiz "Factorial of "
msg2:    .asciiz " is: "
msg3:    .ascii  "\n"
num:     .word   0
ans:     .word   0

         .text

#=========================================================================================================

         .globl main
main:    
        # printing the prompt msg
        la   $a0, prompt                    # loading the address of prompt message in reg a0
        li   $v0, 4                         # loading the syscall value for printing text in reg v0 
        syscall                             # printing the prompt

        #getting input
        li   $v0, 5                         # loading the syscall value in v0 for an int input                            
        syscall                             # getting user input for the number to find factorial of
    
        sw   $v0, num                       # storing the input in num variable   
        
        # calling procedure
        lw   $a0, num                       # loading the num variable into procedure argument register
        jal  factorial                      # calling the factorial procedure
        sw   $v0, ans                       # storing the return value of procedure in the ans variable                

        # printing the output
        la   $a0, msg1                      # loading the address of result message in reg a0
        li   $v0, 4                         # loading the syscall value for printing text in reg v0 
        syscall                             # printing the output message

        lw   $a0, num                       # loading the num variable in a0 register    
        li   $v0, 1                         # loading the syscall value to print an int in reg v0 
        syscall                             # printing the number given as input

        la   $a0, msg2                      # loading the address of part of result message in reg a0
        li   $v0, 4                         # loading the syscall value for printing text in reg v0
        syscall                             # printing the output message

        lw   $a0, ans                       # loading the ans variable in a0 register
        li   $v0, 1                         # loading the syscall value to print an int in reg v0
        syscall                             # printing the factorial value

        la   $a0, msg3                      # loading the address of new line text in reg a0
        li   $v0, 4                         # loading the syscall value for printing text in reg v0
        syscall                             # printing new line


        # terminating program
        li   $v0, 10
        syscall

#=========================================================================================================        

         .globl factorial
factorial:
        # saving return address and argument in stack
        addi $sp, $sp, -8                   # making 8 bytes space in stack to store two 4-byte ints
        sw   $ra, 0($sp)                    # storing return address of the called procedure
        sw   $s0, 4($sp)                    # storing the input argument

        li   $v0, 1                         # setting return value to 1

        # base case    
        beq  $a0, 0, done                   # branches to "done" label when argument reg value gets down to 0

        # recursive case
        move $s0, $a0                       # moves the argument value in saved reg s0
        addi $a0, $a0, -1                   # decrements the value of input argument by 1
        jal factorial                       # recursively calling the factorial procedure
        mul  $v0, $s0, $v0                  # the fundamental step of multiplying return values of each call\
                                            # (with the argument val)

        # once base case is reached
        done:
            lw   $ra, 0($sp)                # loading return address in ra register from stack
            lw   $s0, 4($sp)                # loading the argument value for each call in s0 from stack
            addi $sp, $sp, 8                # shrinking stack to clear the used space
            jr   $ra                        # jumping to the return address

#=========================================================================================================            