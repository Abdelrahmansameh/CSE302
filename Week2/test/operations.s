 .file " test/operations.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $288, %rsp 
movq $10, 0(%rsp)

movq 0(%rsp), %R8
 movq %R8, 8(%rsp)

movq 8(%rsp), %rdi
callq bx0_print

movq $2, 24(%rsp)

movq 0(%rsp), %R8
 movq %R8, 32(%rsp)

movq 32(%rsp), %R8
 movq 24(%rsp), %rax
imulq %R8
 movq %rax, 16(%rsp)
movq 16(%rsp), %R8
 movq %R8, 40(%rsp)

movq 40(%rsp), %rdi
callq bx0_print

movq 16(%rsp), %R8
 movq %R8, 56(%rsp)

movq $2, 64(%rsp)

movq 64(%rsp), %R8
 movq 56(%rsp), %rax
cqo
 idivq %R8
 movq %rax, 48(%rsp)
movq 48(%rsp), %R8
 movq %R8, 72(%rsp)

movq 72(%rsp), %rdi
callq bx0_print

movq 48(%rsp), %R8
 movq %R8, 104(%rsp)

movq 0(%rsp), %R8
 movq %R8, 112(%rsp)

movq 112(%rsp), %R8
 movq 104(%rsp), %R9
subq %R8, %R9
 movq %R9, 88(%rsp) 

movq 16(%rsp), %R8
 movq %R8, 96(%rsp)

movq 96(%rsp), %R8
 movq 88(%rsp), %R9
subq %R8, %R9
 movq %R9, 80(%rsp) 

movq 80(%rsp), %R8
 movq %R8, 120(%rsp)

movq 120(%rsp), %rdi
callq bx0_print

movq 80(%rsp), %R8
 movq %R8, 136(%rsp)

movq 80(%rsp), %R8
 movq %R8, 144(%rsp)

movq 144(%rsp), %R8
 movq 136(%rsp), %R9
addq %R8, %R9
 movq %R9, 128(%rsp) 

movq 128(%rsp), %R8
 movq %R8, 152(%rsp)

movq 152(%rsp), %rdi
callq bx0_print

movq 128(%rsp), %R8
 movq %R8, 168(%rsp)

movq 168 (%rsp), %R8
negq %R8
movq %R8, 160(%rsp)
movq 160(%rsp), %R8
 movq %R8, 176(%rsp)

movq 176(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 192(%rsp)

movq 16(%rsp), %R8
 movq %R8, 208(%rsp)

movq $2, 216(%rsp)

movq 216(%rsp), %R8
 movq 208(%rsp), %rax
imulq %R8
 movq %rax, 200(%rsp)
movq 200(%rsp), %R8
 movq 192(%rsp), %R9
addq %R8, %R9
 movq %R9, 184(%rsp) 

movq 184(%rsp), %R8
 movq %R8, 224(%rsp)

movq 224(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 256(%rsp)

movq 16(%rsp), %R8
 movq %R8, 264(%rsp)

movq 264(%rsp), %R8
 movq 256(%rsp), %R9
addq %R8, %R9
 movq %R9, 240(%rsp) 

movq $2, 248(%rsp)

movq 248(%rsp), %R8
 movq 240(%rsp), %rax
imulq %R8
 movq %rax, 232(%rsp)
movq 232(%rsp), %R8
 movq %R8, 272(%rsp)

movq 272(%rsp), %rdi
callq bx0_print

movq %rbp, %rsp
popq %rbp
movq $0, %rax
retq
