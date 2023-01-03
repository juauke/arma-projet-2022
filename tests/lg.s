init:   mov r0, 16 # r0 <- 16
	mov r1, 48 # r1 <- 48
	mov r2, 0 # r0 <- 0

lg:     not r7, r2 # r7 <- 255
	lsr r6, r0, 1 # r6 <- 8
	or r5, r0, r1 # r5 <- 48
	and r4, r0, r1 # r4 <- 16
	
end:    jmp end	
