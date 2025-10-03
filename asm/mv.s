#	MV RD, RS
    #	ADDI RD, RS, 0
	.text
	.global	_start

_start:
	li x6, 30		# x6 = 30
	mv x5, x6		# x5 = x6
	addi x5, x6, 0
stop:
	j stop

	.end
