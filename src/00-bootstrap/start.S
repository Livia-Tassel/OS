#include "platform.h"
	.equ	STACK_SE, 1024

	.global	_start

	.text
_start:
	# park harts with id != 0
	csrr	t0, mhartid  # read current hart id
	mv	tp, t0
	bnez	t0, park     # park the hart

	# hart id == 0
	# prepare stack pointer
	slli	t0, t0, 10
	la	sp, stacks + STACK_SE
	add	sp, sp, t0

	j	start_kernel  # hart 0 jump to c

park:
	wfi
	j	park

.balign 16
stacks:
	.skip	STACK_SE * MAXNUM_CPU  # allocate space for all the harts stacks

	.end
