	ldi r1, 42 # r1 <- 42

	ldi r2, 17 # r2 <- 17
	add r0, r1, r2 # r0 <- r1+r2 = 42 + 17 = 59

	ldi r2, 16 # r2 <- 16
	sub r0, r1, r2 # r0 <- r1-r2 = 42 - 16 = 26

end:    jmp end
