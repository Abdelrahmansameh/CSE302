 .file " test/test7.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $56, %rsp 
jmp .L17
.L2:
	 movq $1, 16(%rsp)
	 jmp .L1

.L1:
	 movq 16(%rsp), %rdi
	 callq bx0_print
	 jmp .L0

.L4:
	 movq $2, 24(%rsp)
	 jmp .L3

.L3:
	 movq 24(%rsp), %rdi
	 callq bx0_print
	 jmp .L0

.L5:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L2
	 jmp .L4

.L6:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L5
	 jmp .L4

.L8:
	 movq $4, 32(%rsp)
	 jmp .L7

.L7:
	 movq 32(%rsp), %rdi
	 callq bx0_print
	 jmp .L0

.L10:
	 movq $2, 40(%rsp)
	 jmp .L9

.L9:
	 movq 40(%rsp), %rdi
	 callq bx0_print
	 jmp .L8

.L11:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L10
	 jmp .L8

.L12:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L11
	 jmp .L8

.L13:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L11
	 jmp .L12

.L14:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L6
	 jmp .L13

.L15:
	 movq $1, 8(%rsp)
	 jmp .L14

.L16:
	 movq $0, 8(%rsp)
	 jmp .L14

.L17:
	 movq $1, 0(%rsp)
	 jmp .L16

.L18:
	 movq $0, 0(%rsp)
	 jmp .L16

.L0:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
