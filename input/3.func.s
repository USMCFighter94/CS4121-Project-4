.data
.newline: .asciiz "\n"
.text
.globl main
j main

t:
	addi $t0, $gp, 8
	li $t1, 2
	sw $t1, 0($t0)
	addi $t1, $gp, 8
	lw $t2, 0($t1)
	move $a0, $t2
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	addi $t2, $gp, 8
	lw $t3, 0($t2)
	li $t4, 1
	add $t5, $t3, $t4
	add $v0, $0, $t5
	jr $ra

main:
	addi $t6, $gp, 0
	li $t7, 1
	sw $t7, 0($t6)
	addi $t7, $gp, 4
	subu $sp, $sp, 64
	sw $t0, 0($sp)
	sw $t1, 4($sp)
	sw $t2, 8($sp)
	sw $t3, 12($sp)
	sw $t4, 16($sp)
	sw $t6, 20($sp)
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
	lw $t4, 16($sp)
	lw $t6, 20($sp)
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
	add $s0, $0, $v0
	sw $s0, 0($t7)
	addi $s0, $gp, 0
	lw $s1, 0($s0)
	addi $s2, $gp, 4
	lw $s3, 0($s2)
	add $s4, $s1, $s3
	move $a0, $s4
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $v0, 10
	syscall
.data
