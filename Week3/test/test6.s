 .file " test/test6.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $288, %rsp 
jmp .L1 
.L1:
	 movq $1, 0(%rsp)
	 jmp .L2

.L2:
	 movq 0(%rsp), %R8
 movq %R8, 16(%rsp)
	 jmp .L3

.L3:
	 movq 16 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 8(%rsp)
	 jmp .L4

.L4:
	 movq $1, 24(%rsp)
	 jmp .L5

.L5:
	 movq $10, 32(%rsp)
	 jmp .L6

.L6:
	 movq $0, 40(%rsp)
	 jmp .L7

.L7:
	 movq $1, 48(%rsp)
	 jmp .L8

.L8:
	 movq $1, 56(%rsp)
	 jmp .L9

.L9:
	 movq 0(%rsp), %R8
 movq %R8, 80(%rsp)
	 jmp .L10

.L11:
	 movq 40(%rsp), %R8
 movq %R8, 88(%rsp)
	 jmp .L12

.L12:
	 movq 88(%rsp), %rdi
	 callq bx0_print
	 jmp .L13

.L13:
	 movq 48(%rsp), %R8
 movq %R8, 96(%rsp)
	 jmp .L14

.L14:
	 movq 96(%rsp), %rdi
	 callq bx0_print
	 jmp .L15

.L15:
	 movq 24(%rsp), %R8
 movq %R8, 112(%rsp)
	 jmp .L16

.L16:
	 movq 32(%rsp), %R8
 movq %R8, 120(%rsp)
	 jmp .L17

.L17:
	 movq $1, 104(%rsp)
	 movq 120(%rsp), %R8
 	 movq 112(%rsp), %R9
	 cmpq %R8, %R9
	 jl .Lend17
	 movq $0, 104(%rsp)
.Lend17:
	 jmp .L18

.L19:
	 movq 48(%rsp), %R8
 movq %R8, 64(%rsp)
	 jmp .L20

.L20:
	 movq 40(%rsp), %R8
 movq %R8, 128(%rsp)
	 jmp .L21

.L21:
	 movq 48(%rsp), %R8
 movq %R8, 136(%rsp)
	 jmp .L22

.L22:
	 movq 136(%rsp), %R8
 	 movq 128(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 48(%rsp) 

.L23:
	 movq 64(%rsp), %R8
 movq %R8, 40(%rsp)
	 jmp .L24

.L24:
	 movq 48(%rsp), %R8
 movq %R8, 144(%rsp)
	 jmp .L25

.L25:
	 movq 144(%rsp), %rdi
	 callq bx0_print
	 jmp .L26

.L26:
	 movq 24(%rsp), %R8
 movq %R8, 152(%rsp)
	 jmp .L27

.L27:
	 movq $1, 160(%rsp)
	 jmp .L28

.L28:
	 movq 160(%rsp), %R8
 	 movq 152(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 24(%rsp) 

.L29:
	 jmp .L19

.L18:
	 movq 104(%rsp), %R8
	 cmpq $1, %R8
	 jne .L30
	 jmp .L19

.L10:
	 movq 80(%rsp), %R8
	 cmpq $1, %R8
	 jne .L31
	 jmp .L11

.L30:
	 jmp .L31

.L31:
	 movq 8(%rsp), %R8
 movq %R8, 168(%rsp)
	 jmp .L32

.L33:
	 movq 40(%rsp), %R8
 movq %R8, 176(%rsp)
	 jmp .L34

.L34:
	 movq 176(%rsp), %rdi
	 callq bx0_print
	 jmp .L35

.L35:
	 movq 48(%rsp), %R8
 movq %R8, 184(%rsp)
	 jmp .L36

.L36:
	 movq 184(%rsp), %rdi
	 callq bx0_print
	 jmp .L37

.L37:
	 movq 56(%rsp), %R8
 movq %R8, 192(%rsp)
	 jmp .L38

.L38:
	 movq 192(%rsp), %rdi
	 callq bx0_print
	 jmp .L39

.L39:
	 movq 24(%rsp), %R8
 movq %R8, 208(%rsp)
	 jmp .L40

.L40:
	 movq 32(%rsp), %R8
 movq %R8, 216(%rsp)
	 jmp .L41

.L41:
	 movq $1, 200(%rsp)
	 movq 216(%rsp), %R8
 	 movq 208(%rsp), %R9
	 cmpq %R8, %R9
	 jl .Lend41
	 movq $0, 200(%rsp)
.Lend41:
	 jmp .L42

.L43:
	 movq 56(%rsp), %R8
 movq %R8, 64(%rsp)
	 jmp .L44

.L44:
	 movq 48(%rsp), %R8
 movq %R8, 72(%rsp)
	 jmp .L45

.L45:
	 movq 40(%rsp), %R8
 movq %R8, 240(%rsp)
	 jmp .L46

.L46:
	 movq 48(%rsp), %R8
 movq %R8, 248(%rsp)
	 jmp .L47

.L47:
	 movq 248(%rsp), %R8
 	 movq 240(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 224(%rsp) 

.L48:
	 movq 56(%rsp), %R8
 movq %R8, 232(%rsp)
	 jmp .L49

.L49:
	 movq 232(%rsp), %R8
 	 movq 224(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 56(%rsp) 

.L50:
	 movq 48(%rsp), %R8
 movq %R8, 40(%rsp)
	 jmp .L51

.L51:
	 movq 64(%rsp), %R8
 movq %R8, 48(%rsp)
	 jmp .L52

.L52:
	 movq 56(%rsp), %R8
 movq %R8, 256(%rsp)
	 jmp .L53

.L53:
	 movq 256(%rsp), %rdi
	 callq bx0_print
	 jmp .L54

.L54:
	 movq 24(%rsp), %R8
 movq %R8, 264(%rsp)
	 jmp .L55

.L55:
	 movq $1, 272(%rsp)
	 jmp .L56

.L56:
	 movq 272(%rsp), %R8
 	 movq 264(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 24(%rsp) 

.L57:
	 jmp .L43

.L42:
	 movq 200(%rsp), %R8
	 cmpq $1, %R8
	 jne .L58
	 jmp .L43

.L32:
	 movq 168(%rsp), %R8
	 cmpq $1, %R8
	 jne .L59
	 jmp .L33

.L58:
	 jmp .L59

.L59:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
