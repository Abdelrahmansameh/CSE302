 .file " test/test1.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $40, %rsp 
jmp .L1 
.L1:
	 movq $1, 0(%rsp)
	 jmp .L2

.L2:
	 movq $1, 8(%rsp)
	 jmp .L3

.L4:
	 movq $1, 16(%rsp)
	 jmp .L5

.L5:
	 movq 16(%rsp), %rdi
	 callq bx0_print
	 jmp .L6

.L3:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jne .L7
	 jmp .L4

.L7:
	 movq $0, 24(%rsp)
	 jmp .L8

.L8:
	 movq 24(%rsp), %rdi
	 callq bx0_print
	 jmp .L9

.L6:
	 jmp .L9

.L9:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
