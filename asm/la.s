#	LA RD, Address
    #	AUIPC RD, Upper-20
    #	ADDI RD, RD, Lower-12
	.text
	.global	_start

_start:
	la x5, _start  # x5 = _start
	jr x5

stop:
	j stop

exit:

	.end
