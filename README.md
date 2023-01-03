# arma-projet-2022
Material Architecture Project --- Conception of a micro-processor in Diglog.

## Usage
The files needed to test the processor are:
- `digproc/alu.lgf`
- `digproc/combi.lgf`
- `digproc/io.lgf`
- `digproc/proc.lgf`
- `digproc/register.lgf`

## Tests

The test codes are located in `tests/`.
Precisely, the codes are mainly testing the usage of the function whose name is the directory's.

## Compiler patching

1. Building the patch

$ diff -urN digcomp_orig digcomp_new > digcomp_jb.patch

2. Applying the patch

# patch -s -p0 < digcomp_jb.patch

## Compiler source

The (patched) compiler source files are located in the directory `digcomp/`.

## Unit
Those codes verify that functions do what they are supposed to.
