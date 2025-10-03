#	LBU RD, I(RS1)
#   unsigned-extended
	.text
	.global	_start

_start:
	la x5, _array  # unsigned char *x5 = &(array[0])
	lbu x6, 0(x5)  # unsigned x6 = *x5
	lbu x7, 1(x5)  # unsigned x7 = *(x5 + 1)
stop:
	j stop

_array:	
	.byte 0x11
	.byte 0xff

	.end
