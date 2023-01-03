begin:	ldi r0, 48 # r0 <- 48 = '0'
	ldi r1, 57 # r1 <- 57 = '9'
	ldi r2, 0 # r0 <- 0
	ldi r3, 1 # r3 <- 1

	ldi r6, 69 # r6 <- 69 = 'E'
	out r6 # putchar() <- r6
	ldi r6, 110 # r6 <- 110 = 'n'
	out r6 # putchar() <- r6
	ldi r6, 116 # r6 <- 116 = 't'
	out r6 # putchar() <- r6
	ldi r6, 105 # r6 <- 105 = 'i'
	out r6 # putchar() <- r6
	ldi r6, 101 # r6 <- 101 = 'e'
	out r6 # putchar() <- r6
	ldi r6, 114 # r6 <- 114 = 'r'
	out r6 # putchar() <- r6
	ldi r6, 32 # r6 <- 32 = ' '
	out r6 # putchar() <- r6
	ldi r6, 63 # r6 <- 63 = '?'
	out r6 # putchar() <- r6
	ldi r6, 32 # r6 <- 32 = ' '
	out r6 # putchar() <- r6

loop:	in r7 # r7 <- getchar()
	ldi r5, 13 # r5 <- 13 = <Enter>
	jeq r7, r5, end # if (r7 == r5) goto end
	jlt r7, r0, loop # if (r7 < r0) goto loop (if r7 < '0')
	jlt r1, r7, loop # if (r1 < r7) goto loop (if r7 > '9')
	subi r6, r7, 24 # r6 <- r7-24; convert to decimal by subtracting 48
	subi r7, r6, 24 # r7 <- r6-24; cannot subtract strictly more than 31 at once
	mul r5, r2, r3 # r5 <- r2*r3 mod 256
	add r6, r5, r7 # r6 <- r5+r7; browse the number given
	
	addi r2, r6, 0 # r2 <- r6
	
	muli r6, r3, 10 # r6 <- r3*10 mod 256 (view number as number*10^(index_of_digit-1))
	
	addi r6, r3, 0 # r6 <- r3
	
	addi r6, r7, 24 # r6 <- r7+24; convert back to ascii by subtracting 48
	addi r7, r6, 24 # r6 <- r7+24
	out r7 # putchar() <- r7
	jmp loop

end: 	jmp end # goto end
