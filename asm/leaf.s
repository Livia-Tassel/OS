# Calling Convention

# void _start()
# {
#     // calling leaf routine
#     square(3);
# }

# int square(int num)
# {
#     return num * num;
# }
	.text
	.global	_start

_start:
	la sp, stack_end  # prepare stack for calling functions

	li a0, 3
	call square

stop:
	j stop

# int square(int num)
square:
	# prologue
	addi sp, sp, -8
	sw s0, 0(sp)
	sw s1, 4(sp)

	mv s0, a0
	mul s1, s0, s0
	mv a0, s1

	# epilogue
	lw s0, 0(sp)
	lw s1, 4(sp)
	addi sp, sp, 8

	ret
	nop

	# allocate stack space
stack_start:
	.rept 12
	.word 0
	.endr
stack_end:

	.end

