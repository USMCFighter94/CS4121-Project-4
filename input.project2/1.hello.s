.data
.newline: .asciiz "\n"
.text
.globl main
main: nop
j main1
main1:
	la $t0, __str0
	move $a0, $t0
	li $v0, 4
	syscall
	la $a0, .newline
	li $v0, 4
	syscall
	li $v0, 10
	syscall
.data
__str0: .asciiz "Hello world!"
