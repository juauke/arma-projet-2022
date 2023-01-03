init: 	ldi r0, 49 # r0 <- 49 = '1'
		ldi r1, 57 # r1 <- 57 = '9'

loop:	in r7 # r7 <- getchar()

		jlt r7, r0, loop # if (r7 < r0) goto loop (if r7 < '1' )
		jlt r1, r7, loop # if (r1 < r7) goto loop (if r7 > '9')

		out r7 # putchar() <- r7

end:	jmp end
