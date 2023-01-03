# arma-projet-2022
Material Architecture Project — Conception of a micro-processor in Diglog.

## Usage
The files needed to test the processor are:
- `digproc/alu.lgf`
- `digproc/combi.lgf`
- `digproc/io.lgf`
- `digproc/proc.lgf`
- `digproc/register.lgf`

## Assembly code
The question specific assembly code is in `asm/`. <br/>
Each question/exercise is then in their respective subfolder.
(for instance, the code corresponding to question **5.4** is in `q5_4/`)

## Tests

The test codes are located in `tests/`.
Precisely, the codes are mainly testing the usage of the function whose name / function is the name.
For instance, here is what each program verifies:
- **arith**.s: verifies arithmetical instructions i.e. *add*, *addi*, *sub*, *subi*;
- **fj**.s: verifies future jump (here with *jeq*);
- **io**.s: verifies *in*, *out* instructions;
- **jcc**.s: verifies all conditional jumps i.e. *jeq*, *jlt*, *jle* and *jne*;
- **jr**.s: verifies *jr* instruction,
- **lg**.s: verifies logical instructions i.e. *not*, *lsr*, *and* & *or*;
- **mem**.s : verifies *ld* and *st* instructions;
- **pj**.s: verifies past jump (here with *jeq*).

## Compiler patching

1. Add your previous version: <br/>
* Copy your previous digcomp binary to `patch/` as **digcomp_orig** .

2. Run the patch:
* $ cd digcomp <br/>
* $ make patch

This will make the patch from the file you copied to patch and my version of digcomp and install it in `digcomp/` .

N.B.: included version of **digcomp_orig** is the version that was given in the skeleton.

## Compiler source

The (patched) compiler source files are located in the directory `digcomp/`.