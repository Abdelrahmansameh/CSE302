 .file " test/bigbool.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $3648, %rsp 
jmp .L1 
.L1:
	 movq $1, 0(%rsp)
	 jmp .L2

.L2:
	 movq $0, 8(%rsp)
	 jmp .L3

.L3:
	 movq 0(%rsp), %R8
 movq %R8, 224(%rsp)
	 jmp .L4

.L4:
	 movq 8(%rsp), %R8
 movq %R8, 232(%rsp)
	 jmp .L5

.L5:
	 movq $1, 208(%rsp)
	 movq 232(%rsp), %R8
 	 movq 224(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend5
	 movq $0, 208(%rsp)
.Lend5:
	 jmp .L6

.L6:
	 movq 0(%rsp), %R8
 movq %R8, 240(%rsp)
	 jmp .L7

.L7:
	 movq 8(%rsp), %R8
 movq %R8, 248(%rsp)
	 jmp .L8

.L8:
	 movq $1, 216(%rsp)
	 movq 248(%rsp), %R8
 	 movq 240(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend8
	 movq $0, 216(%rsp)
.Lend8:
	 jmp .L9

.L9:
	 movq 216(%rsp), %R8
 	 movq 208(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 200(%rsp) 

.L10:
	 movq 200 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 184(%rsp)
	 jmp .L11

.L11:
	 movq 0(%rsp), %R8
 movq %R8, 256(%rsp)
	 jmp .L12

.L12:
	 movq 8(%rsp), %R8
 movq %R8, 264(%rsp)
	 jmp .L13

.L13:
	 movq $1, 192(%rsp)
	 movq 264(%rsp), %R8
 	 movq 256(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend13
	 movq $0, 192(%rsp)
.Lend13:
	 jmp .L14

.L14:
	 movq 192(%rsp), %R8
 	 movq 184(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 168(%rsp) 

.L15:
	 movq 0(%rsp), %R8
 movq %R8, 272(%rsp)
	 jmp .L16

.L16:
	 movq 8(%rsp), %R8
 movq %R8, 280(%rsp)
	 jmp .L17

.L17:
	 movq $1, 176(%rsp)
	 movq 280(%rsp), %R8
 	 movq 272(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend17
	 movq $0, 176(%rsp)
.Lend17:
	 jmp .L18

.L18:
	 movq 176(%rsp), %R8
 	 movq 168(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 152(%rsp) 

.L19:
	 movq 0(%rsp), %R8
 movq %R8, 296(%rsp)
	 jmp .L20

.L20:
	 movq 8(%rsp), %R8
 movq %R8, 304(%rsp)
	 jmp .L21

.L21:
	 movq $1, 288(%rsp)
	 movq 304(%rsp), %R8
 	 movq 296(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend21
	 movq $0, 288(%rsp)
.Lend21:
	 jmp .L22

.L22:
	 movq 288 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 160(%rsp)
	 jmp .L23

.L23:
	 movq 160(%rsp), %R8
 	 movq 152(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 136(%rsp) 

.L24:
	 movq 0(%rsp), %R8
 movq %R8, 368(%rsp)
	 jmp .L25

.L25:
	 movq 8(%rsp), %R8
 movq %R8, 376(%rsp)
	 jmp .L26

.L26:
	 movq $1, 360(%rsp)
	 movq 376(%rsp), %R8
 	 movq 368(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend26
	 movq $0, 360(%rsp)
.Lend26:
	 jmp .L27

.L27:
	 movq 360 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 344(%rsp)
	 jmp .L28

.L28:
	 movq 0(%rsp), %R8
 movq %R8, 392(%rsp)
	 jmp .L29

.L29:
	 movq 8(%rsp), %R8
 movq %R8, 400(%rsp)
	 jmp .L30

.L30:
	 movq $1, 384(%rsp)
	 movq 400(%rsp), %R8
 	 movq 392(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend30
	 movq $0, 384(%rsp)
.Lend30:
	 jmp .L31

.L31:
	 movq 384 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 352(%rsp)
	 jmp .L32

.L32:
	 movq 352(%rsp), %R8
 	 movq 344(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 328(%rsp) 

.L33:
	 movq 0(%rsp), %R8
 movq %R8, 424(%rsp)
	 jmp .L34

.L34:
	 movq 8(%rsp), %R8
 movq %R8, 432(%rsp)
	 jmp .L35

.L35:
	 movq $1, 408(%rsp)
	 movq 432(%rsp), %R8
 	 movq 424(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend35
	 movq $0, 408(%rsp)
.Lend35:
	 jmp .L36

.L36:
	 movq 0(%rsp), %R8
 movq %R8, 440(%rsp)
	 jmp .L37

.L37:
	 movq 8(%rsp), %R8
 movq %R8, 448(%rsp)
	 jmp .L38

.L38:
	 movq $1, 416(%rsp)
	 movq 448(%rsp), %R8
 	 movq 440(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend38
	 movq $0, 416(%rsp)
.Lend38:
	 jmp .L39

.L39:
	 movq 416(%rsp), %R8
 	 movq 408(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 336(%rsp) 

.L40:
	 movq 336(%rsp), %R8
 	 movq 328(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 312(%rsp) 

.L41:
	 movq 0(%rsp), %R8
 movq %R8, 472(%rsp)
	 jmp .L42

.L42:
	 movq 8(%rsp), %R8
 movq %R8, 480(%rsp)
	 jmp .L43

.L43:
	 movq $1, 456(%rsp)
	 movq 480(%rsp), %R8
 	 movq 472(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend43
	 movq $0, 456(%rsp)
.Lend43:
	 jmp .L44

.L44:
	 movq 0(%rsp), %R8
 movq %R8, 488(%rsp)
	 jmp .L45

.L45:
	 movq 8(%rsp), %R8
 movq %R8, 496(%rsp)
	 jmp .L46

.L46:
	 movq $1, 464(%rsp)
	 movq 496(%rsp), %R8
 	 movq 488(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend46
	 movq $0, 464(%rsp)
.Lend46:
	 jmp .L47

.L47:
	 movq 464(%rsp), %R8
 	 movq 456(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 320(%rsp) 

.L48:
	 movq 320(%rsp), %R8
 	 movq 312(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 144(%rsp) 

.L49:
	 movq 144(%rsp), %R8
 	 movq 136(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 120(%rsp) 

.L50:
	 movq 0(%rsp), %R8
 movq %R8, 656(%rsp)
	 jmp .L51

.L51:
	 movq 8(%rsp), %R8
 movq %R8, 664(%rsp)
	 jmp .L52

.L52:
	 movq $1, 648(%rsp)
	 movq 664(%rsp), %R8
 	 movq 656(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend52
	 movq $0, 648(%rsp)
.Lend52:
	 jmp .L53

.L53:
	 movq 648 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 632(%rsp)
	 jmp .L54

.L54:
	 movq 0(%rsp), %R8
 movq %R8, 672(%rsp)
	 jmp .L55

.L55:
	 movq 8(%rsp), %R8
 movq %R8, 680(%rsp)
	 jmp .L56

.L56:
	 movq $1, 640(%rsp)
	 movq 680(%rsp), %R8
 	 movq 672(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend56
	 movq $0, 640(%rsp)
.Lend56:
	 jmp .L57

.L57:
	 movq 640(%rsp), %R8
 	 movq 632(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 616(%rsp) 

.L58:
	 movq 0(%rsp), %R8
 movq %R8, 688(%rsp)
	 jmp .L59

.L59:
	 movq 8(%rsp), %R8
 movq %R8, 696(%rsp)
	 jmp .L60

.L60:
	 movq $1, 624(%rsp)
	 movq 696(%rsp), %R8
 	 movq 688(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend60
	 movq $0, 624(%rsp)
.Lend60:
	 jmp .L61

.L61:
	 movq 624(%rsp), %R8
 	 movq 616(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 600(%rsp) 

.L62:
	 movq 0(%rsp), %R8
 movq %R8, 704(%rsp)
	 jmp .L63

.L63:
	 movq 8(%rsp), %R8
 movq %R8, 712(%rsp)
	 jmp .L64

.L64:
	 movq $1, 608(%rsp)
	 movq 712(%rsp), %R8
 	 movq 704(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend64
	 movq $0, 608(%rsp)
.Lend64:
	 jmp .L65

.L65:
	 movq 608(%rsp), %R8
 	 movq 600(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 584(%rsp) 

.L66:
	 movq 0(%rsp), %R8
 movq %R8, 720(%rsp)
	 jmp .L67

.L67:
	 movq 8(%rsp), %R8
 movq %R8, 728(%rsp)
	 jmp .L68

.L68:
	 movq $1, 592(%rsp)
	 movq 728(%rsp), %R8
 	 movq 720(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend68
	 movq $0, 592(%rsp)
.Lend68:
	 jmp .L69

.L69:
	 movq 592(%rsp), %R8
 	 movq 584(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 568(%rsp) 

.L70:
	 movq 0(%rsp), %R8
 movq %R8, 736(%rsp)
	 jmp .L71

.L71:
	 movq 8(%rsp), %R8
 movq %R8, 744(%rsp)
	 jmp .L72

.L72:
	 movq $1, 576(%rsp)
	 movq 744(%rsp), %R8
 	 movq 736(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend72
	 movq $0, 576(%rsp)
.Lend72:
	 jmp .L73

.L73:
	 movq 576(%rsp), %R8
 	 movq 568(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 552(%rsp) 

.L74:
	 movq 0(%rsp), %R8
 movq %R8, 752(%rsp)
	 jmp .L75

.L75:
	 movq 8(%rsp), %R8
 movq %R8, 760(%rsp)
	 jmp .L76

.L76:
	 movq $1, 560(%rsp)
	 movq 760(%rsp), %R8
 	 movq 752(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend76
	 movq $0, 560(%rsp)
.Lend76:
	 jmp .L77

.L77:
	 movq 560(%rsp), %R8
 	 movq 552(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 536(%rsp) 

.L78:
	 movq 0(%rsp), %R8
 movq %R8, 784(%rsp)
	 jmp .L79

.L79:
	 movq 8(%rsp), %R8
 movq %R8, 792(%rsp)
	 jmp .L80

.L80:
	 movq $1, 768(%rsp)
	 movq 792(%rsp), %R8
 	 movq 784(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend80
	 movq $0, 768(%rsp)
.Lend80:
	 jmp .L81

.L81:
	 movq 0(%rsp), %R8
 movq %R8, 800(%rsp)
	 jmp .L82

.L82:
	 movq 8(%rsp), %R8
 movq %R8, 808(%rsp)
	 jmp .L83

.L83:
	 movq $1, 776(%rsp)
	 movq 808(%rsp), %R8
 	 movq 800(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend83
	 movq $0, 776(%rsp)
.Lend83:
	 jmp .L84

.L84:
	 movq 776(%rsp), %R8
 	 movq 768(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 544(%rsp) 

.L85:
	 movq 544(%rsp), %R8
 	 movq 536(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 520(%rsp) 

.L86:
	 movq 0(%rsp), %R8
 movq %R8, 832(%rsp)
	 jmp .L87

.L87:
	 movq 8(%rsp), %R8
 movq %R8, 840(%rsp)
	 jmp .L88

.L88:
	 movq $1, 816(%rsp)
	 movq 840(%rsp), %R8
 	 movq 832(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend88
	 movq $0, 816(%rsp)
.Lend88:
	 jmp .L89

.L89:
	 movq 0(%rsp), %R8
 movq %R8, 848(%rsp)
	 jmp .L90

.L90:
	 movq 8(%rsp), %R8
 movq %R8, 856(%rsp)
	 jmp .L91

.L91:
	 movq $1, 824(%rsp)
	 movq 856(%rsp), %R8
 	 movq 848(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend91
	 movq $0, 824(%rsp)
.Lend91:
	 jmp .L92

.L92:
	 movq 824(%rsp), %R8
 	 movq 816(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 528(%rsp) 

.L93:
	 movq 528(%rsp), %R8
 	 movq 520(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 504(%rsp) 

.L94:
	 movq 0(%rsp), %R8
 movq %R8, 880(%rsp)
	 jmp .L95

.L95:
	 movq 8(%rsp), %R8
 movq %R8, 888(%rsp)
	 jmp .L96

.L96:
	 movq $1, 872(%rsp)
	 movq 888(%rsp), %R8
 	 movq 880(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend96
	 movq $0, 872(%rsp)
.Lend96:
	 jmp .L97

.L97:
	 movq 872 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 864(%rsp)
	 jmp .L98

.L98:
	 movq 864 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 512(%rsp)
	 jmp .L99

.L99:
	 movq 512(%rsp), %R8
 	 movq 504(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 128(%rsp) 

.L100:
	 movq 128(%rsp), %R8
 	 movq 120(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 112(%rsp) 

.L101:
	 movq 112 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 96(%rsp)
	 jmp .L102

.L102:
	 movq 0(%rsp), %R8
 movq %R8, 984(%rsp)
	 jmp .L103

.L103:
	 movq 8(%rsp), %R8
 movq %R8, 992(%rsp)
	 jmp .L104

.L104:
	 movq $1, 968(%rsp)
	 movq 992(%rsp), %R8
 	 movq 984(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend104
	 movq $0, 968(%rsp)
.Lend104:
	 jmp .L105

.L105:
	 movq 0(%rsp), %R8
 movq %R8, 1000(%rsp)
	 jmp .L106

.L106:
	 movq 8(%rsp), %R8
 movq %R8, 1008(%rsp)
	 jmp .L107

.L107:
	 movq $1, 976(%rsp)
	 movq 1008(%rsp), %R8
 	 movq 1000(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend107
	 movq $0, 976(%rsp)
.Lend107:
	 jmp .L108

.L108:
	 movq 976(%rsp), %R8
 	 movq 968(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 960(%rsp) 

.L109:
	 movq 960 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 944(%rsp)
	 jmp .L110

.L110:
	 movq 0(%rsp), %R8
 movq %R8, 1016(%rsp)
	 jmp .L111

.L111:
	 movq 8(%rsp), %R8
 movq %R8, 1024(%rsp)
	 jmp .L112

.L112:
	 movq $1, 952(%rsp)
	 movq 1024(%rsp), %R8
 	 movq 1016(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend112
	 movq $0, 952(%rsp)
.Lend112:
	 jmp .L113

.L113:
	 movq 952(%rsp), %R8
 	 movq 944(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 928(%rsp) 

.L114:
	 movq 0(%rsp), %R8
 movq %R8, 1032(%rsp)
	 jmp .L115

.L115:
	 movq 8(%rsp), %R8
 movq %R8, 1040(%rsp)
	 jmp .L116

.L116:
	 movq $1, 936(%rsp)
	 movq 1040(%rsp), %R8
 	 movq 1032(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend116
	 movq $0, 936(%rsp)
.Lend116:
	 jmp .L117

.L117:
	 movq 936(%rsp), %R8
 	 movq 928(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 912(%rsp) 

.L118:
	 movq 0(%rsp), %R8
 movq %R8, 1056(%rsp)
	 jmp .L119

.L119:
	 movq 8(%rsp), %R8
 movq %R8, 1064(%rsp)
	 jmp .L120

.L120:
	 movq $1, 1048(%rsp)
	 movq 1064(%rsp), %R8
 	 movq 1056(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend120
	 movq $0, 1048(%rsp)
.Lend120:
	 jmp .L121

.L121:
	 movq 1048 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 920(%rsp)
	 jmp .L122

.L122:
	 movq 920(%rsp), %R8
 	 movq 912(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 904(%rsp) 

.L123:
	 movq 904 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 896(%rsp)
	 jmp .L124

.L124:
	 movq 896 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 104(%rsp)
	 jmp .L125

.L125:
	 movq 104(%rsp), %R8
 	 movq 96(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 80(%rsp) 

.L126:
	 movq 0(%rsp), %R8
 movq %R8, 1152(%rsp)
	 jmp .L127

.L127:
	 movq 8(%rsp), %R8
 movq %R8, 1160(%rsp)
	 jmp .L128

.L128:
	 movq $1, 1136(%rsp)
	 movq 1160(%rsp), %R8
 	 movq 1152(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend128
	 movq $0, 1136(%rsp)
.Lend128:
	 jmp .L129

.L129:
	 movq 0(%rsp), %R8
 movq %R8, 1168(%rsp)
	 jmp .L130

.L130:
	 movq 8(%rsp), %R8
 movq %R8, 1176(%rsp)
	 jmp .L131

.L131:
	 movq $1, 1144(%rsp)
	 movq 1176(%rsp), %R8
 	 movq 1168(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend131
	 movq $0, 1144(%rsp)
.Lend131:
	 jmp .L132

.L132:
	 movq 1144(%rsp), %R8
 	 movq 1136(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1120(%rsp) 

.L133:
	 movq 0(%rsp), %R8
 movq %R8, 1184(%rsp)
	 jmp .L134

.L134:
	 movq 8(%rsp), %R8
 movq %R8, 1192(%rsp)
	 jmp .L135

.L135:
	 movq $1, 1128(%rsp)
	 movq 1192(%rsp), %R8
 	 movq 1184(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend135
	 movq $0, 1128(%rsp)
.Lend135:
	 jmp .L136

.L136:
	 movq 1128(%rsp), %R8
 	 movq 1120(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1104(%rsp) 

.L137:
	 movq 0(%rsp), %R8
 movq %R8, 1200(%rsp)
	 jmp .L138

.L138:
	 movq 8(%rsp), %R8
 movq %R8, 1208(%rsp)
	 jmp .L139

.L139:
	 movq $1, 1112(%rsp)
	 movq 1208(%rsp), %R8
 	 movq 1200(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend139
	 movq $0, 1112(%rsp)
.Lend139:
	 jmp .L140

.L140:
	 movq 1112(%rsp), %R8
 	 movq 1104(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1088(%rsp) 

.L141:
	 movq 0(%rsp), %R8
 movq %R8, 1240(%rsp)
	 jmp .L142

.L142:
	 movq 8(%rsp), %R8
 movq %R8, 1248(%rsp)
	 jmp .L143

.L143:
	 movq $1, 1224(%rsp)
	 movq 1248(%rsp), %R8
 	 movq 1240(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend143
	 movq $0, 1224(%rsp)
.Lend143:
	 jmp .L144

.L144:
	 movq 0(%rsp), %R8
 movq %R8, 1256(%rsp)
	 jmp .L145

.L145:
	 movq 8(%rsp), %R8
 movq %R8, 1264(%rsp)
	 jmp .L146

.L146:
	 movq $1, 1232(%rsp)
	 movq 1264(%rsp), %R8
 	 movq 1256(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend146
	 movq $0, 1232(%rsp)
.Lend146:
	 jmp .L147

.L147:
	 movq 1232(%rsp), %R8
 	 movq 1224(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1216(%rsp) 

.L148:
	 movq 1216 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1096(%rsp)
	 jmp .L149

.L149:
	 movq 1096(%rsp), %R8
 	 movq 1088(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1080(%rsp) 

.L150:
	 movq 1080 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1072(%rsp)
	 jmp .L151

.L151:
	 movq 1072 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 88(%rsp)
	 jmp .L152

.L152:
	 movq 88(%rsp), %R8
 	 movq 80(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 64(%rsp) 

.L153:
	 movq 0(%rsp), %R8
 movq %R8, 1408(%rsp)
	 jmp .L154

.L154:
	 movq 8(%rsp), %R8
 movq %R8, 1416(%rsp)
	 jmp .L155

.L155:
	 movq $1, 1392(%rsp)
	 movq 1416(%rsp), %R8
 	 movq 1408(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend155
	 movq $0, 1392(%rsp)
.Lend155:
	 jmp .L156

.L156:
	 movq 0(%rsp), %R8
 movq %R8, 1424(%rsp)
	 jmp .L157

.L157:
	 movq 8(%rsp), %R8
 movq %R8, 1432(%rsp)
	 jmp .L158

.L158:
	 movq $1, 1400(%rsp)
	 movq 1432(%rsp), %R8
 	 movq 1424(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend158
	 movq $0, 1400(%rsp)
.Lend158:
	 jmp .L159

.L159:
	 movq 1400(%rsp), %R8
 	 movq 1392(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1384(%rsp) 

.L160:
	 movq 1384 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1368(%rsp)
	 jmp .L161

.L161:
	 movq 0(%rsp), %R8
 movq %R8, 1472(%rsp)
	 jmp .L162

.L162:
	 movq 8(%rsp), %R8
 movq %R8, 1480(%rsp)
	 jmp .L163

.L163:
	 movq $1, 1456(%rsp)
	 movq 1480(%rsp), %R8
 	 movq 1472(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend163
	 movq $0, 1456(%rsp)
.Lend163:
	 jmp .L164

.L164:
	 movq 0(%rsp), %R8
 movq %R8, 1488(%rsp)
	 jmp .L165

.L165:
	 movq 8(%rsp), %R8
 movq %R8, 1496(%rsp)
	 jmp .L166

.L166:
	 movq $1, 1464(%rsp)
	 movq 1496(%rsp), %R8
 	 movq 1488(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend166
	 movq $0, 1464(%rsp)
.Lend166:
	 jmp .L167

.L167:
	 movq 1464(%rsp), %R8
 	 movq 1456(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1440(%rsp) 

.L168:
	 movq 0(%rsp), %R8
 movq %R8, 1512(%rsp)
	 jmp .L169

.L169:
	 movq 8(%rsp), %R8
 movq %R8, 1520(%rsp)
	 jmp .L170

.L170:
	 movq $1, 1504(%rsp)
	 movq 1520(%rsp), %R8
 	 movq 1512(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend170
	 movq $0, 1504(%rsp)
.Lend170:
	 jmp .L171

.L171:
	 movq 1504 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1448(%rsp)
	 jmp .L172

.L172:
	 movq 1448(%rsp), %R8
 	 movq 1440(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1376(%rsp) 

.L173:
	 movq 1376(%rsp), %R8
 	 movq 1368(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1352(%rsp) 

.L174:
	 movq 0(%rsp), %R8
 movq %R8, 1576(%rsp)
	 jmp .L175

.L175:
	 movq 8(%rsp), %R8
 movq %R8, 1584(%rsp)
	 jmp .L176

.L176:
	 movq $1, 1560(%rsp)
	 movq 1584(%rsp), %R8
 	 movq 1576(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend176
	 movq $0, 1560(%rsp)
.Lend176:
	 jmp .L177

.L177:
	 movq 0(%rsp), %R8
 movq %R8, 1592(%rsp)
	 jmp .L178

.L178:
	 movq 8(%rsp), %R8
 movq %R8, 1600(%rsp)
	 jmp .L179

.L179:
	 movq $1, 1568(%rsp)
	 movq 1600(%rsp), %R8
 	 movq 1592(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend179
	 movq $0, 1568(%rsp)
.Lend179:
	 jmp .L180

.L180:
	 movq 1568(%rsp), %R8
 	 movq 1560(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1544(%rsp) 

.L181:
	 movq 0(%rsp), %R8
 movq %R8, 1608(%rsp)
	 jmp .L182

.L182:
	 movq 8(%rsp), %R8
 movq %R8, 1616(%rsp)
	 jmp .L183

.L183:
	 movq $1, 1552(%rsp)
	 movq 1616(%rsp), %R8
 	 movq 1608(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend183
	 movq $0, 1552(%rsp)
.Lend183:
	 jmp .L184

.L184:
	 movq 1552(%rsp), %R8
 	 movq 1544(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1528(%rsp) 

.L185:
	 movq 0(%rsp), %R8
 movq %R8, 1624(%rsp)
	 jmp .L186

.L186:
	 movq 8(%rsp), %R8
 movq %R8, 1632(%rsp)
	 jmp .L187

.L187:
	 movq $1, 1536(%rsp)
	 movq 1632(%rsp), %R8
 	 movq 1624(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend187
	 movq $0, 1536(%rsp)
.Lend187:
	 jmp .L188

.L188:
	 movq 1536(%rsp), %R8
 	 movq 1528(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1360(%rsp) 

.L189:
	 movq 1360(%rsp), %R8
 	 movq 1352(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1336(%rsp) 

.L190:
	 movq 0(%rsp), %R8
 movq %R8, 1664(%rsp)
	 jmp .L191

.L191:
	 movq 8(%rsp), %R8
 movq %R8, 1672(%rsp)
	 jmp .L192

.L192:
	 movq $1, 1656(%rsp)
	 movq 1672(%rsp), %R8
 	 movq 1664(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend192
	 movq $0, 1656(%rsp)
.Lend192:
	 jmp .L193

.L193:
	 movq 1656 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1640(%rsp)
	 jmp .L194

.L194:
	 movq 0(%rsp), %R8
 movq %R8, 1688(%rsp)
	 jmp .L195

.L195:
	 movq 8(%rsp), %R8
 movq %R8, 1696(%rsp)
	 jmp .L196

.L196:
	 movq $1, 1680(%rsp)
	 movq 1696(%rsp), %R8
 	 movq 1688(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend196
	 movq $0, 1680(%rsp)
.Lend196:
	 jmp .L197

.L197:
	 movq 1680 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1648(%rsp)
	 jmp .L198

.L198:
	 movq 1648(%rsp), %R8
 	 movq 1640(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1344(%rsp) 

.L199:
	 movq 1344(%rsp), %R8
 	 movq 1336(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1320(%rsp) 

.L200:
	 movq 0(%rsp), %R8
 movq %R8, 1736(%rsp)
	 jmp .L201

.L201:
	 movq 8(%rsp), %R8
 movq %R8, 1744(%rsp)
	 jmp .L202

.L202:
	 movq $1, 1728(%rsp)
	 movq 1744(%rsp), %R8
 	 movq 1736(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend202
	 movq $0, 1728(%rsp)
.Lend202:
	 jmp .L203

.L203:
	 movq 1728 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1712(%rsp)
	 jmp .L204

.L204:
	 movq 0(%rsp), %R8
 movq %R8, 1768(%rsp)
	 jmp .L205

.L205:
	 movq 8(%rsp), %R8
 movq %R8, 1776(%rsp)
	 jmp .L206

.L206:
	 movq $1, 1752(%rsp)
	 movq 1776(%rsp), %R8
 	 movq 1768(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend206
	 movq $0, 1752(%rsp)
.Lend206:
	 jmp .L207

.L207:
	 movq 0(%rsp), %R8
 movq %R8, 1784(%rsp)
	 jmp .L208

.L208:
	 movq 8(%rsp), %R8
 movq %R8, 1792(%rsp)
	 jmp .L209

.L209:
	 movq $1, 1760(%rsp)
	 movq 1792(%rsp), %R8
 	 movq 1784(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend209
	 movq $0, 1760(%rsp)
.Lend209:
	 jmp .L210

.L210:
	 movq 1760(%rsp), %R8
 	 movq 1752(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1720(%rsp) 

.L211:
	 movq 1720(%rsp), %R8
 	 movq 1712(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1704(%rsp) 

.L212:
	 movq 1704 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1328(%rsp)
	 jmp .L213

.L213:
	 movq 1328(%rsp), %R8
 	 movq 1320(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1304(%rsp) 

.L214:
	 movq 0(%rsp), %R8
 movq %R8, 1856(%rsp)
	 jmp .L215

.L215:
	 movq 8(%rsp), %R8
 movq %R8, 1864(%rsp)
	 jmp .L216

.L216:
	 movq $1, 1840(%rsp)
	 movq 1864(%rsp), %R8
 	 movq 1856(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend216
	 movq $0, 1840(%rsp)
.Lend216:
	 jmp .L217

.L217:
	 movq 0(%rsp), %R8
 movq %R8, 1872(%rsp)
	 jmp .L218

.L218:
	 movq 8(%rsp), %R8
 movq %R8, 1880(%rsp)
	 jmp .L219

.L219:
	 movq $1, 1848(%rsp)
	 movq 1880(%rsp), %R8
 	 movq 1872(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend219
	 movq $0, 1848(%rsp)
.Lend219:
	 jmp .L220

.L220:
	 movq 1848(%rsp), %R8
 	 movq 1840(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1824(%rsp) 

.L221:
	 movq 0(%rsp), %R8
 movq %R8, 1888(%rsp)
	 jmp .L222

.L222:
	 movq 8(%rsp), %R8
 movq %R8, 1896(%rsp)
	 jmp .L223

.L223:
	 movq $1, 1832(%rsp)
	 movq 1896(%rsp), %R8
 	 movq 1888(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend223
	 movq $0, 1832(%rsp)
.Lend223:
	 jmp .L224

.L224:
	 movq 1832(%rsp), %R8
 	 movq 1824(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1808(%rsp) 

.L225:
	 movq 0(%rsp), %R8
 movq %R8, 1904(%rsp)
	 jmp .L226

.L226:
	 movq 8(%rsp), %R8
 movq %R8, 1912(%rsp)
	 jmp .L227

.L227:
	 movq $1, 1816(%rsp)
	 movq 1912(%rsp), %R8
 	 movq 1904(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend227
	 movq $0, 1816(%rsp)
.Lend227:
	 jmp .L228

.L228:
	 movq 1816(%rsp), %R8
 	 movq 1808(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1800(%rsp) 

.L229:
	 movq 1800 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1312(%rsp)
	 jmp .L230

.L230:
	 movq 1312(%rsp), %R8
 	 movq 1304(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1288(%rsp) 

.L231:
	 movq 0(%rsp), %R8
 movq %R8, 2000(%rsp)
	 jmp .L232

.L232:
	 movq 8(%rsp), %R8
 movq %R8, 2008(%rsp)
	 jmp .L233

.L233:
	 movq $1, 1984(%rsp)
	 movq 2008(%rsp), %R8
 	 movq 2000(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend233
	 movq $0, 1984(%rsp)
.Lend233:
	 jmp .L234

.L234:
	 movq 0(%rsp), %R8
 movq %R8, 2016(%rsp)
	 jmp .L235

.L235:
	 movq 8(%rsp), %R8
 movq %R8, 2024(%rsp)
	 jmp .L236

.L236:
	 movq $1, 1992(%rsp)
	 movq 2024(%rsp), %R8
 	 movq 2016(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend236
	 movq $0, 1992(%rsp)
.Lend236:
	 jmp .L237

.L237:
	 movq 1992(%rsp), %R8
 	 movq 1984(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 1976(%rsp) 

.L238:
	 movq 1976 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1960(%rsp)
	 jmp .L239

.L239:
	 movq 0(%rsp), %R8
 movq %R8, 2032(%rsp)
	 jmp .L240

.L240:
	 movq 8(%rsp), %R8
 movq %R8, 2040(%rsp)
	 jmp .L241

.L241:
	 movq $1, 1968(%rsp)
	 movq 2040(%rsp), %R8
 	 movq 2032(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend241
	 movq $0, 1968(%rsp)
.Lend241:
	 jmp .L242

.L242:
	 movq 1968(%rsp), %R8
 	 movq 1960(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1944(%rsp) 

.L243:
	 movq 0(%rsp), %R8
 movq %R8, 2048(%rsp)
	 jmp .L244

.L244:
	 movq 8(%rsp), %R8
 movq %R8, 2056(%rsp)
	 jmp .L245

.L245:
	 movq $1, 1952(%rsp)
	 movq 2056(%rsp), %R8
 	 movq 2048(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend245
	 movq $0, 1952(%rsp)
.Lend245:
	 jmp .L246

.L246:
	 movq 1952(%rsp), %R8
 	 movq 1944(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1928(%rsp) 

.L247:
	 movq 0(%rsp), %R8
 movq %R8, 2072(%rsp)
	 jmp .L248

.L248:
	 movq 8(%rsp), %R8
 movq %R8, 2080(%rsp)
	 jmp .L249

.L249:
	 movq $1, 2064(%rsp)
	 movq 2080(%rsp), %R8
 	 movq 2072(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend249
	 movq $0, 2064(%rsp)
.Lend249:
	 jmp .L250

.L250:
	 movq 2064 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1936(%rsp)
	 jmp .L251

.L251:
	 movq 1936(%rsp), %R8
 	 movq 1928(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1920(%rsp) 

.L252:
	 movq 1920 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1296(%rsp)
	 jmp .L253

.L253:
	 movq 1296(%rsp), %R8
 	 movq 1288(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 1272(%rsp) 

.L254:
	 movq 0(%rsp), %R8
 movq %R8, 2128(%rsp)
	 jmp .L255

.L255:
	 movq 8(%rsp), %R8
 movq %R8, 2136(%rsp)
	 jmp .L256

.L256:
	 movq $1, 2120(%rsp)
	 movq 2136(%rsp), %R8
 	 movq 2128(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend256
	 movq $0, 2120(%rsp)
.Lend256:
	 jmp .L257

.L257:
	 movq 2120 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2104(%rsp)
	 jmp .L258

.L258:
	 movq 0(%rsp), %R8
 movq %R8, 2160(%rsp)
	 jmp .L259

.L259:
	 movq 8(%rsp), %R8
 movq %R8, 2168(%rsp)
	 jmp .L260

.L260:
	 movq $1, 2144(%rsp)
	 movq 2168(%rsp), %R8
 	 movq 2160(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend260
	 movq $0, 2144(%rsp)
.Lend260:
	 jmp .L261

.L261:
	 movq 0(%rsp), %R8
 movq %R8, 2176(%rsp)
	 jmp .L262

.L262:
	 movq 8(%rsp), %R8
 movq %R8, 2184(%rsp)
	 jmp .L263

.L263:
	 movq $1, 2152(%rsp)
	 movq 2184(%rsp), %R8
 	 movq 2176(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend263
	 movq $0, 2152(%rsp)
.Lend263:
	 jmp .L264

.L264:
	 movq 2152(%rsp), %R8
 	 movq 2144(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2112(%rsp) 

.L265:
	 movq 2112(%rsp), %R8
 	 movq 2104(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 2096(%rsp) 

.L266:
	 movq 2096 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2088(%rsp)
	 jmp .L267

.L267:
	 movq 2088 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 1280(%rsp)
	 jmp .L268

.L268:
	 movq 1280(%rsp), %R8
 	 movq 1272(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 72(%rsp) 

.L269:
	 movq 72(%rsp), %R8
 	 movq 64(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 48(%rsp) 

.L270:
	 movq 0(%rsp), %R8
 movq %R8, 2280(%rsp)
	 jmp .L271

.L271:
	 movq 8(%rsp), %R8
 movq %R8, 2288(%rsp)
	 jmp .L272

.L272:
	 movq $1, 2272(%rsp)
	 movq 2288(%rsp), %R8
 	 movq 2280(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend272
	 movq $0, 2272(%rsp)
.Lend272:
	 jmp .L273

.L273:
	 movq 2272 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2256(%rsp)
	 jmp .L274

.L274:
	 movq 0(%rsp), %R8
 movq %R8, 2296(%rsp)
	 jmp .L275

.L275:
	 movq 8(%rsp), %R8
 movq %R8, 2304(%rsp)
	 jmp .L276

.L276:
	 movq $1, 2264(%rsp)
	 movq 2304(%rsp), %R8
 	 movq 2296(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend276
	 movq $0, 2264(%rsp)
.Lend276:
	 jmp .L277

.L277:
	 movq 2264(%rsp), %R8
 	 movq 2256(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2240(%rsp) 

.L278:
	 movq 0(%rsp), %R8
 movq %R8, 2312(%rsp)
	 jmp .L279

.L279:
	 movq 8(%rsp), %R8
 movq %R8, 2320(%rsp)
	 jmp .L280

.L280:
	 movq $1, 2248(%rsp)
	 movq 2320(%rsp), %R8
 	 movq 2312(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend280
	 movq $0, 2248(%rsp)
.Lend280:
	 jmp .L281

.L281:
	 movq 2248(%rsp), %R8
 	 movq 2240(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2232(%rsp) 

.L282:
	 movq 2232 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2216(%rsp)
	 jmp .L283

.L283:
	 movq 0(%rsp), %R8
 movq %R8, 2376(%rsp)
	 jmp .L284

.L284:
	 movq 8(%rsp), %R8
 movq %R8, 2384(%rsp)
	 jmp .L285

.L285:
	 movq $1, 2368(%rsp)
	 movq 2384(%rsp), %R8
 	 movq 2376(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend285
	 movq $0, 2368(%rsp)
.Lend285:
	 jmp .L286

.L286:
	 movq 2368 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2352(%rsp)
	 jmp .L287

.L287:
	 movq 0(%rsp), %R8
 movq %R8, 2392(%rsp)
	 jmp .L288

.L288:
	 movq 8(%rsp), %R8
 movq %R8, 2400(%rsp)
	 jmp .L289

.L289:
	 movq $1, 2360(%rsp)
	 movq 2400(%rsp), %R8
 	 movq 2392(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend289
	 movq $0, 2360(%rsp)
.Lend289:
	 jmp .L290

.L290:
	 movq 2360(%rsp), %R8
 	 movq 2352(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2336(%rsp) 

.L291:
	 movq 0(%rsp), %R8
 movq %R8, 2408(%rsp)
	 jmp .L292

.L292:
	 movq 8(%rsp), %R8
 movq %R8, 2416(%rsp)
	 jmp .L293

.L293:
	 movq $1, 2344(%rsp)
	 movq 2416(%rsp), %R8
 	 movq 2408(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend293
	 movq $0, 2344(%rsp)
.Lend293:
	 jmp .L294

.L294:
	 movq 2344(%rsp), %R8
 	 movq 2336(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 2328(%rsp) 

.L295:
	 movq 2328 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2224(%rsp)
	 jmp .L296

.L296:
	 movq 2224(%rsp), %R8
 	 movq 2216(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2208(%rsp) 

.L297:
	 movq 2208 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2192(%rsp)
	 jmp .L298

.L298:
	 movq 0(%rsp), %R8
 movq %R8, 2504(%rsp)
	 jmp .L299

.L299:
	 movq 8(%rsp), %R8
 movq %R8, 2512(%rsp)
	 jmp .L300

.L300:
	 movq $1, 2488(%rsp)
	 movq 2512(%rsp), %R8
 	 movq 2504(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend300
	 movq $0, 2488(%rsp)
.Lend300:
	 jmp .L301

.L301:
	 movq 0(%rsp), %R8
 movq %R8, 2520(%rsp)
	 jmp .L302

.L302:
	 movq 8(%rsp), %R8
 movq %R8, 2528(%rsp)
	 jmp .L303

.L303:
	 movq $1, 2496(%rsp)
	 movq 2528(%rsp), %R8
 	 movq 2520(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend303
	 movq $0, 2496(%rsp)
.Lend303:
	 jmp .L304

.L304:
	 movq 2496(%rsp), %R8
 	 movq 2488(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2472(%rsp) 

.L305:
	 movq 0(%rsp), %R8
 movq %R8, 2536(%rsp)
	 jmp .L306

.L306:
	 movq 8(%rsp), %R8
 movq %R8, 2544(%rsp)
	 jmp .L307

.L307:
	 movq $1, 2480(%rsp)
	 movq 2544(%rsp), %R8
 	 movq 2536(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend307
	 movq $0, 2480(%rsp)
.Lend307:
	 jmp .L308

.L308:
	 movq 2480(%rsp), %R8
 	 movq 2472(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2456(%rsp) 

.L309:
	 movq 0(%rsp), %R8
 movq %R8, 2552(%rsp)
	 jmp .L310

.L310:
	 movq 8(%rsp), %R8
 movq %R8, 2560(%rsp)
	 jmp .L311

.L311:
	 movq $1, 2464(%rsp)
	 movq 2560(%rsp), %R8
 	 movq 2552(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend311
	 movq $0, 2464(%rsp)
.Lend311:
	 jmp .L312

.L312:
	 movq 2464(%rsp), %R8
 	 movq 2456(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 2448(%rsp) 

.L313:
	 movq 2448 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2432(%rsp)
	 jmp .L314

.L314:
	 movq 0(%rsp), %R8
 movq %R8, 2624(%rsp)
	 jmp .L315

.L315:
	 movq 8(%rsp), %R8
 movq %R8, 2632(%rsp)
	 jmp .L316

.L316:
	 movq $1, 2608(%rsp)
	 movq 2632(%rsp), %R8
 	 movq 2624(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend316
	 movq $0, 2608(%rsp)
.Lend316:
	 jmp .L317

.L317:
	 movq 0(%rsp), %R8
 movq %R8, 2640(%rsp)
	 jmp .L318

.L318:
	 movq 8(%rsp), %R8
 movq %R8, 2648(%rsp)
	 jmp .L319

.L319:
	 movq $1, 2616(%rsp)
	 movq 2648(%rsp), %R8
 	 movq 2640(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend319
	 movq $0, 2616(%rsp)
.Lend319:
	 jmp .L320

.L320:
	 movq 2616(%rsp), %R8
 	 movq 2608(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 2592(%rsp) 

.L321:
	 movq 0(%rsp), %R8
 movq %R8, 2656(%rsp)
	 jmp .L322

.L322:
	 movq 8(%rsp), %R8
 movq %R8, 2664(%rsp)
	 jmp .L323

.L323:
	 movq $1, 2600(%rsp)
	 movq 2664(%rsp), %R8
 	 movq 2656(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend323
	 movq $0, 2600(%rsp)
.Lend323:
	 jmp .L324

.L324:
	 movq 2600(%rsp), %R8
 	 movq 2592(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2576(%rsp) 

.L325:
	 movq 0(%rsp), %R8
 movq %R8, 2672(%rsp)
	 jmp .L326

.L326:
	 movq 8(%rsp), %R8
 movq %R8, 2680(%rsp)
	 jmp .L327

.L327:
	 movq $1, 2584(%rsp)
	 movq 2680(%rsp), %R8
 	 movq 2672(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend327
	 movq $0, 2584(%rsp)
.Lend327:
	 jmp .L328

.L328:
	 movq 2584(%rsp), %R8
 	 movq 2576(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2568(%rsp) 

.L329:
	 movq 2568 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2440(%rsp)
	 jmp .L330

.L330:
	 movq 2440(%rsp), %R8
 	 movq 2432(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2424(%rsp) 

.L331:
	 movq 2424 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2200(%rsp)
	 jmp .L332

.L332:
	 movq 2200(%rsp), %R8
 	 movq 2192(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 56(%rsp) 

.L333:
	 movq 56(%rsp), %R8
 	 movq 48(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 40(%rsp) 

.L334:
	 movq 40 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 24(%rsp)
	 jmp .L335

.L335:
	 movq 0(%rsp), %R8
 movq %R8, 2912(%rsp)
	 jmp .L336

.L336:
	 movq 8(%rsp), %R8
 movq %R8, 2920(%rsp)
	 jmp .L337

.L337:
	 movq $1, 2896(%rsp)
	 movq 2920(%rsp), %R8
 	 movq 2912(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend337
	 movq $0, 2896(%rsp)
.Lend337:
	 jmp .L338

.L338:
	 movq 0(%rsp), %R8
 movq %R8, 2928(%rsp)
	 jmp .L339

.L339:
	 movq 8(%rsp), %R8
 movq %R8, 2936(%rsp)
	 jmp .L340

.L340:
	 movq $1, 2904(%rsp)
	 movq 2936(%rsp), %R8
 	 movq 2928(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend340
	 movq $0, 2904(%rsp)
.Lend340:
	 jmp .L341

.L341:
	 movq 2904(%rsp), %R8
 	 movq 2896(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2880(%rsp) 

.L342:
	 movq 0(%rsp), %R8
 movq %R8, 2944(%rsp)
	 jmp .L343

.L343:
	 movq 8(%rsp), %R8
 movq %R8, 2952(%rsp)
	 jmp .L344

.L344:
	 movq $1, 2888(%rsp)
	 movq 2952(%rsp), %R8
 	 movq 2944(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend344
	 movq $0, 2888(%rsp)
.Lend344:
	 jmp .L345

.L345:
	 movq 2888(%rsp), %R8
 	 movq 2880(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2864(%rsp) 

.L346:
	 movq 0(%rsp), %R8
 movq %R8, 2960(%rsp)
	 jmp .L347

.L347:
	 movq 8(%rsp), %R8
 movq %R8, 2968(%rsp)
	 jmp .L348

.L348:
	 movq $1, 2872(%rsp)
	 movq 2968(%rsp), %R8
 	 movq 2960(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend348
	 movq $0, 2872(%rsp)
.Lend348:
	 jmp .L349

.L349:
	 movq 2872(%rsp), %R8
 	 movq 2864(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2848(%rsp) 

.L350:
	 movq 0(%rsp), %R8
 movq %R8, 2976(%rsp)
	 jmp .L351

.L351:
	 movq 8(%rsp), %R8
 movq %R8, 2984(%rsp)
	 jmp .L352

.L352:
	 movq $1, 2856(%rsp)
	 movq 2984(%rsp), %R8
 	 movq 2976(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend352
	 movq $0, 2856(%rsp)
.Lend352:
	 jmp .L353

.L353:
	 movq 2856(%rsp), %R8
 	 movq 2848(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2832(%rsp) 

.L354:
	 movq 0(%rsp), %R8
 movq %R8, 2992(%rsp)
	 jmp .L355

.L355:
	 movq 8(%rsp), %R8
 movq %R8, 3000(%rsp)
	 jmp .L356

.L356:
	 movq $1, 2840(%rsp)
	 movq 3000(%rsp), %R8
 	 movq 2992(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend356
	 movq $0, 2840(%rsp)
.Lend356:
	 jmp .L357

.L357:
	 movq 2840(%rsp), %R8
 	 movq 2832(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2816(%rsp) 

.L358:
	 movq 0(%rsp), %R8
 movq %R8, 3016(%rsp)
	 jmp .L359

.L359:
	 movq 8(%rsp), %R8
 movq %R8, 3024(%rsp)
	 jmp .L360

.L360:
	 movq $1, 3008(%rsp)
	 movq 3024(%rsp), %R8
 	 movq 3016(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend360
	 movq $0, 3008(%rsp)
.Lend360:
	 jmp .L361

.L361:
	 movq 3008 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2824(%rsp)
	 jmp .L362

.L362:
	 movq 2824(%rsp), %R8
 	 movq 2816(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2800(%rsp) 

.L363:
	 movq 0(%rsp), %R8
 movq %R8, 3048(%rsp)
	 jmp .L364

.L364:
	 movq 8(%rsp), %R8
 movq %R8, 3056(%rsp)
	 jmp .L365

.L365:
	 movq $1, 3032(%rsp)
	 movq 3056(%rsp), %R8
 	 movq 3048(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend365
	 movq $0, 3032(%rsp)
.Lend365:
	 jmp .L366

.L366:
	 movq 0(%rsp), %R8
 movq %R8, 3064(%rsp)
	 jmp .L367

.L367:
	 movq 8(%rsp), %R8
 movq %R8, 3072(%rsp)
	 jmp .L368

.L368:
	 movq $1, 3040(%rsp)
	 movq 3072(%rsp), %R8
 	 movq 3064(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend368
	 movq $0, 3040(%rsp)
.Lend368:
	 jmp .L369

.L369:
	 movq 3040(%rsp), %R8
 	 movq 3032(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2808(%rsp) 

.L370:
	 movq 2808(%rsp), %R8
 	 movq 2800(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2784(%rsp) 

.L371:
	 movq 0(%rsp), %R8
 movq %R8, 3088(%rsp)
	 jmp .L372

.L372:
	 movq 8(%rsp), %R8
 movq %R8, 3096(%rsp)
	 jmp .L373

.L373:
	 movq $1, 3080(%rsp)
	 movq 3096(%rsp), %R8
 	 movq 3088(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend373
	 movq $0, 3080(%rsp)
.Lend373:
	 jmp .L374

.L374:
	 movq 3080 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2792(%rsp)
	 jmp .L375

.L375:
	 movq 2792(%rsp), %R8
 	 movq 2784(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 2768(%rsp) 

.L376:
	 movq 0(%rsp), %R8
 movq %R8, 3120(%rsp)
	 jmp .L377

.L377:
	 movq 8(%rsp), %R8
 movq %R8, 3128(%rsp)
	 jmp .L378

.L378:
	 movq $1, 3104(%rsp)
	 movq 3128(%rsp), %R8
 	 movq 3120(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend378
	 movq $0, 3104(%rsp)
.Lend378:
	 jmp .L379

.L379:
	 movq 0(%rsp), %R8
 movq %R8, 3136(%rsp)
	 jmp .L380

.L380:
	 movq 8(%rsp), %R8
 movq %R8, 3144(%rsp)
	 jmp .L381

.L381:
	 movq $1, 3112(%rsp)
	 movq 3144(%rsp), %R8
 	 movq 3136(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend381
	 movq $0, 3112(%rsp)
.Lend381:
	 jmp .L382

.L382:
	 movq 3112(%rsp), %R8
 	 movq 3104(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2776(%rsp) 

.L383:
	 movq 2776(%rsp), %R8
 	 movq 2768(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2752(%rsp) 

.L384:
	 movq 0(%rsp), %R8
 movq %R8, 3168(%rsp)
	 jmp .L385

.L385:
	 movq 8(%rsp), %R8
 movq %R8, 3176(%rsp)
	 jmp .L386

.L386:
	 movq $1, 3152(%rsp)
	 movq 3176(%rsp), %R8
 	 movq 3168(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend386
	 movq $0, 3152(%rsp)
.Lend386:
	 jmp .L387

.L387:
	 movq 0(%rsp), %R8
 movq %R8, 3184(%rsp)
	 jmp .L388

.L388:
	 movq 8(%rsp), %R8
 movq %R8, 3192(%rsp)
	 jmp .L389

.L389:
	 movq $1, 3160(%rsp)
	 movq 3192(%rsp), %R8
 	 movq 3184(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend389
	 movq $0, 3160(%rsp)
.Lend389:
	 jmp .L390

.L390:
	 movq 3160(%rsp), %R8
 	 movq 3152(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2760(%rsp) 

.L391:
	 movq 2760(%rsp), %R8
 	 movq 2752(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 2744(%rsp) 

.L392:
	 movq 2744 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2728(%rsp)
	 jmp .L393

.L393:
	 movq 0(%rsp), %R8
 movq %R8, 3264(%rsp)
	 jmp .L394

.L394:
	 movq 8(%rsp), %R8
 movq %R8, 3272(%rsp)
	 jmp .L395

.L395:
	 movq $1, 3248(%rsp)
	 movq 3272(%rsp), %R8
 	 movq 3264(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend395
	 movq $0, 3248(%rsp)
.Lend395:
	 jmp .L396

.L396:
	 movq 0(%rsp), %R8
 movq %R8, 3280(%rsp)
	 jmp .L397

.L397:
	 movq 8(%rsp), %R8
 movq %R8, 3288(%rsp)
	 jmp .L398

.L398:
	 movq $1, 3256(%rsp)
	 movq 3288(%rsp), %R8
 	 movq 3280(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend398
	 movq $0, 3256(%rsp)
.Lend398:
	 jmp .L399

.L399:
	 movq 3256(%rsp), %R8
 	 movq 3248(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 3240(%rsp) 

.L400:
	 movq 3240 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 3224(%rsp)
	 jmp .L401

.L401:
	 movq 0(%rsp), %R8
 movq %R8, 3312(%rsp)
	 jmp .L402

.L402:
	 movq 8(%rsp), %R8
 movq %R8, 3320(%rsp)
	 jmp .L403

.L403:
	 movq $1, 3296(%rsp)
	 movq 3320(%rsp), %R8
 	 movq 3312(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend403
	 movq $0, 3296(%rsp)
.Lend403:
	 jmp .L404

.L404:
	 movq 0(%rsp), %R8
 movq %R8, 3328(%rsp)
	 jmp .L405

.L405:
	 movq 8(%rsp), %R8
 movq %R8, 3336(%rsp)
	 jmp .L406

.L406:
	 movq $1, 3304(%rsp)
	 movq 3336(%rsp), %R8
 	 movq 3328(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend406
	 movq $0, 3304(%rsp)
.Lend406:
	 jmp .L407

.L407:
	 movq 3304(%rsp), %R8
 	 movq 3296(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 3232(%rsp) 

.L408:
	 movq 3232(%rsp), %R8
 	 movq 3224(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 3208(%rsp) 

.L409:
	 movq 0(%rsp), %R8
 movq %R8, 3352(%rsp)
	 jmp .L410

.L410:
	 movq 8(%rsp), %R8
 movq %R8, 3360(%rsp)
	 jmp .L411

.L411:
	 movq $1, 3344(%rsp)
	 movq 3360(%rsp), %R8
 	 movq 3352(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend411
	 movq $0, 3344(%rsp)
.Lend411:
	 jmp .L412

.L412:
	 movq 3344 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 3216(%rsp)
	 jmp .L413

.L413:
	 movq 3216(%rsp), %R8
 	 movq 3208(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 3200(%rsp) 

.L414:
	 movq 3200 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2736(%rsp)
	 jmp .L415

.L415:
	 movq 2736(%rsp), %R8
 	 movq 2728(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2712(%rsp) 

.L416:
	 movq 0(%rsp), %R8
 movq %R8, 3456(%rsp)
	 jmp .L417

.L417:
	 movq 8(%rsp), %R8
 movq %R8, 3464(%rsp)
	 jmp .L418

.L418:
	 movq $1, 3448(%rsp)
	 movq 3464(%rsp), %R8
 	 movq 3456(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend418
	 movq $0, 3448(%rsp)
.Lend418:
	 jmp .L419

.L419:
	 movq 3448 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 3432(%rsp)
	 jmp .L420

.L420:
	 movq 0(%rsp), %R8
 movq %R8, 3480(%rsp)
	 jmp .L421

.L421:
	 movq 8(%rsp), %R8
 movq %R8, 3488(%rsp)
	 jmp .L422

.L422:
	 movq $1, 3472(%rsp)
	 movq 3488(%rsp), %R8
 	 movq 3480(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend422
	 movq $0, 3472(%rsp)
.Lend422:
	 jmp .L423

.L423:
	 movq 3472 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 3440(%rsp)
	 jmp .L424

.L424:
	 movq 3440(%rsp), %R8
 	 movq 3432(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 3416(%rsp) 

.L425:
	 movq 0(%rsp), %R8
 movq %R8, 3512(%rsp)
	 jmp .L426

.L426:
	 movq 8(%rsp), %R8
 movq %R8, 3520(%rsp)
	 jmp .L427

.L427:
	 movq $1, 3496(%rsp)
	 movq 3520(%rsp), %R8
 	 movq 3512(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend427
	 movq $0, 3496(%rsp)
.Lend427:
	 jmp .L428

.L428:
	 movq 0(%rsp), %R8
 movq %R8, 3528(%rsp)
	 jmp .L429

.L429:
	 movq 8(%rsp), %R8
 movq %R8, 3536(%rsp)
	 jmp .L430

.L430:
	 movq $1, 3504(%rsp)
	 movq 3536(%rsp), %R8
 	 movq 3528(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend430
	 movq $0, 3504(%rsp)
.Lend430:
	 jmp .L431

.L431:
	 movq 3504(%rsp), %R8
 	 movq 3496(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 3424(%rsp) 

.L432:
	 movq 3424(%rsp), %R8
 	 movq 3416(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 3400(%rsp) 

.L433:
	 movq 0(%rsp), %R8
 movq %R8, 3544(%rsp)
	 jmp .L434

.L434:
	 movq 8(%rsp), %R8
 movq %R8, 3552(%rsp)
	 jmp .L435

.L435:
	 movq $1, 3408(%rsp)
	 movq 3552(%rsp), %R8
 	 movq 3544(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend435
	 movq $0, 3408(%rsp)
.Lend435:
	 jmp .L436

.L436:
	 movq 3408(%rsp), %R8
 	 movq 3400(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 3384(%rsp) 

.L437:
	 movq 0(%rsp), %R8
 movq %R8, 3560(%rsp)
	 jmp .L438

.L438:
	 movq 8(%rsp), %R8
 movq %R8, 3568(%rsp)
	 jmp .L439

.L439:
	 movq $1, 3392(%rsp)
	 movq 3568(%rsp), %R8
 	 movq 3560(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend439
	 movq $0, 3392(%rsp)
.Lend439:
	 jmp .L440

.L440:
	 movq 3392(%rsp), %R8
 	 movq 3384(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 3368(%rsp) 

.L441:
	 movq 0(%rsp), %R8
 movq %R8, 3608(%rsp)
	 jmp .L442

.L442:
	 movq 8(%rsp), %R8
 movq %R8, 3616(%rsp)
	 jmp .L443

.L443:
	 movq $1, 3592(%rsp)
	 movq 3616(%rsp), %R8
 	 movq 3608(%rsp), %R9
	 cmpq %R8, %R9
	 jne .Lend443
	 movq $0, 3592(%rsp)
.Lend443:
	 jmp .L444

.L444:
	 movq 0(%rsp), %R8
 movq %R8, 3624(%rsp)
	 jmp .L445

.L445:
	 movq 8(%rsp), %R8
 movq %R8, 3632(%rsp)
	 jmp .L446

.L446:
	 movq $1, 3600(%rsp)
	 movq 3632(%rsp), %R8
 	 movq 3624(%rsp), %R9
	 cmpq %R8, %R9
	 je .Lend446
	 movq $0, 3600(%rsp)
.Lend446:
	 jmp .L447

.L447:
	 movq 3600(%rsp), %R8
 	 movq 3592(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 3584(%rsp) 

.L448:
	 movq 3584 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 3576(%rsp)
	 jmp .L449

.L449:
	 movq 3576 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 3376(%rsp)
	 jmp .L450

.L450:
	 movq 3376(%rsp), %R8
 	 movq 3368(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 2720(%rsp) 

.L451:
	 movq 2720(%rsp), %R8
 	 movq 2712(%rsp), %R9
	 andq %R8, %R9
 	 movq %R9, 2704(%rsp) 

.L452:
	 movq 2704 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2696(%rsp)
	 jmp .L453

.L453:
	 movq 2696 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 2688(%rsp)
	 jmp .L454

.L454:
	 movq 2688 (%rsp), %R8
	 notq %R8
	 andq $1, %R8
	 movq %R8, 32(%rsp)
	 jmp .L455

.L455:
	 movq 32(%rsp), %R8
 	 movq 24(%rsp), %R9
	 orq %R8, %R9
 	 movq %R9, 16(%rsp) 

.L456:
	 movq 16(%rsp), %rdi
	 callq bx0_print
	 jmp .L457

.L457:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
