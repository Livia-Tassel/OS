#	NOT RD, RS
    #	XORI RD, RS, -1 // -1 is 0xFFFFFFFF
	.text
	.global	_start

_start:
	li x6, 0xffff0000  # x6 = 0xffff0000

	not x5, x6	       # x5 = ~x6
	xori x5, x6, -1    # not
stop:
	j stop

	.end