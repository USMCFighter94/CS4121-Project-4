.data
.newline: .asciiz "\n"
.text
.globl main
j main

t:
	li $t0, 3
	addi $t1, $gp, 12
	li $t2, 4
	mul $t0, $t0, $t2
	add $t0, $t0, $t1
	li $t2, 5
	sw $t2, 0($t0)
	addi $t2, $gp, 8
	li $t3, 2
	sw $t3, 0($t2)
	addi $t3, $gp, 8
	lw $t4, 0($t3)
	move $a0, $t4
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	addi $t4, $gp, 8
	lw $t5, 0($t4)
	li $t6, 3
	addi $t7, $gp, 12
	li $s0, 4
	mul $t6, $t6, $s0
	add $t6, $t6, $t7
	lw $s0, 0($t6)
	add $s1, $t5, $s0
	add $v0, $0, $s1
	jr $ra

main:
	addi $s2, $gp, 0
	li $s3, 1
	sw $s3, 0($s2)
	addi $s3, $gp, 4
	subu $sp, $sp, 64
	sw $t0, 0($sp)
	sw $t1, 4($sp)
	sw $t2, 8($sp)
	sw $t3, 12($sp)
	sw $t4, 16($sp)
	sw $t5, 20($sp)
	sw $t6, 24($sp)
	sw $t7, 28($sp)
	sw $s0, 32($sp)
	sw $s2, 36($sp)
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
	lw $t7, 28($sp)
	lw $s0, 32($sp)
	lw $s2, 36($sp)
	lw $s4, 40($sp)
	lw $s5, 44($sp)
	lw $s6, 48($sp)
	lw $s7, 52($sp)
	lw $t8, 56($sp)
	lw $ra, 60($sp)
	addu $sp, $sp, 64
	add $s4, $0, $v0
	sw $s4, 0($s3)
	addi $s4, $gp, 0
	lw $s5, 0($s4)
	addi $s6, $gp, 4
	lw $s7, 0($s6)
	add $t8, $s5, $s7
	move $a0, $t8
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $v0, 10
	syscall
.data
