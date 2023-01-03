	ldi r0, 0 # r0 <- 0
	ldi r5, 0 # r5 <- 0

	ldi r3, 13 # r3 <- 13 = <Enter>

loop:	in r7 # r7 <- getchar()
	jeq r7, r3, eol # if (r7 == r3) goto eol
	out r7 # putchar() <- r7
	add r6, r5, r0 # r6 <- r5+r0
	st r7, r6, 0 # MEM[r6+0] <- r7
	addi r1, r0, 1 # r1 <- r0+1
	add r0, r1, 0 # r0 <- r1
	jmp loop # goto loop

eol:	out r3 # putchar() <- r3
	ldi r3, 0 # r3 <- 0
	
loop2:
	add r6, r5, r3 # r6 <- r5+r3
	ld r7, r6, 0 # r7 <- MEM[r6+0]
	subi r6, r7, 16 # r6 <- r7-16 (cannot subtract more than 31 at once)
	subi r7, r6, 16 # r7 <- r7-16
	out r7 # putchar() <- r7
	addi r2, r3, 0 # r2 <- r3
	addi r3, r2, 1 # r3 <- r2+1
	jeq r0, r3, end # if (r0 == r3) goto end
	jmp loop2 # goto loop2

end:	jmp end # goto end
