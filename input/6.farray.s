.data
.newline: .asciiz "\n"
.text
.globl main
j main

t:
	addi $t0, $gp, 48
	li $t1, 0
	sw $t1, 0($t0)
.L0:
	addi $t1, $gp, 48
	lw $t2, 0($t1)
	li $t3, 10
	slt $t4, $t2, $t3
	beq $t4, $zero, .L1
	addi $t4, $gp, 48
	lw $t5, 0($t4)
	addi $t6, $gp, 48
	li $t7, 4
	mul $t5, $t5, $t7
	add $t5, $t5, $t6
	addi $t7, $gp, 48
	lw $s0, 0($t7)
	li $s1, 1
	add $s2, $s0, $s1
	addi $s3, $gp, 48
	li $s4, 4
	mul $s2, $s2, $s4
	add $s2, $s2, $s3
	lw $s4, 0($s2)
	sw $s4, 0($t5)
	addi $s4, $gp, 48
	addi $s5, $gp, 48
	lw $s6, 0($s5)
	li $s7, 1
	add $t8, $s6, $s7
	sw $t8, 0($s4)
	j .L0
.L1:

	li $t8, 3
	addi $t9, $gp, 56
	li $t0, 4
	mul $t8, $t8, $t0
	add $t8, $t8, $t9
	lw $t0, 0($t8)
	add $v0, $0, $t0
	jr $ra

main:
	addi $t1, $gp, 0
	li $t2, 1
	sw $t2, 0($t1)
.L2:
	addi $t2, $gp, 0
	lw $t3, 0($t2)
	li $t4, 11
	slt $t5, $t3, $t4
	beq $t5, $zero, .L3
	addi $t5, $gp, 0
	lw $t6, 0($t5)
	addi $t7, $gp, 0
	li $s0, 4
	mul $t6, $t6, $s0
	add $t6, $t6, $t7
	addi $s0, $gp, 0
	lw $s1, 0($s0)
	sw $s1, 0($t6)
	addi $s1, $gp, 0
	addi $s2, $gp, 0
	lw $s3, 0($s2)
	li $s4, 1
	add $s5, $s3, $s4
	sw $s5, 0($s1)
	j .L2
.L3:

	addi $s5, $gp, 0
	subu $sp, $sp, 64
	sw $t1, 0($sp)
	sw $t2, 4($sp)
	sw $t3, 8($sp)
	sw $t4, 12($sp)
	sw $t5, 16($sp)
	sw $t6, 20($sp)
	sw $t7, 24($sp)
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)
	sw $s3, 40($sp)
	sw $s4, 44($sp)
	sw $s6, 48($sp)
	sw $s7, 52($sp)
	sw $t8, 56($sp)
	sw $ra, 60($sp)
	jal t
	lw $t1, 0($sp)
	lw $t2, 4($sp)
	lw $t3, 8($sp)
	lw $t4, 12($sp)
	lw $t5, 16($sp)
	lw $t6, 20($sp)
	lw $t7, 24($sp)
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)
	lw $s3, 40($sp)
	lw $s4, 44($sp)
	lw $s6, 48($sp)
	lw $s7, 52($sp)
	lw $t8, 56($sp)
	lw $ra, 60($sp)
	addu $sp, $sp, 64
	add $s6, $0, $v0
	sw $s6, 0($s5)
	addi $s6, $gp, 0
	lw $s7, 0($s6)
	move $a0, $s7
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $v0, 10
	syscall
.data
