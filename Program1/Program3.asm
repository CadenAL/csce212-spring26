.data
prompt: .asciiz "Press the button (enter any integer): "
genMsg: .asciiz "Generating your compliments...\n"
c1: .asciiz "You are incredibly capable.\n"
c2: .asciiz "Your hard work is paying off.\n"
c3: .asciiz "You bring positive energy everywhere.\n"
endMsg: .asciiz "Have a wonderful day!\n"

.text

main:
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall

    li $v0, 4
    la $a0, genMsg
    syscall
    la $a0, c1
    syscall
    la $a0, c2
    syscall
    la $a0, c3
    syscall
    la $a0, endMsg
    syscall

    li $v0, 10
    syscall
