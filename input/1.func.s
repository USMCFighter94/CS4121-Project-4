.data
.newline: .asciiz "\n"
.text
.globl main
j main

t:
	la $t0, __str0
	move $a0, $t0
	li $v0, 4
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $t0, 10
	add $v0, $0, $t0
	jr $ra

main:
	addi $t1, $gp, 0
	jal t
	add $t2, $0, $v0
	sw $t2, 0($t1)
	addi $t2, $gp, 0
	lw $t3, 0($t2)
	move $a0, $t3
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $v0, 10
	syscall
.data
__str0: .asciiz "inside functions"
