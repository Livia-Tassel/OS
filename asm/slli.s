#	SLLI RD, RS1, I
	.text
	.global	_start

_start:
	li x6, 1	    # x6 = 1
	slli x5, x6, 3  # x5 = x6 << 3

stop:
	j stop

	.end