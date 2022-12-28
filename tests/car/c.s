loop:	in r7
	ldi r5, 13
	jeq r7, r5, end
	out r7
	jmp loop

end:	jmp end
