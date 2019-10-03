 .file " test/fib.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $280, %rsp 
movq $0, 0(%rsp)

movq $1, 8(%rsp)

movq 0(%rsp), %R8
 movq %R8, 16(%rsp)

movq 16(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 24(%rsp)

movq 8(%rsp), %R8
 movq %R8, 0(%rsp)

movq 8(%rsp), %R8
 movq %R8, 32(%rsp)

movq 24(%rsp), %R8
 movq %R8, 40(%rsp)

movq 40(%rsp), %R8
 movq 32(%rsp), %R9
addq %R8, %R9
 movq %R9, 8(%rsp) 

movq 0(%rsp), %R8
 movq %R8, 48(%rsp)

movq 48(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 24(%rsp)

movq 8(%rsp), %R8
 movq %R8, 0(%rsp)

movq 8(%rsp), %R8
 movq %R8, 56(%rsp)

movq 24(%rsp), %R8
 movq %R8, 64(%rsp)

movq 64(%rsp), %R8
 movq 56(%rsp), %R9
addq %R8, %R9
 movq %R9, 8(%rsp) 

movq 0(%rsp), %R8
 movq %R8, 72(%rsp)

movq 72(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 24(%rsp)

movq 8(%rsp), %R8
 movq %R8, 0(%rsp)

movq 8(%rsp), %R8
 movq %R8, 80(%rsp)

movq 24(%rsp), %R8
 movq %R8, 88(%rsp)

movq 88(%rsp), %R8
 movq 80(%rsp), %R9
addq %R8, %R9
 movq %R9, 8(%rsp) 

movq 0(%rsp), %R8
 movq %R8, 96(%rsp)

movq 96(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 24(%rsp)

movq 8(%rsp), %R8
 movq %R8, 0(%rsp)

movq 8(%rsp), %R8
 movq %R8, 104(%rsp)

movq 24(%rsp), %R8
 movq %R8, 112(%rsp)

movq 112(%rsp), %R8
 movq 104(%rsp), %R9
addq %R8, %R9
 movq %R9, 8(%rsp) 

movq 0(%rsp), %R8
 movq %R8, 120(%rsp)

movq 120(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 24(%rsp)

movq 8(%rsp), %R8
 movq %R8, 0(%rsp)

movq 8(%rsp), %R8
 movq %R8, 128(%rsp)

movq 24(%rsp), %R8
 movq %R8, 136(%rsp)

movq 136(%rsp), %R8
 movq 128(%rsp), %R9
addq %R8, %R9
 movq %R9, 8(%rsp) 

movq 0(%rsp), %R8
 movq %R8, 144(%rsp)

movq 144(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 24(%rsp)

movq 8(%rsp), %R8
 movq %R8, 0(%rsp)

movq 8(%rsp), %R8
 movq %R8, 152(%rsp)

movq 24(%rsp), %R8
 movq %R8, 160(%rsp)

movq 160(%rsp), %R8
 movq 152(%rsp), %R9
addq %R8, %R9
 movq %R9, 8(%rsp) 

movq 0(%rsp), %R8
 movq %R8, 168(%rsp)

movq 168(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 24(%rsp)

movq 8(%rsp), %R8
 movq %R8, 0(%rsp)

movq 8(%rsp), %R8
 movq %R8, 176(%rsp)

movq 24(%rsp), %R8
 movq %R8, 184(%rsp)

movq 184(%rsp), %R8
 movq 176(%rsp), %R9
addq %R8, %R9
 movq %R9, 8(%rsp) 

movq 0(%rsp), %R8
 movq %R8, 192(%rsp)

movq 192(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 24(%rsp)

movq 8(%rsp), %R8
 movq %R8, 0(%rsp)

movq 8(%rsp), %R8
 movq %R8, 200(%rsp)

movq 24(%rsp), %R8
 movq %R8, 208(%rsp)

movq 208(%rsp), %R8
 movq 200(%rsp), %R9
addq %R8, %R9
 movq %R9, 8(%rsp) 

movq 0(%rsp), %R8
 movq %R8, 216(%rsp)

movq 216(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 24(%rsp)

movq 8(%rsp), %R8
 movq %R8, 0(%rsp)

movq 8(%rsp), %R8
 movq %R8, 224(%rsp)

movq 24(%rsp), %R8
 movq %R8, 232(%rsp)

movq 232(%rsp), %R8
 movq 224(%rsp), %R9
addq %R8, %R9
 movq %R9, 8(%rsp) 

movq 0(%rsp), %R8
 movq %R8, 240(%rsp)

movq 240(%rsp), %rdi
callq bx0_print

movq 0(%rsp), %R8
 movq %R8, 24(%rsp)

movq 8(%rsp), %R8
 movq %R8, 0(%rsp)

movq 8(%rsp), %R8
 movq %R8, 248(%rsp)

movq 24(%rsp), %R8
 movq %R8, 256(%rsp)

movq 256(%rsp), %R8
 movq 248(%rsp), %R9
addq %R8, %R9
 movq %R9, 8(%rsp) 

movq 0(%rsp), %R8
 movq %R8, 264(%rsp)

movq 264(%rsp), %rdi
callq bx0_print

movq %rbp, %rsp
popq %rbp
movq $0, %rax
retq
