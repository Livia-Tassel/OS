#	ANDI RD, RS1, I
	.text
	.global	_start

_start:
	li x6, 0x10		   # x6 = b1000-0000
	andi x5, x6, 0x01  # x5 = x6 & 0x01

stop:
	j stop

	.end
