type token =
  | INT of (int)
  | NOP
  | MOV
  | NOT
  | LSR
  | OR
  | AND
  | ADD
  | ADDI
  | SUB
  | SUBI
  | JMP
  | LD
  | ST
  | IN
  | OUT
  | JLE
  | JLT
  | JEQ
  | JNE
  | COMA
  | COLON
  | LPAR
  | RPAR
  | REG of (int)
  | LABEL of (string)
  | EOL

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
    open Asm
# 35 "parser.ml"
let yytransl_const = [|
  258 (* NOP *);
  259 (* MOV *);
  260 (* NOT *);
  261 (* LSR *);
  262 (* OR *);
  263 (* AND *);
  264 (* ADD *);
  265 (* ADDI *);
  266 (* SUB *);
  267 (* SUBI *);
  268 (* JMP *);
  269 (* LD *);
  270 (* ST *);
  271 (* IN *);
  272 (* OUT *);
  273 (* JLE *);
  274 (* JLT *);
  275 (* JEQ *);
  276 (* JNE *);
  277 (* COMA *);
  278 (* COLON *);
  279 (* LPAR *);
  280 (* RPAR *);
  283 (* EOL *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  281 (* REG *);
  282 (* LABEL *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\001\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\002\000\002\000\002\000\002\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\001\000\001\000\004\000\004\000\004\000\
\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\006\000\006\000\004\000\006\000\004\000\006\000\002\000\002\000\
\006\000\002\000\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\005\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\027\000\028\000\029\000\030\000\000\000\002\000\031\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\026\000\000\000\000\000\023\000\
\024\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\006\000\000\000\007\000\008\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\019\000\021\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\022\000\020\000\009\000\010\000\
\011\000\015\000\014\000\012\000\013\000\017\000\016\000\018\000\
\025\000"

let yydgoto = "\002\000\
\024\000\025\000\026\000"

let yysindex = "\022\000\
\254\254\000\000\000\000\003\255\002\255\004\255\005\255\006\255\
\007\255\008\255\009\255\010\255\011\255\013\255\014\255\015\255\
\017\255\000\000\000\000\000\000\000\000\025\255\000\000\000\000\
\023\255\022\255\026\255\029\255\031\255\032\255\033\255\034\255\
\035\255\036\255\037\255\038\255\000\000\039\255\040\255\000\000\
\000\000\000\000\041\255\000\000\012\255\018\255\042\255\043\255\
\044\255\045\255\019\255\046\255\047\255\048\255\049\255\050\255\
\051\255\056\255\000\000\053\255\000\000\000\000\058\255\059\255\
\060\255\061\255\062\255\063\255\064\255\065\255\000\000\000\000\
\066\255\067\255\069\255\087\255\070\255\071\255\072\255\020\255\
\088\255\021\255\089\255\068\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\063\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000"

let yytablesize = 97
let yytable = "\003\000\
\004\000\005\000\006\000\007\000\008\000\009\000\010\000\011\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\019\000\
\020\000\021\000\059\000\066\000\091\000\094\000\001\000\022\000\
\023\000\027\000\029\000\028\000\030\000\031\000\032\000\033\000\
\034\000\035\000\036\000\058\000\037\000\038\000\039\000\040\000\
\060\000\041\000\061\000\067\000\092\000\095\000\042\000\043\000\
\044\000\046\000\045\000\047\000\048\000\049\000\050\000\051\000\
\052\000\053\000\054\000\055\000\056\000\057\000\004\000\000\000\
\000\000\000\000\062\000\063\000\064\000\065\000\068\000\069\000\
\070\000\071\000\072\000\073\000\074\000\075\000\076\000\077\000\
\078\000\079\000\080\000\081\000\082\000\083\000\084\000\087\000\
\093\000\096\000\000\000\085\000\086\000\097\000\088\000\089\000\
\090\000"

let yycheck = "\002\001\
\003\001\004\001\005\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\016\001\017\001\018\001\
\019\001\020\001\001\001\001\001\001\001\001\001\001\000\026\001\
\027\001\023\001\025\001\025\001\025\001\025\001\025\001\025\001\
\025\001\025\001\025\001\024\001\026\001\025\001\025\001\025\001\
\023\001\025\001\025\001\025\001\025\001\025\001\022\001\025\001\
\027\001\021\001\025\001\021\001\021\001\021\001\021\001\021\001\
\021\001\021\001\021\001\021\001\021\001\021\001\000\000\255\255\
\255\255\255\255\025\001\025\001\025\001\025\001\025\001\025\001\
\025\001\025\001\025\001\025\001\021\001\025\001\021\001\021\001\
\021\001\021\001\021\001\021\001\021\001\021\001\021\001\001\001\
\001\001\001\001\255\255\025\001\024\001\026\001\025\001\025\001\
\025\001"

let yynames_const = "\
  NOP\000\
  MOV\000\
  NOT\000\
  LSR\000\
  OR\000\
  AND\000\
  ADD\000\
  ADDI\000\
  SUB\000\
  SUBI\000\
  JMP\000\
  LD\000\
  ST\000\
  IN\000\
  OUT\000\
  JLE\000\
  JLT\000\
  JEQ\000\
  JNE\000\
  COMA\000\
  COLON\000\
  LPAR\000\
  RPAR\000\
  EOL\000\
  "

let yynames_block = "\
  INT\000\
  REG\000\
  LABEL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 20 "parser.mly"
                                 ( (_1, None) )
# 203 "parser.ml"
               : (Asm.label * Asm.instr option)))
; (fun __caml_parser_env ->
    Obj.repr(
# 21 "parser.mly"
                                 ( ("", None) )
# 209 "parser.ml"
               : (Asm.label * Asm.instr option)))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'code) in
    Obj.repr(
# 22 "parser.mly"
                                 ( ("", Some _1) )
# 216 "parser.ml"
               : (Asm.label * Asm.instr option)))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'code) in
    Obj.repr(
# 23 "parser.mly"
                                 ( ("", Some _1) )
# 223 "parser.ml"
               : (Asm.label * Asm.instr option)))
; (fun __caml_parser_env ->
    Obj.repr(
# 27 "parser.mly"
                                  ( Nop )
# 229 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 28 "parser.mly"
                                  ( Ldi (_2,_4) )
# 237 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 29 "parser.mly"
                                  ( Addi (_2,_4,0,false)  )
# 245 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 30 "parser.mly"
                        ( Not (_2,_4) )
# 253 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 31 "parser.mly"
                                ( Lsr (_2,_4,_6) )
# 262 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 32 "parser.mly"
                                ( Or  (_2,_4,_6) )
# 271 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 33 "parser.mly"
                                ( And (_2,_4,_6) )
# 280 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 34 "parser.mly"
                                  ( Add  (_2,_4,_6,false) )
# 289 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 35 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,false) )
# 298 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 36 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,false) )
# 307 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 37 "parser.mly"
                                  ( assert (0<=_4 && _4<32); Addi (_2,_6,_4,false) )
# 316 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 38 "parser.mly"
                                  ( Add  (_2,_4,_6,true)  )
# 325 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 39 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,true)  )
# 334 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 40 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,true)  )
# 343 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 41 "parser.mly"
                                  ( Load (_2, _4)  )
# 351 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 42 "parser.mly"
                                  ( Load (_2, _5)  )
# 359 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 43 "parser.mly"
                                  ( Store (_4, _2) )
# 367 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 44 "parser.mly"
                                  ( Store (_3, _6) )
# 375 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 45 "parser.mly"
                                  ( In _2  )
# 382 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 46 "parser.mly"
                                  ( Out _2 )
# 389 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : Asm.cond) in
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "parser.mly"
                                  ( CJmp (_2,_4,_6,_1) )
# 399 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 48 "parser.mly"
                                  ( Jmp _2 )
# 406 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
         ( LE )
# 412 "parser.ml"
               : Asm.cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 53 "parser.mly"
         ( LT )
# 418 "parser.ml"
               : Asm.cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "parser.mly"
         ( EQ )
# 424 "parser.ml"
               : Asm.cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parser.mly"
         ( NE )
# 430 "parser.ml"
               : Asm.cond))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : (Asm.label * Asm.instr option))
