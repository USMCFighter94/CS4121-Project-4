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
	subu $sp, $sp, 64
	sw $t0, 0($sp)
	sw $t1, 4($sp)
	sw $t2, 8($sp)
	sw $t3, 12($sp)
	sw $t6, 16($sp)
	sw $t7, 20($sp)
	sw $s0, 24($sp)
	sw $s1, 28($sp)
	sw $s2, 32($sp)
	sw $s3, 36($sp)
	sw $s4, 40($sp)
	sw $s5, 44($sp)
	sw $s6, 48($sp)
	sw $s7, 52($sp)
	sw $t8, 56($sp)
	sw $ra, 60($sp)
	jal t
	lw $t0, 0($sp)
	lw $t1, 4($sp)
	lw $t2, 8($sp)
	lw $t3, 12($sp)
	lw $t6, 16($sp)
	lw $t7, 20($sp)
	lw $s0, 24($sp)
	lw $s1, 28($sp)
	lw $s2, 32($sp)
	lw $s3, 36($sp)
	lw $s4, 40($sp)
	lw $s5, 44($sp)
	lw $s6, 48($sp)
	lw $s7, 52($sp)
	lw $t8, 56($sp)
	lw $ra, 60($sp)
	addu $sp, $sp, 64
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
