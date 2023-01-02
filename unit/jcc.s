	ldi r1, 42 # r1 <- 42
	out r1 # putchar() <- r1=42

	subi r0, r1, 10 # r0 <- 42-10=32
	out r0 # putchar() <- r0=32

	jeq r0, r1, j1 # if (r0 == r1) goto j1
	jlt r0, r1, j1 # if (r0 < r1) goto j1 
	jle r0, r1, j1 # if (r0 <= r1) goto j1

	add r2, r0, r1 # r2 <- 32+42=74
	out r2 # putchar() <- r2=74
	jeq r2, r1, end # if (r2 == r1) goto end

j1: 	sub r1, r0, r0 # r1 <- r0-r0 = 0

	ldi r7, 106 # r7 <- 106 ; register r7 used for msg; 106 = 'j'
	out r7 # putchar() <- r7
	ldi r7, 49 # r7 <- 49 ; 49 = '1'
	out r7 # putchar() <- r7
	# msg should be 'j1'
 
	out r1 # putchar() <- r1=0

end:	jmp end
