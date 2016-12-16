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
	addi $t0, $gp, 4
	li $t1, 10
	sw $t1, 0($t0)
	addi $t1, $gp, 4
	lw $t2, 0($t1)
	li $t3, 5
	add $t4, $t2, $t3
	add $v0, $0, $t4
	jr $ra

main:
	addi $t5, $gp, 0
	jal t
	add $t6, $0, $v0
	sw $t6, 0($t5)
	addi $t6, $gp, 0
	lw $t7, 0($t6)
	move $a0, $t7
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $v0, 10
	syscall
.data
__str0: .asciiz "inside function"
