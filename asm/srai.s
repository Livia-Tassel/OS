#	SRAI RD, RS1, I
	.text
	.global	_start

_start:
	li x6, 0x80000000	# x6 = 0b1000-0000-0000-0000-0000-0000-0000-0000
	srai x5, x6, 4		# x5 = x6 >> 4

stop:
	j stop

	.end