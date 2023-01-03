	ldi r0, 49 # r0 <- 49 = '1'
	ldi r1, 57 # r1 <- 57 = '9'

	ldi r6, 105 # r6 <- 105 = 'i'
	out r6 # putchar() <- r6
	ldi r6, 63 # r6 <- 63 = '?'
	out r6 # putchar() <- r6

loop:	in r7 # r7 <- getchar()
	jlt r7, r0, loop # if (r7 < r0) goto loop (if r7 < '1' )
	jlt r1, r7, loop # if (r1 < r7) goto loop (if r7 > '9')

	out r7 # putchar() <- r7
	subi r6, r7, 24 # r6 <- r7-24 (cannot do subtract strictly more than 31 at once)
	subi r7, r6, 24 # r7 <- r6-24

	ldi r0, 97 # r0 <- 97 = 'a'
	ldi r1, 122 # r1 <- 122 = 'z'

	ldi r6, 13 # r6 <- 13 = <Enter>
	out r6 # putchar() <- r6
	ldi r6, 99 # r6 <- 99 = 'c'
	out r6 # putchar() <- r6
	ldi r6, 63 # r6 <- 63 = '?'
	out r6 # putchar() <- r6

getc:	in r5 # r5 <- getchar()
	jlt r5, r0, getc # if (r5 < r0) = goto loop (if r5 < '1' )
	jlt r1, r5, getc # if (r1 < r5) = goto loop (if r5 > '9')

	out r5 # putchar() <- r5
	ldi r6, 13 # r6 <- 13 = <Enter>
	out r6 # putchar() <- r6

	ldi r3, 0 # r3 <- 0
	add r0, r7, 0 # r0 <- r7
line:	add r1, r7, 0 # r1 <- r7

putc:   out r5 # putchar() <- r5
	subi r2, r1, 1 # r2 <- r1-1
	add r1, r2, 0 # r1 <- r2
	jeq r1, r3, nextl # if (r1 == r3) goto nextl
	jmp putc # goto putc

nextl:	out r6 # putchar() <- r6

	subi r2, r0, 1 # r2 <- r0-1
	add r0, r2, 0 # r0 <- r2
	jeq r0, r3, end # if (r0 == r3) goto end
	jmp line # goto line

end:    jmp end
