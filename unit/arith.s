init:   mov r0, 0 # r0 <- 0
	mov r1, 1 # r1 <- 1
	mov r2, 2 # r2 <- 2

arith:  add r7, r0, r1 # r7 <- 0+1 = 1
	addi r6, r0, 1 # r6 <- 0+1 = 1
	
	sub r7, r6, 2 # r7 <- 1-2 = -1
	subi r6, r2, 1 # r2 <- 2-1 = 1

	mul r5, r6, r2 # r5 <- 1*2 = 2
	muli r4, r5, 10 # r4 <- 2*10 = 20

end:    jmp end	
