 .file " test/test3.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $72, %rsp 
jmp .L31
.L3:
	 movq $1, 40(%rsp)
	 jmp .L1

.L1:
	 movq 40(%rsp), %rdi
	 callq bx0_print
	 jmp .L0

.L4:
	 movq $0, 40(%rsp)
	 jmp .L2

.L2:
	 movq 40(%rsp), %rdi
	 callq bx0_print
	 jmp .L0

.L5:
	 movq 32(%rsp), %R8
	 cmpq $1, %R8
	 jz .L3
	 jmp .L4

.L6:
	 movq $1, 32(%rsp)
	 jmp .L5

.L7:
	 movq $0, 32(%rsp)
	 jmp .L5

.L8:
	 movq 24(%rsp), %R8
	 cmpq $1, %R8
	 jz .L6
	 jmp .L7

.L9:
	 movq 16(%rsp), %R8
	 cmpq $1, %R8
	 jz .L8
	 jmp .L7

.L10:
	 movq 16(%rsp), %R8
	 cmpq $1, %R8
	 jz .L8
	 jmp .L9

.L13:
	 movq $1, 48(%rsp)
	 jmp .L11

.L11:
	 movq 48(%rsp), %rdi
	 callq bx0_print
	 jmp .L10

.L14:
	 movq $0, 48(%rsp)
	 jmp .L12

.L12:
	 movq 48(%rsp), %rdi
	 callq bx0_print
	 jmp .L10

.L15:
	 movq 24(%rsp), %R8
	 cmpq $1, %R8
	 jz .L13
	 jmp .L14

.L18:
	 movq $1, 56(%rsp)
	 jmp .L16

.L16:
	 movq 56(%rsp), %rdi
	 callq bx0_print
	 jmp .L15

.L19:
	 movq $0, 56(%rsp)
	 jmp .L17

.L17:
	 movq 56(%rsp), %rdi
	 callq bx0_print
	 jmp .L15

.L20:
	 movq 16(%rsp), %R8
	 cmpq $1, %R8
	 jz .L18
	 jmp .L19

.L21:
	 movq $1, 24(%rsp)
	 jmp .L20

.L22:
	 movq $0, 24(%rsp)
	 jmp .L20

.L23:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L21
	 jmp .L22

.L24:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L23
	 jmp .L22

.L25:
	 movq $1, 16(%rsp)
	 jmp .L24

.L26:
	 movq $0, 16(%rsp)
	 jmp .L24

.L27:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L25
	 jmp .L26

.L28:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L25
	 jmp .L27

.L29:
	 movq $1, 8(%rsp)
	 jmp .L28

.L30:
	 movq $0, 8(%rsp)
	 jmp .L28

.L31:
	 movq $1, 0(%rsp)
	 jmp .L30

.L32:
	 movq $0, 0(%rsp)
	 jmp .L30

.L0:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
