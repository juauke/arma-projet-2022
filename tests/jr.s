	mov r0, 0 # r0 <- 0
	mov r1, 1 # r1 <- 1

	jr r0, r1 # goto (256r0 + r1 = 256*0 + 1 = 1)

end: jmp end
