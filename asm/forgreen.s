# [label:] [operation] [comment]

.macro do_nothing	# directive
	nop		        # pseudo-instruction
	nop		        # pseudo-instruction
.endm	     		# directive

	.text	    	# directive
	.global _start	# directive
_start: 		    # label
	li x6, 5    	# pseudo-instruction
	li x7, 4	    # pseudo-instruction
	add x5, x6, x7	# instruction
	do_nothing	    # calling macro
stop:	j stop

	.end