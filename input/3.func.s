.data
.newline: .asciiz "\n"
.text
.globl main
main: nop
j main1
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

main1:
	addi $t6, $gp, 0
	li $t7, 1
	sw $t7, 0($t6)
	addi $t7, $gp, 4
	jal t
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
