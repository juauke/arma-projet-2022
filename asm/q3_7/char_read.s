loop:	in r7 # r7 <- getchar()
	ldi r5, 13 # r5 <- 13 = <Enter>
	jeq r7, r5, end # if (r7 == r5) goto end
	out r7 # putchar() <- r7
	jmp loop # goto loop

end:	jmp end
