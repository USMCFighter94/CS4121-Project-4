.data
.newline: .asciiz "\n"
.text
.globl main
main: nop
Name == a
Name == b
Name == t
j main1
t:
Name == aLocal
Name == bLocal
	addi $t0, $gp, -1
	li $t1, 5
	sw $t1, 0($t0)
Name == aLocal
	addi $t1, $gp, 8
	li $t2, 2
	sw $t2, 0($t1)
Name == aLocal
	addi $t2, $gp, 8
	lw $t3, 0($t2)
	move $a0, $t3
	li $v0, 1
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
Name == aLocal
	addi $t3, $gp, 8
	lw $t4, 0($t3)
Name == bLocal
	addi $t5, $gp, -1
	lw $t6, 0($t5)
	add $t7, $t4, $t6
	add $v0, $0, $t7
	jr $ra

Name == main
main1:
Name == a
	addi $s0, $gp, 0
	li $s1, 1
	sw $s1, 0($s0)
Name == b
	addi $s1, $gp, 4
Name == t
	jal t
	add $s2, $0, $v0
	sw $s2, 0($s1)
Name == a
	addi $s2, $gp, 0
	lw $s3, 0($s2)
Name == b
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
