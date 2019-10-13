 .file " test/fib.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $280, %rsp 
jmp .L74
.L2:
	 movq 0(%rsp), %R8
 	 movq %R8, 24(%rsp)
	 jmp .L1

.L1:
	 movq 24(%rsp), %rdi
	 callq bx0_print
	 jmp .L0

.L3:
	 movq 40(%rsp), %R8
 	 movq 32(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 8(%rsp) 
	 jmp .L2

.L4:
	 movq 16(%rsp), %R8
 	 movq %R8, 40(%rsp)
	 jmp .L3

.L5:
	 movq 8(%rsp), %R8
 	 movq %R8, 32(%rsp)
	 jmp .L4

.L6:
	 movq 8(%rsp), %R8
 	 movq %R8, 0(%rsp)
	 jmp .L5

.L7:
	 movq 0(%rsp), %R8
 	 movq %R8, 16(%rsp)
	 jmp .L6

.L9:
	 movq 0(%rsp), %R8
 	 movq %R8, 48(%rsp)
	 jmp .L8

.L8:
	 movq 48(%rsp), %rdi
	 callq bx0_print
	 jmp .L7

.L10:
	 movq 64(%rsp), %R8
 	 movq 56(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 8(%rsp) 
	 jmp .L9

.L11:
	 movq 16(%rsp), %R8
 	 movq %R8, 64(%rsp)
	 jmp .L10

.L12:
	 movq 8(%rsp), %R8
 	 movq %R8, 56(%rsp)
	 jmp .L11

.L13:
	 movq 8(%rsp), %R8
 	 movq %R8, 0(%rsp)
	 jmp .L12

.L14:
	 movq 0(%rsp), %R8
 	 movq %R8, 16(%rsp)
	 jmp .L13

.L16:
	 movq 0(%rsp), %R8
 	 movq %R8, 72(%rsp)
	 jmp .L15

.L15:
	 movq 72(%rsp), %rdi
	 callq bx0_print
	 jmp .L14

.L17:
	 movq 88(%rsp), %R8
 	 movq 80(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 8(%rsp) 
	 jmp .L16

.L18:
	 movq 16(%rsp), %R8
 	 movq %R8, 88(%rsp)
	 jmp .L17

.L19:
	 movq 8(%rsp), %R8
 	 movq %R8, 80(%rsp)
	 jmp .L18

.L20:
	 movq 8(%rsp), %R8
 	 movq %R8, 0(%rsp)
	 jmp .L19

.L21:
	 movq 0(%rsp), %R8
 	 movq %R8, 16(%rsp)
	 jmp .L20

.L23:
	 movq 0(%rsp), %R8
 	 movq %R8, 96(%rsp)
	 jmp .L22

.L22:
	 movq 96(%rsp), %rdi
	 callq bx0_print
	 jmp .L21

.L24:
	 movq 112(%rsp), %R8
 	 movq 104(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 8(%rsp) 
	 jmp .L23

.L25:
	 movq 16(%rsp), %R8
 	 movq %R8, 112(%rsp)
	 jmp .L24

.L26:
	 movq 8(%rsp), %R8
 	 movq %R8, 104(%rsp)
	 jmp .L25

.L27:
	 movq 8(%rsp), %R8
 	 movq %R8, 0(%rsp)
	 jmp .L26

.L28:
	 movq 0(%rsp), %R8
 	 movq %R8, 16(%rsp)
	 jmp .L27

.L30:
	 movq 0(%rsp), %R8
 	 movq %R8, 120(%rsp)
	 jmp .L29

.L29:
	 movq 120(%rsp), %rdi
	 callq bx0_print
	 jmp .L28

.L31:
	 movq 136(%rsp), %R8
 	 movq 128(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 8(%rsp) 
	 jmp .L30

.L32:
	 movq 16(%rsp), %R8
 	 movq %R8, 136(%rsp)
	 jmp .L31

.L33:
	 movq 8(%rsp), %R8
 	 movq %R8, 128(%rsp)
	 jmp .L32

.L34:
	 movq 8(%rsp), %R8
 	 movq %R8, 0(%rsp)
	 jmp .L33

.L35:
	 movq 0(%rsp), %R8
 	 movq %R8, 16(%rsp)
	 jmp .L34

.L37:
	 movq 0(%rsp), %R8
 	 movq %R8, 144(%rsp)
	 jmp .L36

.L36:
	 movq 144(%rsp), %rdi
	 callq bx0_print
	 jmp .L35

.L38:
	 movq 160(%rsp), %R8
 	 movq 152(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 8(%rsp) 
	 jmp .L37

.L39:
	 movq 16(%rsp), %R8
 	 movq %R8, 160(%rsp)
	 jmp .L38

.L40:
	 movq 8(%rsp), %R8
 	 movq %R8, 152(%rsp)
	 jmp .L39

.L41:
	 movq 8(%rsp), %R8
 	 movq %R8, 0(%rsp)
	 jmp .L40

.L42:
	 movq 0(%rsp), %R8
 	 movq %R8, 16(%rsp)
	 jmp .L41

.L44:
	 movq 0(%rsp), %R8
 	 movq %R8, 168(%rsp)
	 jmp .L43

.L43:
	 movq 168(%rsp), %rdi
	 callq bx0_print
	 jmp .L42

.L45:
	 movq 184(%rsp), %R8
 	 movq 176(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 8(%rsp) 
	 jmp .L44

.L46:
	 movq 16(%rsp), %R8
 	 movq %R8, 184(%rsp)
	 jmp .L45

.L47:
	 movq 8(%rsp), %R8
 	 movq %R8, 176(%rsp)
	 jmp .L46

.L48:
	 movq 8(%rsp), %R8
 	 movq %R8, 0(%rsp)
	 jmp .L47

.L49:
	 movq 0(%rsp), %R8
 	 movq %R8, 16(%rsp)
	 jmp .L48

.L51:
	 movq 0(%rsp), %R8
 	 movq %R8, 192(%rsp)
	 jmp .L50

.L50:
	 movq 192(%rsp), %rdi
	 callq bx0_print
	 jmp .L49

.L52:
	 movq 208(%rsp), %R8
 	 movq 200(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 8(%rsp) 
	 jmp .L51

.L53:
	 movq 16(%rsp), %R8
 	 movq %R8, 208(%rsp)
	 jmp .L52

.L54:
	 movq 8(%rsp), %R8
 	 movq %R8, 200(%rsp)
	 jmp .L53

.L55:
	 movq 8(%rsp), %R8
 	 movq %R8, 0(%rsp)
	 jmp .L54

.L56:
	 movq 0(%rsp), %R8
 	 movq %R8, 16(%rsp)
	 jmp .L55

.L58:
	 movq 0(%rsp), %R8
 	 movq %R8, 216(%rsp)
	 jmp .L57

.L57:
	 movq 216(%rsp), %rdi
	 callq bx0_print
	 jmp .L56

.L59:
	 movq 232(%rsp), %R8
 	 movq 224(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 8(%rsp) 
	 jmp .L58

.L60:
	 movq 16(%rsp), %R8
 	 movq %R8, 232(%rsp)
	 jmp .L59

.L61:
	 movq 8(%rsp), %R8
 	 movq %R8, 224(%rsp)
	 jmp .L60

.L62:
	 movq 8(%rsp), %R8
 	 movq %R8, 0(%rsp)
	 jmp .L61

.L63:
	 movq 0(%rsp), %R8
 	 movq %R8, 16(%rsp)
	 jmp .L62

.L65:
	 movq 0(%rsp), %R8
 	 movq %R8, 240(%rsp)
	 jmp .L64

.L64:
	 movq 240(%rsp), %rdi
	 callq bx0_print
	 jmp .L63

.L66:
	 movq 256(%rsp), %R8
 	 movq 248(%rsp), %R9
	 addq %R8, %R9
 	 movq %R9, 8(%rsp) 
	 jmp .L65

.L67:
	 movq 16(%rsp), %R8
 	 movq %R8, 256(%rsp)
	 jmp .L66

.L68:
	 movq 8(%rsp), %R8
 	 movq %R8, 248(%rsp)
	 jmp .L67

.L69:
	 movq 8(%rsp), %R8
 	 movq %R8, 0(%rsp)
	 jmp .L68

.L70:
	 movq 0(%rsp), %R8
 	 movq %R8, 16(%rsp)
	 jmp .L69

.L72:
	 movq 0(%rsp), %R8
 	 movq %R8, 264(%rsp)
	 jmp .L71

.L71:
	 movq 264(%rsp), %rdi
	 callq bx0_print
	 jmp .L70

.L73:
	 movq $1, 8(%rsp)
	 jmp .L72

.L74:
	 movq $0, 0(%rsp)
	 jmp .L73

.L0:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
