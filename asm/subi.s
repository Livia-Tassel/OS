	.text
	.global	_start

_start:
	li x6, 30		  # x5 = 1
	addi x5, x6, -20  # x5 = x6 - 20

stop:
	j stop

	.end