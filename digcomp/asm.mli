(**
    Module providing types and functions to handle assembly code.
 *)


(**
    Type for the conditions in conditional jumps
 *)
type cond =
    LT (** lower than *)
  | LE (** lower than or equal to *)
  | EQ (** equal to *) 
  | NE (** not equal to *)



(**
    Type for the name of labels
 *)
type label = string



(**
    Type for one assembly instruction:
    
    {ul 
      {- rd = register where we will store the result of the operation}
      {- rs = first source register}
      {- rt = second source register}
      {- immX = immediate integer value on X bits}
      {- uimmX = immediate unsigned-integer value on X bits}
    }
 *)
type instr =
      Nop
    | Ldi   of (int * int)   (** rd, imm8 *)
    | Not   of (int * int)   (** rd, rs *)
    | Lsr   of (int * int * int)        (** rd, rs, uimm5 *)
    | Or    of (int * int * int)        (** rd, rs, rt *)
    | And   of (int * int * int)        (** rd, rs, rt *)
    | Add   of (int * int * int * bool) (** rd, rs, rt, sub? *)
    | Addi  of (int * int * int * bool) (** rd, rs, uimm5, sub? *)
    | Mul   of (int * int * int) (** rd, rs, rt *)
    | Muli  of (int * int * int) (** rd, rs, uimm5 *)
    | Load  of (int * int * int ) (** rd, rs, imm5 *)
    | Store of (int * int * int ) (** rs, rd, imm5 *)
    | In    of int         (** rd *)
    | Out   of int         (** rs *)
    | Jr    of (int * int)   (** rd, rs *)
    | CJmp  of (int * int * label * cond) (** rs, rt, addr, cond *)
    | Jmp   of label (** addr *)


(**
    dump_instr i pretty-prints instruction i to the standard output.  
    @param i  some instruction i
 *)
val dump_instr : instr -> unit


(**
    instr_to_bin i caddr assoc computes the encoding of instruction i.
    @param i instruction to encode
    @param caddr line number of instruction i
    @param assoc list that associates a label to its line number
    @return a pair of strings (s1,s2), where
    {ul
      {- s1 = hexadecimal code to load in the "high" SRAM}
      {- s2 = hexadecimal code to load in the "low" SRAM}
    }
*)
val instr_to_bin : instr -> int -> (label * int) list -> string * string
