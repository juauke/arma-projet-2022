init: 	in r0 # r0 <- getchar()
	  	in r1 # r1 <- getchar()
	  	# r7 temp reg

int: 	subi r7, r0, 24 # r7 <- r0-24
	 	subi r0, r7, 24 # r0 <- r7-24; convert r0 to its integer value

	 	subi r7, r1, 24 # r7 <- r2-24
	 	subi r1, r7, 24 # r2 <- r7-24; convert r1 to its integer value

calc:	mul r7, r0, r1 # r7 <- r0*r1 mod 256

end:    jmp end # goto end
