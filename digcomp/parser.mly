%{
    open Asm
%}


%token <int> INT
%token NOP MOV NOT LSR OR AND ADD ADDI SUB SUBI MUL MULI JMP LD ST IN OUT JR JLE JLT JEQ JNE
%token COMA COLON LPAR RPAR
%token <int> REG
%token <string> LABEL
%token EOL

%start main     
%type <(Asm.label * Asm.instr option)> main
%type <Asm.cond> cjump

%%

main:
    LABEL COLON                  { ($1, None) }
  | EOL                          { ("", None) }
  | code EOL                     { ("", Some $1) }
  | code                         { ("", Some $1) }
;

code:
  | NOP                           { Nop }
  | MOV REG COMA INT              { Ldi ($2,$4) }
  | MOV REG COMA REG              { Addi ($2,$4,0,false)  }
  | NOT REG COMA REG		  { Not ($2,$4) }
  | LSR REG COMA REG COMA INT	  { Lsr ($2,$4,$6) }
  | OR  REG COMA REG COMA REG	  { Or  ($2,$4,$6) }
  | AND REG COMA REG COMA REG	  { And ($2,$4,$6) }
  | ADD REG COMA REG COMA REG     { Add  ($2,$4,$6,false) }
  | ADDI REG COMA REG COMA INT    { assert (0<=$6 && $6<32); Addi ($2,$4,$6,false) }
  | ADD REG COMA REG COMA INT     { assert (0<=$6 && $6<32); Addi ($2,$4,$6,false) }
  | ADD REG COMA INT COMA REG     { assert (0<=$4 && $4<32); Addi ($2,$6,$4,false) }
  | SUB REG COMA REG COMA REG     { Add  ($2,$4,$6,true)  }
  | SUB REG COMA REG COMA INT     { assert (0<=$6 && $6<32); Addi ($2,$4,$6,true)  }
  | SUBI REG COMA REG COMA INT    { assert (0<=$6 && $6<32); Addi ($2,$4,$6,true)  }
  | MUL REG COMA REG COMA REG     { Mul  ($2,$4,$6) }
  | MULI REG COMA REG COMA INT    { assert (0<=$6 && $6<32); Muli ($2,$4,$6) }
  | LD REG COMA REG COMA INT      { Load ($2, $4, $6)  }
  | MOV REG COMA LPAR REG RPAR    { Load ($2, $5, 0)  }
  | ST REG COMA REG COMA INT      { Store ($4, $2, $6) }
  | MOV LPAR REG RPAR COMA REG    { Store ($3, $6, 0) }
  | IN REG                        { In $2  }
  | OUT REG                       { Out $2 }
  | JR REG COMA REG               { Jr  ($2,$4) }
  | cjump REG COMA REG COMA LABEL { CJmp ($2,$4,$6,$1) }
  | JMP LABEL                     { Jmp $2 }
;

cjump:
  | JLE  { LE }
  | JLT  { LT }
  | JEQ  { EQ }
  | JNE  { NE }
;
