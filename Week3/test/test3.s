 .file " test/test3.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $136, %rsp 
jmp .L1 
.L1:
	 movq $1, 0(%rsp)
	 jmp .L2

.L2:
	 movq $0, 8(%rsp)
	 jmp .L3

.L3:
	 movq 0(%rsp), %R8
 movq %R8, 40(%rsp)
	 jmp .L4

.L4:
	 movq 8(%rsp), %R8
 movq %R8, 48(%rsp)
	 jmp .L5

.L5:
	 movq 48(%rsp), %R8
 	 movq 40(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 16(%rsp) 

.L6:
	 movq 0(%rsp), %R8
 movq %R8, 56(%rsp)
	 jmp .L7

.L7:
	 movq 8(%rsp), %R8
 movq %R8, 64(%rsp)
	 jmp .L8

.L8:
	 movq 64(%rsp), %R8
 	 movq 56(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 24(%rsp) 

.L9:
	 movq 16(%rsp), %R8
 movq %R8, 72(%rsp)
	 jmp .L10

.L10:
	 movq 72(%rsp), %rdi
	 callq bx0_print
	 jmp .L11

.L11:
	 movq 24(%rsp), %R8
 movq %R8, 80(%rsp)
	 jmp .L12

.L12:
	 movq 80(%rsp), %rdi
	 callq bx0_print
	 jmp .L13

.L13:
	 movq 16(%rsp), %R8
 movq %R8, 104(%rsp)
	 jmp .L14

.L14:
	 movq 16(%rsp), %R8
 movq %R8, 112(%rsp)
	 jmp .L15

.L15:
	 movq 112(%rsp), %R8
 	 movq 104(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 88(%rsp) 

.L16:
	 movq 24(%rsp), %R8
 movq %R8, 96(%rsp)
	 jmp .L17

.L17:
	 movq 96(%rsp), %R8
 	 movq 88(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 32(%rsp) 

.L18:
	 movq 32(%rsp), %R8
 movq %R8, 120(%rsp)
	 jmp .L19

.L19:
	 movq 120(%rsp), %rdi
	 callq bx0_print
	 jmp .L20

.L20:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
