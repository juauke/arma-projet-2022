		ldi r0, 40 # r0 <- 40
		ldi r1, 0 # r1 <- 0
		ldi r2, 0 # r2 <- 0

		lsr r1, r0, 1 # r1 <- r0 >> 1 = r0/2

loop:	jlt r7, r1, output # if (r7 < r5) goto output
		subi r1, r0, 5 # r1 <- r0-5
		addi r3, r2, 1 # r3 <- r2+1
		addi r2, r3, 0 # r2 <- r3
		jmp loop # goto loop

output:	out r3
end:	jmp end # goto end