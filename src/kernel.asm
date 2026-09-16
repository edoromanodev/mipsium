.data 

boot_msg: .asciiz "Booting MIPSium...\n"

.text

.globl kernel_main

kernel_main:
    # Print boot message

    la $a0, boot_msg    # load address of boot message into $a0
    jal print_string     # call print_string function

    li $v0, 10          # syscall for exit
    syscall              # make the syscall

