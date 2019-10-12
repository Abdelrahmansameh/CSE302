 .file " test/operations.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $288, %rsp 
jmp .L1 
.L1:
	 movq $10, 0(%rsp)
	 jmp .L2

.L2:
	 movq 0(%rsp), %R8
 movq %R8, 64(%rsp)
	 jmp .L3

.L3:
	 movq 64(%rsp), %rdi
	 callq bx0_print
	 jmp .L4

.L4:
	 movq $2, 72(%rsp)
	 jmp .L5

.L5:
	 movq 0(%rsp), %R8
 movq %R8, 80(%rsp)
	 jmp .L6

.L6:
	 movq 80(%rsp), %R8
 	 movq 72(%rsp), %rax
	 imulq %R8
 	 movq %rax, 8(%rsp)

.L7:
	 movq 8(%rsp), %R8
 movq %R8, 88(%rsp)
	 jmp .L8

.L8:
	 movq 88(%rsp), %rdi
	 callq bx0_print
	 jmp .L9

.L9:
	 movq 8(%rsp), %R8
 movq %R8, 96(%rsp)
	 jmp .L10

.L10:
	 movq $2, 104(%rsp)
	 jmp .L11

.L11:
	 movq 104(%rsp), %R8
 	 movq 96(%rsp), %rax
	 cqo
 idivq %R8
 	 movq %rax, 16(%rsp)

.L12:
	 movq 16(%rsp), %R8
 movq %R8, 112(%rsp)
	 jmp .L13

.L13:
	 movq 112(%rsp), %rdi
	 callq bx0_print
	 jmp .L14

.L14:
	 movq 16(%rsp), %R8
 movq %R8, 136(%rsp)
	 jmp .L15

.L15:
	 movq 0(%rsp), %R8
 movq %R8, 144(%rsp)
	 jmp .L16

.L16:
	 movq 144(%rsp), %R8
 	 movq 136(%rsp), %R9
	 subq %R8, %R9
 	 movq %R9, 120(%rsp) 

.L17:
	 movq 8(%rsp), %R8
 movq %R8, 128(%rsp)
	 jmp .L18

.L18:
	 movq 128(%rsp), %R8
 	 movq 120(%rsp), %R9
	 subq %R8, %R9
 	 movq %R9, 24(%rsp) 

.L19:
	 movq 24(%rsp), %R8
 movq %R8, 152(%rsp)
	 jmp .L20

.L20:
	 movq 152(%rsp), %rdi
	 callq bx0_print
	 jmp .L21

.L21:
	 movq 24(%rsp), %R8
 movq %R8, 160(%rsp)
	 jmp .L22

.L22:
	 movq 24(%rsp), %R8
 movq %R8, 168(%rsp)
	 jmp .L23

.L23:
	 movq 168(%rsp), %R8
 	 movq 160(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 32(%rsp) 

.L24:
	 movq 32(%rsp), %R8
 movq %R8, 176(%rsp)
	 jmp .L25

.L25:
	 movq 176(%rsp), %rdi
	 callq bx0_print
	 jmp .L26

.L26:
	 movq 32(%rsp), %R8
 movq %R8, 184(%rsp)
	 jmp .L27

.L27:
	 movq 184 (%rsp), %R8
	 negq %R8
	 movq %R8, 40(%rsp)
	 jmp .L28

.L28:
	 movq 40(%rsp), %R8
 movq %R8, 192(%rsp)
	 jmp .L29

.L29:
	 movq 192(%rsp), %rdi
	 callq bx0_print
	 jmp .L30

.L30:
	 movq 0(%rsp), %R8
 movq %R8, 200(%rsp)
	 jmp .L31

.L31:
	 movq 8(%rsp), %R8
 movq %R8, 216(%rsp)
	 jmp .L32

.L32:
	 movq $2, 224(%rsp)
	 jmp .L33

.L33:
	 movq 224(%rsp), %R8
 	 movq 216(%rsp), %rax
	 imulq %R8
 	 movq %rax, 208(%rsp)

.L34:
	 movq 208(%rsp), %R8
 	 movq 200(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 48(%rsp) 

.L35:
	 movq 48(%rsp), %R8
 movq %R8, 232(%rsp)
	 jmp .L36

.L36:
	 movq 232(%rsp), %rdi
	 callq bx0_print
	 jmp .L37

.L37:
	 movq 0(%rsp), %R8
 movq %R8, 256(%rsp)
	 jmp .L38

.L38:
	 movq 8(%rsp), %R8
 movq %R8, 264(%rsp)
	 jmp .L39

.L39:
	 movq 264(%rsp), %R8
 	 movq 256(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 240(%rsp) 

.L40:
	 movq $2, 248(%rsp)
	 jmp .L41

.L41:
	 movq 248(%rsp), %R8
 	 movq 240(%rsp), %rax
	 imulq %R8
 	 movq %rax, 56(%rsp)

.L42:
	 movq 56(%rsp), %R8
 movq %R8, 272(%rsp)
	 jmp .L43

.L43:
	 movq 272(%rsp), %rdi
	 callq bx0_print
	 jmp .L44

.L44:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
