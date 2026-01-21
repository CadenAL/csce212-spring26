.data
Mymessage: .asciiz "Hello from Caden !! \n"
Mygreeting: .asciiz "Welcome to CSCE 212 \n"

Numbermessage: .asciiz "Enter a number: "
Numberentered: .word 0

Numberenteredmessage: .asciiz "You entered: "

Namemessage: .asciiz "\nEnter your name: "
Namebuffer: .space 10
Nameentered: .word 0

Agemessage: .asciiz "Enter your age: "
Ageentered: .word 0

Heightmessage: .asciiz "Enter your height (in feet): "
Heightentered: .word 0

Hello: .asciiz "Hello, "
Youare: .asciiz "You are "
Yearsold: .asciiz " years old and "
Feettall: .asciiz " feet tall."

.text
li $v0,4
la $a0,Mymessage
syscall

li $v0,4
la $a0,Mygreeting
syscall

li $v0,4
la $a0,Numbermessage
syscall

li $v0,5
syscall

sw $v0,Numberentered

li $v0,4
la $a0,Numberenteredmessage
syscall

lw $a0,Numberentered
li $v0,1
syscall

li $v0,4
la $a0,Namemessage
syscall

la $a0,Namebuffer
li $a1,20
li $v0,8
syscall

li $v0,4
la $a0,Agemessage
syscall

li $v0,5
syscall
sw $v0,Ageentered

li $v0,4
la $a0,Heightmessage
syscall

li $v0,6
syscall
s.s $f0,Heightentered

li $v0,4
la $a0,Hello
syscall

li $v0,4
la $a0,Namebuffer
syscall

li $v0,4
la $a0,Youare
syscall

lw $a0,Ageentered
li $v0,1
syscall

li $v0,4
la $a0,Yearsold
syscall

l.s $f12,Heightentered
li $v0,2
syscall

li $v0,4
la $a0,Feettall
syscall