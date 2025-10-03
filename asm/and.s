#	AND RD, RS1, RS2
	.text
	.global	_start

_start:
	li x6, 0x10		# x6 = b0001-0000
	li x7, 0x11		# x7 = b0001-0001
	and x5, x6, x7	# x5 = x6 & x7

stop:
	j stop

	.end
