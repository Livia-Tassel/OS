#	BNE RS1, RS2, I
	.text
	.global	_start

_start:
	# i = 0
	# while (i < 5) i++;

	li x5, 0
	li x6, 5
loop:
	addi x5, x5, 1
	bne x5, x6, loop

stop:
	j stop

	.end
