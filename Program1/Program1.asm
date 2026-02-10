.data
promptLength: .asciiz "Enter the length: "
promptWidth:  .asciiz "Enter the width: "
perimMsg:     .asciiz "Perimeter: "
areaMsg:      .asciiz "Area: "
diagMsg:      .asciiz "Diagonal squared: "
ratioMsg:     .asciiz "Length / Width: "
remMsg:       .asciiz "Length % Width: "
newline:      .asciiz "\n"

.text

main:

    li $v0, 4
    la $a0, promptLength
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, promptWidth
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    add $t2, $t0, $t0
    add $t3, $t1, $t1
    add $t4, $t2, $t3

    li $v0, 4
    la $a0, perimMsg
    syscall
    li $v0, 1
    move $a0, $t4
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    mul $t5, $t0, $t1
    li $v0, 4
    la $a0, areaMsg
    syscall
    li $v0, 1
    move $a0, $t5
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    mul $t6, $t0, $t0
    mul $t7, $t1, $t1
    add $t8, $t6, $t7
    li $v0, 4
    la $a0, diagMsg
    syscall
    li $v0, 1
    move $a0, $t8
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    div $t0, $t1
    mflo $t9
    li $v0, 4
    la $a0, ratioMsg
    syscall
    li $v0, 1
    move $a0, $t9
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    mfhi $t9
    li $v0, 4
    la $a0, remMsg
    syscall
    li $v0, 1
    move $a0, $t9
    syscall

    li $v0, 10
    syscall
