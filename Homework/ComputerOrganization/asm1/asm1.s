# Parker Gabel
# netid: parkerdgabel
.text
.globl studentMain
studentMain:
	# Function prologue
	addiu $sp, $sp, -24 # allocate stack space -- default of 24 here
	sw $fp, 0($sp) # save caller’s frame pointer
	sw $ra, 4($sp) # save return address
	addiu $fp, $sp, 20 # setup main’s frame pointer

.text
	#Load all initial values
	la	$s0, median	# s0 = &median
	lw	$t0, 0($s0) 	# t0 = median
	 
	la	$s1, absVal 	# s1 = &absVal
	lw	$t1, 0($s1) 	# t0 = absVal
	
	la	$s2, sum 	# s2 = &sum
	lw	$t2, 0($s2) 	# t2 = sum
	
	la	$s3, rotate 	# s3 = &rotate
	lw	$t3, 0($s3) 	# t3 = rotate
	
	la	$s4, dump 	# s4 = &dump
	lw	$t4, 0($s4) 	# t4 = dump
	
	la	$s5, one 	# s5 = &one
	lw	$t5, 0($s5) 	# t5 = one
	
	la	$s6, two 	# s6 = &two
	lw	$t6, 0($s6) 	# t6 = two
	
	la	$s7, three 	# s7 = &three
	lw	$t7, 0($s7) 	# t7 = three
	
	# All relevant values are now loaded. Execute Tasks
	addi 	$t8, $zero, 1
	bne 	$t0, $t8, ABSVAL
MEDIAN:	# Median task
.data
MEDIAN_MSG:
	.asciiz "median: "
COMPARISON_MSG:
	.asciiz "Comparisons: "
.text
	beq 	$t5, $t6, MedianIf # one == two
	beq 	$t5, $t7, MedianIf # one == three
	j	MedianElseIf	   # Jump to median else if

MedianIf: # Executed if (one == two || one == three)
	# print_str(MEDIAN)
	addi	$v0, $zero, 4
	la	$a0, MEDIAN_MSG
	syscall
	
	# print_int(one)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t5
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
	j	PRINT_NEW_LINE

MedianElseIf: # Executed if (one == two) || (one == three) is not true
	bne	$t6, $t7, MedianElse
	# print_str(MEDIAN)
	addi	$v0, $zero, 4
	la	$a0, MEDIAN_MSG
	syscall
	
	# print_int(two)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t6
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
	j	PRINT_NEW_LINE
MedianElse: # Executed if all previous branches failes.
	slt	$t8, $t5, $t6 # int cmp12 = (one < two)
	slt	$t9, $t5, $t7 # int cmp13 = (one < three)
	slt	$t0, $t6, $t7 # int cmp23 = (two < three). We don't need the value stored in $t0 at this point anymore.
	
	# print_str(COMPARISON_MSG)
	addi	$v0, $zero, 4
	la	$a0, COMPARISON_MSG
	syscall
	
	# print_int(cmp12)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t8
	syscall
	
	# print_chr(' ')
	addi	$v0, $zero,11
	addi	$a0, $zero,32
	syscall
	
	# print_int(cmp13)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t9
	syscall
	
	# print_chr(' ')
	addi	$v0, $zero, 11
	addi	$a0, $zero, 32
	syscall
	
	
	# print_int(cmp23)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t0
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
	# Now branch in else statement
	bne	$t8, $t0, L1 # cmp12 == cmp23
	# print_str(MEDIAN)
	addi	$v0, $zero, 4
	la	$a0, MEDIAN_MSG
	syscall
	
	# print_int(two)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t6
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
L1:
	beq	$t8, $t9, L2 # cmp12 != cmp13
	# print_str(MEDIAN)
	addi	$v0, $zero, 4
	la	$a0, MEDIAN_MSG
	syscall
	
	# print_int(one)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t5
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
L2:
	beq	$t9, $t0, PRINT_NEW_LINE # cmp13 != cmp23
	# print_str(MEDIAN)
	addi	$v0, $zero, 4
	la	$a0, MEDIAN_MSG
	syscall
	
	# print_int(three)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t0
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
PRINT_NEW_LINE:
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
ABSVAL: # absVal task
.data
NEGATIVE: 	
	.asciiz		" was negative"

.text
	addi 	$t8, $zero, 1
	bne 	$t1, $t8, SUM # If absVal != 1 jump to sum
	
	slt	$t8, $t5, $zero # check one < 0
	beq	$t8, $zero, B1 
	
	
.data
ONE: 	
	.asciiz		"'one'"

.text
	# print_str(ONE)
	addi	$v0, $zero, 4
	la	$a0, ONE
	syscall
	
	# print_str(NEGATIVE)
	addi	$v0, $zero, 4
	la	$a0, NEGATIVE
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
	sub	$t5, $zero, $t5 # reverses one
	sw	$t5, 0($s5)
B1:
	slt	$t8, $t6, $zero # check two < 0
	beq	$t8, $zero, B2 
	
	
.data
TWO: 	
	.asciiz		"'two'"

.text
	# print_str(TWO)
	addi	$v0, $zero, 4
	la	$a0, TWO
	syscall
	
	# print_str(NEGATIVE)
	addi	$v0, $zero, 4
	la	$a0, NEGATIVE
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
	sub	$t6, $zero, $t6 # reverses two
	sw	$t6, 0($s6)
	
B2:
	slt	$t8, $t7, $zero # check three < 0
	beq	$t8, $zero, B3
	
	
.data
THREE: 	
	.asciiz		"'three'"

.text
	# print_str(THREE)
	addi	$v0, $zero, 4
	la	$a0, THREE
	syscall
	
	# print_str(NEGATIVE)
	addi	$v0, $zero, 4
	la	$a0, NEGATIVE
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
	sub	$t7, $zero, $t7 # reverses three
	sw	$t7, 0($s7)

B3:
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
SUM:
	addi 	$t8, $zero, 1
	bne 	$t2, $t8, ROTATE # If sum != 1 jump to rotate
	
	add	$t8, $t5, $t6 	 # t8 = one + two
	add	$t8, $t8, $t7	 # sum = (one + two) + three
	
.data
SUM_MSG:	
	.asciiz		"sum: "

.text
	# print_str(SUM_MSG)
	addi	$v0, $zero, 4
	la	$a0, SUM_MSG
	syscall
	
	addi	$v0, $zero, 1
	add	$a0, $zero, $t8
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
ROTATE:
	addi 	$t8, $zero, 1
	bne 	$t3, $t8, DUMP # If rotate != 1 jump to dump
	
	sw	$t5, 0($s6) # Store two = one
	sw	$t6, 0($s7) # Store three = two
	sw	$t7, 0($s5) # Store one = three
	
	# Update all values
	la	$s5, one 	# s5 = &one
	lw	$t5, 0($s5) 	# t5 = one
	
	la	$s6, two 	# s6 = &two
	lw	$t6, 0($s6) 	# t6 = two
	
	la	$s7, three 	# s7 = &three
	lw	$t7, 0($s7) 	# t7 = three
DUMP:
	addi 	$t8, $zero, 1
	bne 	$t4, $t8, DONE # If DUMP != 1 jump to DONE
	
.data
ONE_MSG:	
	.asciiz		"one: "
TWO_MSG:	
	.asciiz		"two: "
THREE_MSG:	
	.asciiz 	"three: "

.text
	# print_str(ONE_MSG)
	addi	$v0, $zero, 4
	la	$a0, ONE_MSG
	syscall
	
	# print_int(one)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t5
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
	# print_str(TWO_MSG)
	addi	$v0, $zero, 4
	la	$a0, TWO_MSG
	syscall
	
	# print_int(two)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t6
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
	# print_str(THREE_MSG)
	addi	$v0, $zero, 4
	la	$a0, THREE_MSG
	syscall
	
	# print_int(three)
	addi	$v0, $zero, 1
	add	$a0, $zero, $t7
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
	
	# print_chr('\n')
	addi	$v0, $zero,11
	addi	$a0, $zero,0xa
	syscall
.text
DONE:	# Function epilogue
	lw $ra, 4($sp) # get return address from stack
	lw $fp, 0($sp) # restore the caller’s frame pointer
	addiu $sp, $sp, 24 # restore the caller’s stack pointer
	jr $ra # return to caller’s code