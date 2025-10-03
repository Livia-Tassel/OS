#	NEG RD, RS
    #	SUB RD, x0, RS
	.text
	.global	_start

_start:
	li x6, 1		# x6 = 1
	neg x5, x6		# x5 = -x6
	sub x5, x0, x6

stop:
	j stop

	.end
