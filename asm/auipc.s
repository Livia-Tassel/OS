#	AUIPC RD, I
	.text
	.global	_start

_start:
	auipc x5, 0x12345  # x5 = pc + (0x12345 << 12)
	auipc x6, 0		   # x6 = pc
stop:
	j stop

	.end