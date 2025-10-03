#	LB RD, I(RS1)
#   sign-extended
	.text
	.global	_start

_start:
	la x5, _array  # char *x5 = &(array[0])
	lb x6, 0(x5)   # char x6 = *x5
	lb x7, 1(x5)   # char x7 = *(x5 + 1)
stop:
	j stop

_array:	
	.byte 0x11
	.byte 0xff

	.end