	ldi r0, 4
	ldi r1, 0
	ldi r2, 10
	ldi r3, 0

loop:	add r4, r1, r0
	add r1, r4, 0
	add r4, r3, 1
	add r3, r4, 0
	jeq r3, r2, end
	jmp loop

end:    jmp end
