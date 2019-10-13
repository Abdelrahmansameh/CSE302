 .file " test/test1.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp 
jmp .L5
.L2:
	 movq $1, 8(%rsp)
	 jmp .L1

.L1:
	 movq 8(%rsp), %rdi
	 callq bx0_print
	 jmp .L0

.L4:
	 movq $0, 16(%rsp)
	 jmp .L3

.L3:
	 movq 16(%rsp), %rdi
	 callq bx0_print
	 jmp .L0

.L5:
	 movq $1, 0(%rsp)
	 jmp .L2

.L6:
	 movq $0, 0(%rsp)
	 jmp .L2

.L0:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
