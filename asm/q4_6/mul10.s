	ldi r0, 4 # r0 <- 4
	ldi r1, 0 # r1 <- 0
	ldi r2, 10 # r2 <- 10; max_iter
	ldi r3, 0 # r3 <- 0

loop:	add r4, r1, r0 # r4 <- r1+r0
	add r1, r4, 0 # r1 <- r4
	add r4, r3, 1 # r4 <- r3+1
	add r3, r4, 0 # r3 <- r4
	jeq r3, r2, end # if (r3 == r2) goto end
	jmp loop # goto loop

		out r4 # putchar() <- r4
end:    jmp end # goto end
