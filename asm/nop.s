#	NOP
    #	ADDI x0, x0, 0
	.text
	.global	_start

_start:
	nop
	
	addi x0, x0, 0

stop:
	j stop

	.end