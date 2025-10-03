#	ADDI RD, RS1, I
	.text
	.global	_start

_start:
	li x6, 2		# x6 = 2
	addi x5, x6, 1	# x5 = x6 + 1

stop:
	j stop

	.end
