	.text	
	.globl		main
main:
	li		$t0, 10
	sw		$t0, num1
	li		$t0, 20
	sw		$t0, num2
	li		$t0, 13
	sw		$t0, num3
	lw		$t0, num2
	li		$t1, 20
	add		$t2, $t0, $t1
	lw		$t0, num2
	add		$t1, $t2, $t0
	li		$t0, 3
	lw		$t2, num2
	mul		$t3, $t0, $t2
	seq		$t0, $t1, $t3
	beq		$zero, $t0, L1
	lw		$t1, num1
	li		$v0, 1
	move		$a0, $t1
	syscall	
	li		$v0, 4
	la		$a0, _nl
	syscall	
	lw		$t1, num2
	li		$v0, 1
	move		$a0, $t1
	syscall	
	li		$v0, 4
	la		$a0, _nl
	syscall	
L1:
	lw		$t1, num1
	lw		$t2, num2
	sub		$t3, $t1, $t2
	sw		$t3, num1
	lw		$t1, num1
	li		$v0, 1
	move		$a0, $t1
	syscall	
	li		$v0, 4
	la		$a0, _nl
	syscall	
	lw		$t1, num2
	li		$v0, 1
	move		$a0, $t1
	syscall	
	li		$v0, 4
	la		$a0, _nl
	syscall	
	lw		$t1, num2
	li		$t2, 4
	div		$t3, $t1, $t2
	sw		$t3, num2
	lw		$t1, num2
	li		$v0, 1
	move		$a0, $t1
	syscall	
	li		$v0, 4
	la		$a0, _nl
	syscall	
	lw		$t1, num2
	li		$t2, 3
	div		$t3, $t1, $t2
	mfhi		$t3
	sw		$t3, num2
	lw		$t1, num2
	li		$v0, 1
	move		$a0, $t1
	syscall	
	li		$v0, 4
	la		$a0, _nl
	syscall	
	lw		$t1, num3
	li		$t2, 5
	div		$t3, $t1, $t2
	mfhi		$t3
	sw		$t3, num3
	lw		$t1, num3
	li		$v0, 1
	move		$a0, $t1
	syscall	
	li		$v0, 4
	la		$a0, _nl
	syscall	
	li		$v0, 10
	syscall	
	.data	
	.align		4
_nl:	.asciiz		"\n"
num1:	.word		0
num2:	.word		0
num3:	.word		0
