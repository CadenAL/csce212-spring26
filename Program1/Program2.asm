.data
idMsg:      .asciiz "Enter customer ID: "
welcomeMsg: .asciiz "Welcome! Customer ID: "
buyMsg:     .asciiz "\nItems to purchase: "
returnMsg:  .asciiz "Items to return: "
stockMsg:   .asciiz "Current stock: "
doneMsg:    .asciiz "Transaction Complete\n"

.text

main:
    li $t0, 50

    li $v0, 4
    la $a0, idMsg
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, welcomeMsg
    syscall
    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, buyMsg
    syscall
    li $v0, 5
    syscall
    sub $t0, $t0, $v0

    li $v0, 4
    la $a0, stockMsg
    syscall
    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, returnMsg
    syscall
    li $v0, 5
    syscall
    add $t0, $t0, $v0

    li $v0, 4
    la $a0, stockMsg
    syscall
    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, doneMsg
    syscall

    li $v0, 10
    syscall
