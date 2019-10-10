 .file " test/test7.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $128, %rsp 
jmp .L1 
.L1:
	 movq $1, 0(%rsp)
	 jmp .L2

.L2:
	 movq $0, 8(%rsp)
	 jmp .L3

.L3:
	 movq 0(%rsp), %R8
 movq %R8, 16(%rsp)
	 jmp .L4

.L5:
	 movq 0(%rsp), %R8
 movq %R8, 32(%rsp)
	 jmp .L6

.L6:
	 movq 8(%rsp), %R8
 movq %R8, 40(%rsp)
	 jmp .L7

.L7:
	 movq 40(%rsp), %R8
 	 movq 32(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 24(%rsp) 

.L9:
	 movq $1, 48(%rsp)
	 jmp .L10

.L10:
	 movq 48(%rsp), %rdi
	 callq bx0_print
	 jmp .L11

.L8:
	 movq 24(%rsp), %R8
	 cmpq $1, %R8
	 jne .L12
	 jmp .L9

.L12:
	 movq $2, 56(%rsp)
	 jmp .L13

.L13:
	 movq 56(%rsp), %rdi
	 callq bx0_print
	 jmp .L14

.L11:
	 jmp .L14

.L4:
	 movq 16(%rsp), %R8
	 cmpq $1, %R8
	 jne .L15
	 jmp .L5

.L15:
	 movq 0(%rsp), %R8
 movq %R8, 88(%rsp)
	 jmp .L16

.L16:
	 movq 0(%rsp), %R8
 movq %R8, 96(%rsp)
	 jmp .L17

.L17:
	 movq 96(%rsp), %R8
 	 movq 88(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 72(%rsp) 

.L18:
	 movq 8(%rsp), %R8
 movq %R8, 80(%rsp)
	 jmp .L19

.L19:
	 movq 80(%rsp), %R8
 	 movq 72(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 64(%rsp) 

.L21:
	 movq $2, 104(%rsp)
	 jmp .L22

.L22:
	 movq 104(%rsp), %rdi
	 callq bx0_print
	 jmp .L23

.L20:
	 movq 64(%rsp), %R8
	 cmpq $1, %R8
	 jne .L24
	 jmp .L21

.L23:
	 jmp .L24

.L24:
	 movq $4, 112(%rsp)
	 jmp .L25

.L25:
	 movq 112(%rsp), %rdi
	 callq bx0_print
	 jmp .L26

.L14:
	 jmp .L26

.L26:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
