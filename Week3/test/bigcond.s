 .file " test/bigcond.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $8, %rsp 
jmp .L1 
.L1:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
