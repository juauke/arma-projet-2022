	ldi r0, 10
	ldi r1, 3

	not r7, r0
	
	lsr r7, r0, 1
	
	and r7, r0, r1

	or r7, r0, r1
	
	# mul r7, r0, r1
	# muli r7, r0, 2
	
end:	jmp end
