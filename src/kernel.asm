.data

boot_msg: .asciiz "Booting MIPSium...\n"
init_msg: .asciiz "Initializing kernel...\n"
ready_msg: .asciiz "Kernel initialized.\n"
loop_msg: .asciiz "Entering kernel main loop...\n"

.text

.globl main

main:
    # Boot message
    la $a0, boot_msg
    jal print_string

    # Initialize kernel
    jal kernel_init


    # Keep kernel running
kernel_loop:
    j kernel_loop




kernel_init:
    la $a0, init_msg
    jal print_string

    la $a0, ready_msg
    jal print_string

    # Return to main
    jr $ra



