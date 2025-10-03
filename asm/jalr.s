#	JAL RD, I

# int a = 1;
# int b = 1;
# void sum()
# {
#     a = a + b;
# } 
# void _start()
# {
#     sum();
# }

	.text
	.global	_start

_start:
	li x6, 1
	li x7, 2
	jal x5, sum  # call sum, return address saved in x5

stop:
	j stop

sum:
	add x6, x6, x7		# x6 = x6 + x7
	jalr x0, 0(x5)		# return

	.end
