.data
a:
    .long 0

.text
.globl main
main:
    pushq   %rbp
    movq    %rsp, %rbp
    movl    $0, -4(%rbp)

.L3:
    movl    a(%rip), %eax
    movl    %eax, a(%rip)
    addl    $1, -4(%rbp)

.L2:
    cmpl    $9, -4(%rbp)
    jle     .L3

    movl    -4(%rbp), %eax
    popq    %rbp
    ret

.section .note.GNU-stack,"",@progbits