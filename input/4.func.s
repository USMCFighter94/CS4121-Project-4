.data
.newline: .asciiz "\n"
.text
.globl main
j main

t:
	addi $t0, $gp, 4
	li $t1, 5
	sw $t1, 0($t0)
	addi $t1, $gp, 8
	li $t2, 2
	sw $t2, 0($t1)
	addi $t2, $gp, 8
	lw $t3, 0($t2)
	move $a0, $t3
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	addi $t3, $gp, 8
	lw $t4, 0($t3)
	addi $t5, $gp, 4
	lw $t6, 0($t5)
	add $t7, $t4, $t6
	add $v0, $0, $t7
	jr $ra

main:
	addi $s0, $gp, 0
	li $s1, 1
	sw $s1, 0($s0)
	addi $s1, $gp, 4
	subu $sp, $sp, 64
	sw $t0, 0($sp)
	sw $t1, 4($sp)
	sw $t2, 8($sp)
	sw $t3, 12($sp)
	sw $t4, 16($sp)
	sw $t5, 20($sp)
	sw $t6, 24($sp)
	sw $s0, 28($sp)
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
	lw $t5, 20($sp)
	lw $t6, 24($sp)
	lw $s0, 28($sp)
	lw $s2, 32($sp)
	lw $s3, 36($sp)
	lw $s4, 40($sp)
	lw $s5, 44($sp)
	lw $s6, 48($sp)
	lw $s7, 52($sp)
	lw $t8, 56($sp)
	lw $ra, 60($sp)
	addu $sp, $sp, 64
	add $s2, $0, $v0
	sw $s2, 0($s1)
	addi $s2, $gp, 0
	lw $s3, 0($s2)
	addi $s4, $gp, 4
	lw $s5, 0($s4)
	add $s6, $s3, $s5
	move $a0, $s6
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $v0, 10
	syscall
.data
