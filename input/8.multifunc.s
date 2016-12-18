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
	li $t0, 1
	add $v0, $0, $t0
	jr $ra

a2:
	li $t1, 2
	move $a0, $t1
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	subu $sp, $sp, 68
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
	sw $s5, 48($sp)
	sw $s6, 52($sp)
	sw $s7, 56($sp)
	sw $t8, 60($sp)
	sw $ra, 64($sp)
	jal a1
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
	lw $s5, 48($sp)
	lw $s6, 52($sp)
	lw $s7, 56($sp)
	lw $t8, 60($sp)
	lw $ra, 64($sp)
	addu $sp, $sp, 68
	add $t1, $0, $v0
	add $v0, $0, $t1
	jr $ra

main:
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
	subu $sp, $sp, 60
	sw $t3, 0($sp)
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
	jal a2
	lw $t3, 0($sp)
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
	add $t3, $0, $v0
	add $t4, $t2, $t3
	move $a0, $t4
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $v0, 10
	syscall
.data
