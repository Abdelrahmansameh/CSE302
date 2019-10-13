 .file " test/bigcond.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp 
jmp .L2
.L2:
	 movq $42, 0(%rsp)
	 jmp .L1

.L1:
	 movq 0(%rsp), %rdi
	 callq bx0_print
	 jmp .L0

.L4:
	 movq 16 (%rsp), %R8
	 negq %R8
	 movq %R8, 8(%rsp)
	 jmp .L3

.L5:
	 movq $42, 16(%rsp)
	 jmp .L4

.L3:
	 movq 8(%rsp), %rdi
	 callq bx0_print
	 jmp .L0

.L0:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
