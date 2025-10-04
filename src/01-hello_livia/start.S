#include "platform.h"
	.equ	STACK_SE, 1024

	.global	_start

	.text
_start:
	csrr	t0, mhartid
	mv	tp, t0
	bnez	t0, park

	slli	t0, t0, 10
	la	sp, stacks + STACK_SE
	add	sp, sp, t0

	j	start_kernel

park:
	wfi
	j	park

.balign 16
stacks:
	.skip	STACK_SE * MAXNUM_CPU

	.end
