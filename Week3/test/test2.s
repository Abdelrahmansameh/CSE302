 .file " test/test2.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $56, %rsp 
jmp .L10
.L2:
	 movq 16(%rsp), %R8
 	 movq 8(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 0(%rsp) 
	 jmp .L1

.L3:
	 movq $1, 16(%rsp)
	 jmp .L2

.L4:
	 movq 0(%rsp), %R8
 	 movq %R8, 8(%rsp)
	 jmp .L3

.L6:
	 movq 0(%rsp), %R8
 	 movq %R8, 24(%rsp)
	 jmp .L5

.L5:
	 movq 24(%rsp), %rdi
	 callq bx0_print
	 jmp .L4

.L7:
	 movq 32(%rsp), %R8
 	 movq 40(%rsp), %R9
	 cmpq %R9, %R8
	 jl .L6
	 jmp .L0

.L8:
	 movq $10, 40(%rsp)
	 jmp .L7

.L9:
	 movq 0(%rsp), %R8
 	 movq %R8, 32(%rsp)
	 jmp .L8

.L1:
	 jmp .L9

.L10:
	 movq $0, 0(%rsp)
	 jmp .L9

.L0:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
