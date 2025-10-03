# Calling Convention
# void _start()
# {
#     // calling nested routine
#     aa_bb(3, 4);
# }

# int aa_bb(int a, int b)
# {
#     return square(a) + square(b);
# }

# int square(int num)
# {
#     return num * num;
# }
	.text
	.global	_start

_start:
	la sp, stack_end

	# aa_bb(3, 4);
	li a0, 3
	li a1, 4
	call aa_bb

stop:
	j stop

# int aa_bb(int a, int b)
# return a^2 + b^2
aa_bb:
	# prologue
	addi sp, sp, -16
	sw s0, 0(sp)
	sw s1, 4(sp)
	sw s2, 8(sp)
	sw ra, 12(sp)

	# cp and store the input params
	mv s0, a0
	mv s1, a1

	li s2, 0

	mv a0, s0
	jal square
	add s2, s2, a0

	mv a0, s1
	jal square
	add s2, s2, a0

	mv a0, s2

	# epilogue
	lw s0, 0(sp)
	lw s1, 4(sp)
	lw s2, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret

# int square(int num)
square:
	addi sp, sp, -8
	sw s0, 0(sp)
	sw s1, 4(sp)

	mv s0, a0
	mul s1, s0, s0
	mv a0, s1

	lw s0, 0(sp)
	lw s1, 4(sp)
	addi sp, sp, 8

	ret
	nop

stack_start:
	.rept 12
	.word 0
	.endr
stack_end:

	.end
