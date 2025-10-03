#	LI RD, I
    #	ADDI RD, x0, I

    #	LUI RD, Upper-20
    #	ADDI RD, RD, Lower-12

	.text
	.global	_start

_start:
	# [-2,048, +2,047]
	li x5, 0x80

	addi x5, x0, 0x80

	# out of [-2,048, +2,047]
	li x6, 0x12345001

	lui x6, 0x12345
	addi x6, x6, 0x001

	# out of [-2,048, +2,047]
	# most-significant-bit of "lower-12" is 1
	li x7, 0x12345FFF	

	lui x7, 0x12346
	addi x7, x7, -1

stop:
	j stop

	.end
