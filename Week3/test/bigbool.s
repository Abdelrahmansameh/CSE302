 .file " test/bigbool.bx " 
.section .text
.globl main 
main:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp 
jmp .L409
.L1:
	 callq bx1_printTrue
	 jmp .L0

.L2:
	 callq bx1_printFalse
	 jmp .L0

.L3:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L1
	 jmp .L2

.L4:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L1
	 jmp .L3

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

.L7:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L1
	 jmp .L6

.L8:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L7
	 jmp .L6

.L9:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L8
	 jmp .L1

.L10:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L9
	 jmp .L1

.L11:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L10
	 jmp .L2

.L12:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L11
	 jmp .L2

.L13:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L12
	 jmp .L10

.L14:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L13
	 jmp .L10

.L15:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L10
	 jmp .L14

.L16:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L15
	 jmp .L14

.L17:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L16
	 jmp .L10

.L18:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L17
	 jmp .L10

.L19:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L10
	 jmp .L18

.L20:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L19
	 jmp .L18

.L21:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L20
	 jmp .L10

.L22:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L21
	 jmp .L10

.L23:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L22
	 jmp .L18

.L24:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L23
	 jmp .L18

.L25:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L24
	 jmp .L22

.L26:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L25
	 jmp .L22

.L27:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L26
	 jmp .L10

.L28:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L27
	 jmp .L10

.L29:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L28
	 jmp .L26

.L30:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L29
	 jmp .L26

.L31:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L30
	 jmp .L10

.L32:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L31
	 jmp .L10

.L33:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L32
	 jmp .L30

.L34:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L33
	 jmp .L30

.L35:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L1
	 jmp .L34

.L36:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L35
	 jmp .L34

.L37:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L36
	 jmp .L1

.L38:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L37
	 jmp .L1

.L39:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L34
	 jmp .L38

.L40:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L34
	 jmp .L39

.L41:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L38
	 jmp .L40

.L42:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L41
	 jmp .L40

.L43:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L42
	 jmp .L38

.L44:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L43
	 jmp .L38

.L45:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L44
	 jmp .L42

.L46:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L45
	 jmp .L42

.L47:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L46
	 jmp .L34

.L48:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L47
	 jmp .L34

.L49:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L48
	 jmp .L46

.L50:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L49
	 jmp .L46

.L51:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L50
	 jmp .L34

.L52:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L50
	 jmp .L51

.L53:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L34
	 jmp .L52

.L54:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L53
	 jmp .L52

.L55:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L34
	 jmp .L54

.L56:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L55
	 jmp .L54

.L57:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L56
	 jmp .L34

.L58:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L57
	 jmp .L34

.L59:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L58
	 jmp .L54

.L60:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L59
	 jmp .L54

.L61:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L60
	 jmp .L58

.L62:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L61
	 jmp .L58

.L63:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L34
	 jmp .L62

.L64:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L63
	 jmp .L62

.L65:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L64
	 jmp .L34

.L66:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L65
	 jmp .L34

.L67:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L66
	 jmp .L62

.L68:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L67
	 jmp .L62

.L69:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L68
	 jmp .L66

.L70:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L69
	 jmp .L66

.L71:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L62
	 jmp .L70

.L72:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L62
	 jmp .L71

.L73:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L70
	 jmp .L72

.L74:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L73
	 jmp .L72

.L75:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L70
	 jmp .L74

.L76:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L70
	 jmp .L75

.L77:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L74
	 jmp .L76

.L78:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L77
	 jmp .L76

.L79:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L78
	 jmp .L74

.L80:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L79
	 jmp .L74

.L81:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L80
	 jmp .L78

.L82:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L81
	 jmp .L78

.L83:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L74
	 jmp .L82

.L84:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L74
	 jmp .L83

.L85:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L82
	 jmp .L84

.L86:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L85
	 jmp .L84

.L87:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L86
	 jmp .L74

.L88:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L86
	 jmp .L87

.L89:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L74
	 jmp .L88

.L90:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L89
	 jmp .L88

.L91:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L90
	 jmp .L74

.L92:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L91
	 jmp .L74

.L93:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L92
	 jmp .L90

.L94:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L93
	 jmp .L90

.L95:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L94
	 jmp .L74

.L96:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L95
	 jmp .L74

.L97:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L96
	 jmp .L94

.L98:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L97
	 jmp .L94

.L99:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L98
	 jmp .L74

.L100:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L99
	 jmp .L74

.L101:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L100
	 jmp .L98

.L102:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L101
	 jmp .L98

.L103:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L102
	 jmp .L74

.L104:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L103
	 jmp .L74

.L105:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L104
	 jmp .L102

.L106:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L105
	 jmp .L102

.L107:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L106
	 jmp .L74

.L108:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L107
	 jmp .L74

.L109:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L108
	 jmp .L106

.L110:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L109
	 jmp .L106

.L111:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L1
	 jmp .L110

.L112:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L111
	 jmp .L110

.L113:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L112
	 jmp .L1

.L114:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L113
	 jmp .L1

.L115:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L114
	 jmp .L110

.L116:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L115
	 jmp .L110

.L117:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L116
	 jmp .L114

.L118:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L117
	 jmp .L114

.L119:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L118
	 jmp .L110

.L120:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L118
	 jmp .L119

.L121:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L110
	 jmp .L120

.L122:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L121
	 jmp .L120

.L123:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L118
	 jmp .L122

.L124:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L123
	 jmp .L122

.L125:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L124
	 jmp .L118

.L126:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L125
	 jmp .L118

.L127:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L1
	 jmp .L126

.L128:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L1
	 jmp .L127

.L129:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L126
	 jmp .L128

.L130:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L129
	 jmp .L128

.L131:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L1
	 jmp .L130

.L132:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L131
	 jmp .L130

.L133:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L132
	 jmp .L1

.L134:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L133
	 jmp .L1

.L135:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L134
	 jmp .L130

.L136:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L135
	 jmp .L130

.L137:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L136
	 jmp .L134

.L138:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L137
	 jmp .L134

.L139:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L138
	 jmp .L130

.L140:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L139
	 jmp .L130

.L141:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L140
	 jmp .L138

.L142:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L141
	 jmp .L138

.L143:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L142
	 jmp .L110

.L144:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L142
	 jmp .L143

.L145:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L110
	 jmp .L144

.L146:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L145
	 jmp .L144

.L147:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L142
	 jmp .L146

.L148:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L147
	 jmp .L146

.L149:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L148
	 jmp .L142

.L150:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L149
	 jmp .L142

.L151:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L146
	 jmp .L150

.L152:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L151
	 jmp .L150

.L153:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L152
	 jmp .L146

.L154:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L153
	 jmp .L146

.L155:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L142
	 jmp .L154

.L156:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L142
	 jmp .L155

.L157:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L154
	 jmp .L156

.L158:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L157
	 jmp .L156

.L159:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L158
	 jmp .L154

.L160:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L158
	 jmp .L159

.L161:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L154
	 jmp .L160

.L162:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L161
	 jmp .L160

.L163:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L154
	 jmp .L162

.L164:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L154
	 jmp .L163

.L165:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L162
	 jmp .L164

.L166:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L165
	 jmp .L164

.L167:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L1
	 jmp .L166

.L168:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L1
	 jmp .L167

.L169:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L168

.L170:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L169
	 jmp .L168

.L171:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L170
	 jmp .L166

.L172:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L170
	 jmp .L171

.L173:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L172

.L174:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L173
	 jmp .L172

.L175:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L174
	 jmp .L1

.L176:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L175
	 jmp .L1

.L177:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L176
	 jmp .L174

.L178:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L177
	 jmp .L174

.L179:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L178
	 jmp .L166

.L180:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L179
	 jmp .L166

.L181:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L180
	 jmp .L178

.L182:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L181
	 jmp .L178

.L183:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L182
	 jmp .L178

.L184:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L183
	 jmp .L178

.L185:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L184
	 jmp .L182

.L186:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L185
	 jmp .L182

.L187:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L186
	 jmp .L178

.L188:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L186
	 jmp .L187

.L189:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L178
	 jmp .L188

.L190:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L189
	 jmp .L188

.L191:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L178
	 jmp .L190

.L192:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L191
	 jmp .L190

.L193:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L192
	 jmp .L178

.L194:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L193
	 jmp .L178

.L195:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L178
	 jmp .L194

.L196:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L178
	 jmp .L195

.L197:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L194
	 jmp .L196

.L198:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L197
	 jmp .L196

.L199:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L198

.L200:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L199
	 jmp .L198

.L201:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L200
	 jmp .L166

.L202:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L201
	 jmp .L166

.L203:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L202

.L204:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L203

.L205:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L202
	 jmp .L204

.L206:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L205
	 jmp .L204

.L207:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L206

.L208:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L207
	 jmp .L206

.L209:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L208
	 jmp .L166

.L210:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L209
	 jmp .L166

.L211:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L210
	 jmp .L206

.L212:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L210
	 jmp .L211

.L213:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L206
	 jmp .L212

.L214:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L213
	 jmp .L212

.L215:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L214

.L216:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L215

.L217:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L214
	 jmp .L216

.L218:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L217
	 jmp .L216

.L219:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L218
	 jmp .L214

.L220:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L219
	 jmp .L214

.L221:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L220
	 jmp .L218

.L222:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L221
	 jmp .L218

.L223:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L222
	 jmp .L166

.L224:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L223
	 jmp .L166

.L225:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L224
	 jmp .L222

.L226:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L225
	 jmp .L222

.L227:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L226

.L228:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L227
	 jmp .L226

.L229:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L228
	 jmp .L166

.L230:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L229
	 jmp .L166

.L231:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L230

.L232:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L231
	 jmp .L230

.L233:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L232
	 jmp .L166

.L234:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L233
	 jmp .L166

.L235:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L226
	 jmp .L234

.L236:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L226
	 jmp .L235

.L237:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L234
	 jmp .L236

.L238:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L237
	 jmp .L236

.L239:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L226
	 jmp .L238

.L240:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L239
	 jmp .L238

.L241:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L240
	 jmp .L226

.L242:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L241
	 jmp .L226

.L243:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L242
	 jmp .L238

.L244:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L242
	 jmp .L243

.L245:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L238
	 jmp .L244

.L246:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L245
	 jmp .L244

.L247:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L242
	 jmp .L246

.L248:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L242
	 jmp .L247

.L249:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L246
	 jmp .L248

.L250:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L249
	 jmp .L248

.L251:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L234
	 jmp .L250

.L252:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L251
	 jmp .L250

.L253:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L252
	 jmp .L234

.L254:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L253
	 jmp .L234

.L255:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L254
	 jmp .L234

.L256:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L255
	 jmp .L234

.L257:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L256
	 jmp .L254

.L258:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L257
	 jmp .L254

.L259:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L258
	 jmp .L234

.L260:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L259
	 jmp .L234

.L261:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L260
	 jmp .L258

.L262:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L261
	 jmp .L258

.L263:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L262
	 jmp .L250

.L264:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L262
	 jmp .L263

.L265:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L250
	 jmp .L264

.L266:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L265
	 jmp .L264

.L267:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L266
	 jmp .L250

.L268:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L267
	 jmp .L250

.L269:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L268
	 jmp .L266

.L270:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L269
	 jmp .L266

.L271:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L270

.L272:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L271
	 jmp .L270

.L273:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L272
	 jmp .L166

.L274:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L273
	 jmp .L166

.L275:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L274

.L276:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L275
	 jmp .L274

.L277:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L276
	 jmp .L166

.L278:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L277
	 jmp .L166

.L279:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L270
	 jmp .L278

.L280:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L270
	 jmp .L279

.L281:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L278
	 jmp .L280

.L282:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L281
	 jmp .L280

.L283:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L270
	 jmp .L282

.L284:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L283
	 jmp .L282

.L285:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L284
	 jmp .L270

.L286:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L285
	 jmp .L270

.L287:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L270
	 jmp .L286

.L288:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L270
	 jmp .L287

.L289:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L286
	 jmp .L288

.L290:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L289
	 jmp .L288

.L291:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L270
	 jmp .L290

.L292:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L291
	 jmp .L290

.L293:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L292
	 jmp .L270

.L294:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L293
	 jmp .L270

.L295:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L294

.L296:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L295
	 jmp .L294

.L297:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L296
	 jmp .L166

.L298:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L297
	 jmp .L166

.L299:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L294
	 jmp .L298

.L300:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L299
	 jmp .L298

.L301:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L300
	 jmp .L294

.L302:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L301
	 jmp .L294

.L303:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L294
	 jmp .L302

.L304:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L303
	 jmp .L302

.L305:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L304
	 jmp .L294

.L306:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L305
	 jmp .L294

.L307:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L302
	 jmp .L306

.L308:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L307
	 jmp .L306

.L309:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L308
	 jmp .L302

.L310:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L309
	 jmp .L302

.L311:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L302
	 jmp .L310

.L312:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L311
	 jmp .L310

.L313:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L312
	 jmp .L302

.L314:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L313
	 jmp .L302

.L315:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L314

.L316:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L315
	 jmp .L314

.L317:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L316
	 jmp .L166

.L318:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L317
	 jmp .L166

.L319:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L318
	 jmp .L314

.L320:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L319
	 jmp .L314

.L321:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L320
	 jmp .L318

.L322:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L321
	 jmp .L318

.L323:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L322
	 jmp .L314

.L324:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L322
	 jmp .L323

.L325:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L314
	 jmp .L324

.L326:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L325
	 jmp .L324

.L327:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L318
	 jmp .L326

.L328:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L327
	 jmp .L326

.L329:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L328
	 jmp .L318

.L330:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L329
	 jmp .L318

.L331:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L330
	 jmp .L326

.L332:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L330
	 jmp .L331

.L333:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L326
	 jmp .L332

.L334:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L333
	 jmp .L332

.L335:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L334
	 jmp .L326

.L336:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L334
	 jmp .L335

.L337:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L326
	 jmp .L336

.L338:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L337
	 jmp .L336

.L339:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L338
	 jmp .L326

.L340:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L339
	 jmp .L326

.L341:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L340
	 jmp .L338

.L342:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L341
	 jmp .L338

.L343:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L342
	 jmp .L326

.L344:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L342
	 jmp .L343

.L345:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L326
	 jmp .L344

.L346:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L345
	 jmp .L344

.L347:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L342
	 jmp .L346

.L348:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L347
	 jmp .L346

.L349:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L348
	 jmp .L342

.L350:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L349
	 jmp .L342

.L351:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L350
	 jmp .L346

.L352:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L351
	 jmp .L346

.L353:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L352
	 jmp .L350

.L354:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L353
	 jmp .L350

.L355:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L350
	 jmp .L354

.L356:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L355
	 jmp .L354

.L357:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L356
	 jmp .L350

.L358:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L357
	 jmp .L350

.L359:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L354
	 jmp .L358

.L360:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L359
	 jmp .L358

.L361:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L360
	 jmp .L354

.L362:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L361
	 jmp .L354

.L363:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L362

.L364:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L363

.L365:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L362
	 jmp .L364

.L366:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L365
	 jmp .L364

.L367:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L366
	 jmp .L362

.L368:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L367
	 jmp .L362

.L369:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L368
	 jmp .L366

.L370:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L369
	 jmp .L366

.L371:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L370

.L372:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L371

.L373:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L370
	 jmp .L372

.L374:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L373
	 jmp .L372

.L375:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L374
	 jmp .L370

.L376:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L375
	 jmp .L370

.L377:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L376
	 jmp .L374

.L378:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L377
	 jmp .L374

.L379:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L370
	 jmp .L378

.L380:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L379
	 jmp .L378

.L381:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L380
	 jmp .L370

.L382:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L381
	 jmp .L370

.L383:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L370
	 jmp .L382

.L384:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L370
	 jmp .L383

.L385:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L382
	 jmp .L384

.L386:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L385
	 jmp .L384

.L387:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L386
	 jmp .L166

.L388:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L386
	 jmp .L387

.L389:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L388

.L390:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L389
	 jmp .L388

.L391:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L390

.L392:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L391
	 jmp .L390

.L393:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L392
	 jmp .L166

.L394:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L393
	 jmp .L166

.L395:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L394

.L396:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L395
	 jmp .L394

.L397:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L396
	 jmp .L166

.L398:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L397
	 jmp .L166

.L399:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L398
	 jmp .L166

.L400:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L398
	 jmp .L399

.L401:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L166
	 jmp .L400

.L402:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L401
	 jmp .L400

.L403:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L398
	 jmp .L402

.L404:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L398
	 jmp .L403

.L405:
	 movq 8(%rsp), %R8
	 cmpq $1, %R8
	 jz .L402
	 jmp .L404

.L406:
	 movq 0(%rsp), %R8
	 cmpq $1, %R8
	 jz .L405
	 jmp .L404

.L407:
	 movq $1, 8(%rsp)
	 jmp .L406

.L408:
	 movq $0, 8(%rsp)
	 jmp .L406

.L409:
	 movq $1, 0(%rsp)
	 jmp .L408

.L410:
	 movq $0, 0(%rsp)
	 jmp .L408

.L0:
	 jmp .Lend

.Lend:
	 movq %rbp, %rsp
	 popq %rbp
	 movq $0, %rax
	 retq
