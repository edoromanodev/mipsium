.text 

.globl print_string

print_string:

    li $v0, 4          # syscall for print_string
    syscall             # make the syscall
    jr $ra              # return from function