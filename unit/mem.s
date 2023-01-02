	ldi r7, 53 # r7 <- 53
	ldi r0, 66 # r0 <- 66
	ldi r1, 76 # r1 <- 76
	ldi r2, 86 # r2 <- 86
	
	st r0, r7, 0 # MEM[r7+0] <- r0=66
	st r1, r7, 1 # MEM[r7+1] <- r1=76
	st r2, r7, -4 # MEM[r7-4] <- r2=86
	
	ld r3, r7, 0 # r3 <- MEM[r7+0] = 66
	ld r3, r7, 1 # r3 <- MEM[r7+1] = 76
	ld r3, r7, 2 # r3 <- MEM[r7+2] = 86

	ldi r1, 256 # r1 <- 256
	
	st r1, r7, 1 # MEM[r7+1] <- r1 = 256

	ld r3, r7, 0 # r3 <- MEM[r7+0] = 66 
	ld r3, r7, 1 # r3 <- MEM[r7+1] = 256
	ld r3, r7, 2 # r3 <- MEM[r7+2] = 86
