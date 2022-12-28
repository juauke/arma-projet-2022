	ldi r1, 42
	out r1

	subi r0, r1, 10
	out r0

	jeq r0, r1, j1
	jlt r0, r1, j1
	jle r0, r1, j1

	add r2, r0, r1
	out r2 
	jeq r2, r1, end

j1: 	sub r1, r0, r0

	ldi r7, 106 # register used for msg; 106 = 'j'
	out r7
	ldi r7, 49 # 49 = '1'
	out r7
	# msg should be 'j1'
 
	out r1

end:	jmp end
