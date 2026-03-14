.data
Numbers:
    .long 1
    .long 15
    .long 4
    .long 2
    .long 7
    .long 9
    .long 23
    .long 7
    .long 3
    .long 11
Array_length:
    .long 10

.text
.globl main
main:
    movl $0, %ecx
    movl Numbers(,%ecx,4), %eax
    movl Array_length(%rip), %edx

while_loop:
    cmpl %edx, %ecx
    jge end_loop

    movl Numbers(,%ecx,4), %ebx
    cmpl %eax, %ebx
    jle skip_update

    movl %ebx, %eax

skip_update:
    addl $1, %ecx
    jmp while_loop

end_loop:
    ret
.section .note.GNU-stack,"",@progbits