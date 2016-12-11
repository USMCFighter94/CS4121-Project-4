.data
.newline: .asciiz "\n"
.text
.globl main
main: nop
Function0:
	la $t0, __str0
	move $a0, $t0
	li $v0, 4
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $t0, 10
	jr $ra
Function1:
	addi $t1, $gp, 0
	lw $t2, 0($t1)
	move $a0, $t2
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $v0, 10
	syscall
.data
__str0: .asciiz "inside functions"
