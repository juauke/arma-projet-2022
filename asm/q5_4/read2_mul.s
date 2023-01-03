init: 	in r0 # r0 <- getchar()
		ldi r1, 0 # r1 <- 0; iter_index
	  	in r2 # r2 <- getchar()
	  	# r7 temp reg

int: 	subi r7, r0, 24 # r7 <- r0-24
	 	subi r0, r7, 24 # r0 <- r7-24; convert r0 to its integer value

	 	subi r7, r2, 24 # r7 <- r2-24;
	 	subi r2, r7, 24 # r2 <- r7-24; convert r2 to its integer value

loop:	add r7, r1, r0 # r7 <- r1+r0
		add r1, r7, 0 # r1 <- r7
		add r7, r3, 1 # r7 <- r3+1
		add r3, r7, 0 # r3 <- r7
		jeq r3, r2, end # if (r3 == r2) goto end
		jmp loop # goto loop


char: 	addi r2, r0, 24
	  	addi r0, r2, 24 # convert back r0 to its ascii value

		out r7 # putchar <- r7
end:    jmp end # goto end
