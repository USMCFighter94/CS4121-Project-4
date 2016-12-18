.data
.newline: .asciiz "\n"
.text
.globl main
j main

a1:
	li $t0, 1
	move $a0, $t0
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $t0, 0
	add $v0, $0, $t0
	jr $ra

a2:
	addi $t1, $gp, 4
	subu $sp, $sp, 64
	sw $t2, 0($sp)
	sw $t3, 4($sp)
	sw $t4, 8($sp)
	sw $t5, 12($sp)
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
	jal a1
	lw $t2, 0($sp)
	lw $t3, 4($sp)
	lw $t4, 8($sp)
	lw $t5, 12($sp)
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
	add $t2, $0, $v0
	sw $t2, 0($t1)
	li $t2, 2
	move $a0, $t2
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $t2, 0
	add $v0, $0, $t2
	jr $ra

a3:
	addi $t3, $gp, 0
	subu $sp, $sp, 60
	sw $t1, 0($sp)
	sw $t4, 4($sp)
	sw $t5, 8($sp)
	sw $t6, 12($sp)
	sw $t7, 16($sp)
	sw $s0, 20($sp)
	sw $s1, 24($sp)
	sw $s2, 28($sp)
	sw $s3, 32($sp)
	sw $s4, 36($sp)
	sw $s5, 40($sp)
	sw $s6, 44($sp)
	sw $s7, 48($sp)
	sw $t8, 52($sp)
	sw $ra, 56($sp)
	jal a1
	lw $t1, 0($sp)
	lw $t4, 4($sp)
	lw $t5, 8($sp)
	lw $t6, 12($sp)
	lw $t7, 16($sp)
	lw $s0, 20($sp)
	lw $s1, 24($sp)
	lw $s2, 28($sp)
	lw $s3, 32($sp)
	lw $s4, 36($sp)
	lw $s5, 40($sp)
	lw $s6, 44($sp)
	lw $s7, 48($sp)
	lw $t8, 52($sp)
	lw $ra, 56($sp)
	addu $sp, $sp, 60
	add $t4, $0, $v0
	sw $t4, 0($t3)
	addi $t4, $gp, 4
	subu $sp, $sp, 60
	sw $t1, 0($sp)
	sw $t3, 4($sp)
	sw $t5, 8($sp)
	sw $t6, 12($sp)
	sw $t7, 16($sp)
	sw $s0, 20($sp)
	sw $s1, 24($sp)
	sw $s2, 28($sp)
	sw $s3, 32($sp)
	sw $s4, 36($sp)
	sw $s5, 40($sp)
	sw $s6, 44($sp)
	sw $s7, 48($sp)
	sw $t8, 52($sp)
	sw $ra, 56($sp)
	jal a2
	lw $t1, 0($sp)
	lw $t3, 4($sp)
	lw $t5, 8($sp)
	lw $t6, 12($sp)
	lw $t7, 16($sp)
	lw $s0, 20($sp)
	lw $s1, 24($sp)
	lw $s2, 28($sp)
	lw $s3, 32($sp)
	lw $s4, 36($sp)
	lw $s5, 40($sp)
	lw $s6, 44($sp)
	lw $s7, 48($sp)
	lw $t8, 52($sp)
	lw $ra, 56($sp)
	addu $sp, $sp, 60
	add $t5, $0, $v0
	sw $t5, 0($t4)
	li $t5, 3
	move $a0, $t5
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $t5, 0
	add $v0, $0, $t5
	jr $ra

a4:
	addi $t6, $gp, 0
	subu $sp, $sp, 56
	sw $t1, 0($sp)
	sw $t3, 4($sp)
	sw $t4, 8($sp)
	sw $t7, 12($sp)
	sw $s0, 16($sp)
	sw $s1, 20($sp)
	sw $s2, 24($sp)
	sw $s3, 28($sp)
	sw $s4, 32($sp)
	sw $s5, 36($sp)
	sw $s6, 40($sp)
	sw $s7, 44($sp)
	sw $t8, 48($sp)
	sw $ra, 52($sp)
	jal a1
	lw $t1, 0($sp)
	lw $t3, 4($sp)
	lw $t4, 8($sp)
	lw $t7, 12($sp)
	lw $s0, 16($sp)
	lw $s1, 20($sp)
	lw $s2, 24($sp)
	lw $s3, 28($sp)
	lw $s4, 32($sp)
	lw $s5, 36($sp)
	lw $s6, 40($sp)
	lw $s7, 44($sp)
	lw $t8, 48($sp)
	lw $ra, 52($sp)
	addu $sp, $sp, 56
	add $t7, $0, $v0
	sw $t7, 0($t6)
	addi $t7, $gp, 4
	subu $sp, $sp, 56
	sw $t1, 0($sp)
	sw $t3, 4($sp)
	sw $t4, 8($sp)
	sw $t6, 12($sp)
	sw $s0, 16($sp)
	sw $s1, 20($sp)
	sw $s2, 24($sp)
	sw $s3, 28($sp)
	sw $s4, 32($sp)
	sw $s5, 36($sp)
	sw $s6, 40($sp)
	sw $s7, 44($sp)
	sw $t8, 48($sp)
	sw $ra, 52($sp)
	jal a2
	lw $t1, 0($sp)
	lw $t3, 4($sp)
	lw $t4, 8($sp)
	lw $t6, 12($sp)
	lw $s0, 16($sp)
	lw $s1, 20($sp)
	lw $s2, 24($sp)
	lw $s3, 28($sp)
	lw $s4, 32($sp)
	lw $s5, 36($sp)
	lw $s6, 40($sp)
	lw $s7, 44($sp)
	lw $t8, 48($sp)
	lw $ra, 52($sp)
	addu $sp, $sp, 56
	add $s0, $0, $v0
	sw $s0, 0($t7)
	addi $s0, $gp, 8
	subu $sp, $sp, 56
	sw $t1, 0($sp)
	sw $t3, 4($sp)
	sw $t4, 8($sp)
	sw $t6, 12($sp)
	sw $t7, 16($sp)
	sw $s1, 20($sp)
	sw $s2, 24($sp)
	sw $s3, 28($sp)
	sw $s4, 32($sp)
	sw $s5, 36($sp)
	sw $s6, 40($sp)
	sw $s7, 44($sp)
	sw $t8, 48($sp)
	sw $ra, 52($sp)
	jal a3
	lw $t1, 0($sp)
	lw $t3, 4($sp)
	lw $t4, 8($sp)
	lw $t6, 12($sp)
	lw $t7, 16($sp)
	lw $s1, 20($sp)
	lw $s2, 24($sp)
	lw $s3, 28($sp)
	lw $s4, 32($sp)
	lw $s5, 36($sp)
	lw $s6, 40($sp)
	lw $s7, 44($sp)
	lw $t8, 48($sp)
	lw $ra, 52($sp)
	addu $sp, $sp, 56
	add $s1, $0, $v0
	sw $s1, 0($s0)
	li $s1, 4
	move $a0, $s1
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $s1, 0
	add $v0, $0, $s1
	jr $ra

main:
	addi $s2, $gp, 0
	subu $sp, $sp, 52
	sw $t1, 0($sp)
	sw $t3, 4($sp)
	sw $t4, 8($sp)
	sw $t6, 12($sp)
	sw $t7, 16($sp)
	sw $s0, 20($sp)
	sw $s3, 24($sp)
	sw $s4, 28($sp)
	sw $s5, 32($sp)
	sw $s6, 36($sp)
	sw $s7, 40($sp)
	sw $t8, 44($sp)
	sw $ra, 48($sp)
	jal a1
	lw $t1, 0($sp)
	lw $t3, 4($sp)
	lw $t4, 8($sp)
	lw $t6, 12($sp)
	lw $t7, 16($sp)
	lw $s0, 20($sp)
	lw $s3, 24($sp)
	lw $s4, 28($sp)
	lw $s5, 32($sp)
	lw $s6, 36($sp)
	lw $s7, 40($sp)
	lw $t8, 44($sp)
	lw $ra, 48($sp)
	addu $sp, $sp, 52
	add $s3, $0, $v0
	sw $s3, 0($s2)
	addi $s3, $gp, 4
	subu $sp, $sp, 52
	sw $t1, 0($sp)
	sw $t3, 4($sp)
	sw $t4, 8($sp)
	sw $t6, 12($sp)
	sw $t7, 16($sp)
	sw $s0, 20($sp)
	sw $s2, 24($sp)
	sw $s4, 28($sp)
	sw $s5, 32($sp)
	sw $s6, 36($sp)
	sw $s7, 40($sp)
	sw $t8, 44($sp)
	sw $ra, 48($sp)
	jal a2
	lw $t1, 0($sp)
	lw $t3, 4($sp)
	lw $t4, 8($sp)
	lw $t6, 12($sp)
	lw $t7, 16($sp)
	lw $s0, 20($sp)
	lw $s2, 24($sp)
	lw $s4, 28($sp)
	lw $s5, 32($sp)
	lw $s6, 36($sp)
	lw $s7, 40($sp)
	lw $t8, 44($sp)
	lw $ra, 48($sp)
	addu $sp, $sp, 52
	add $s4, $0, $v0
	sw $s4, 0($s3)
	addi $s4, $gp, 8
	subu $sp, $sp, 52
	sw $t1, 0($sp)
	sw $t3, 4($sp)
	sw $t4, 8($sp)
	sw $t6, 12($sp)
	sw $t7, 16($sp)
	sw $s0, 20($sp)
	sw $s2, 24($sp)
	sw $s3, 28($sp)
	sw $s5, 32($sp)
	sw $s6, 36($sp)
	sw $s7, 40($sp)
	sw $t8, 44($sp)
	sw $ra, 48($sp)
	jal a3
	lw $t1, 0($sp)
	lw $t3, 4($sp)
	lw $t4, 8($sp)
	lw $t6, 12($sp)
	lw $t7, 16($sp)
	lw $s0, 20($sp)
	lw $s2, 24($sp)
	lw $s3, 28($sp)
	lw $s5, 32($sp)
	lw $s6, 36($sp)
	lw $s7, 40($sp)
	lw $t8, 44($sp)
	lw $ra, 48($sp)
	addu $sp, $sp, 52
	add $s5, $0, $v0
	sw $s5, 0($s4)
	addi $s5, $gp, 12
	subu $sp, $sp, 52
	sw $t1, 0($sp)
	sw $t3, 4($sp)
	sw $t4, 8($sp)
	sw $t6, 12($sp)
	sw $t7, 16($sp)
	sw $s0, 20($sp)
	sw $s2, 24($sp)
	sw $s3, 28($sp)
	sw $s4, 32($sp)
	sw $s6, 36($sp)
	sw $s7, 40($sp)
	sw $t8, 44($sp)
	sw $ra, 48($sp)
	jal a4
	lw $t1, 0($sp)
	lw $t3, 4($sp)
	lw $t4, 8($sp)
	lw $t6, 12($sp)
	lw $t7, 16($sp)
	lw $s0, 20($sp)
	lw $s2, 24($sp)
	lw $s3, 28($sp)
	lw $s4, 32($sp)
	lw $s6, 36($sp)
	lw $s7, 40($sp)
	lw $t8, 44($sp)
	lw $ra, 48($sp)
	addu $sp, $sp, 52
	add $s6, $0, $v0
	sw $s6, 0($s5)
	li $v0, 10
	syscall
.data
