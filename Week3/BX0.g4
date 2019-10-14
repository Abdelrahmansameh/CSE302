grammar BX0 ;

program: vardecl* statement* ;

vardecl: 'var' varinit (',' varinit)*':'type';';

type:  'int64' #integer
      |'bool'  #bool
      ;

varinit: VAR ('='expr)?;


statement: block | move | print | ifelse | whilee;

move: VAR '=' expr ';' ;
print: 'print' expr ';' ;
block: '{'(statement)*'}';
ifelse: 'if' '('expr')'block('else'(ifelsecont))?;
ifelsecont : (ifelse) | block;
whilee: 'while''('expr')'block;

expr: VAR                                    # variable
    | BOOL                                   # boolean
    | NUM                                    # number
    | op=('~'|'-'|'!') expr                  # unop
    | expr op=('*'|'/'|'%') expr             # mul
    | expr op=('+'|'-') expr                 # add
    | expr op=('<<'|'>>') expr               # shift
    | expr '&' expr                          # and
    | expr '^' expr                          # xor
    | expr '|' expr                          # or
    | expr op=('<' | '<=' | '>' | '>=' | '==' | '!=' ) expr # comparaison
    | expr op=('&&' | '||')  expr            # boolop
    | '(' expr ')'                           # parens
    ;

BOOL: 'true' | 'false' ;
VAR: [A-Za-z_][A-Za-z0-9_]* ;
NUM: [0-9]+ ;

COMMENT: '//' ~[\r\n]* '\r'? '\n' -> skip ;
WS: [ \t\r\n]+ -> skip ;
