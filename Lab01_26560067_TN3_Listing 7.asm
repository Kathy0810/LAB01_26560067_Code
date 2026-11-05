.data

prompt0: .asciiz "Enter reading0 (kWh): "

prompt1: .asciiz "Enter reading1 (kWh): "

prompt2: .asciiz "Enter reading2 (kWh): "

prompt3: .asciiz "Enter reading3 (kWh): "

m1:     .asciiz "Month 1: "

m2:     .asciiz "Month 2: "

m3:     .asciiz "Month 3: "

tot:    .asciiz "Total:   "

nl:     .asciiz "\n"

.text

.globl main

main:
#enter reading0

li $v0, 4
la $a0, prompt0
syscall

li $v0, 5
syscall

add $s0, $v0, $zero

#enter reading1

li $v0, 4
la $a0, prompt1
syscall

li $v0, 5
syscall

add $s1, $v0, $zero

#enter reading2

li $v0, 4
la $a0, prompt2
syscall

li $v0, 5
syscall

add $s2, $v0, $zero

#enter reading3

li $v0, 4
la $a0, prompt3
syscall

li $v0, 5
syscall

add $s3, $v0, $zero

#calculate month1, 2, 3 and total

sub $t0, $s1, $s0

sub $t1, $s2, $s1

sub $t2, $s3, $s2

add $t3, $t0, $t1

add $t3, $t3, $t2

#print the result


    li $v0, 4
    la $a0, m1
    syscall
    
    li $v0, 1
    add $a0, $t0, $zero
    syscall
    
    li $v0, 4
    la $a0, nl
    syscall
    
    #month 2
    li $v0, 4
    la $a0, m2
    syscall
    
    li $v0, 1
    add $a0, $t1, $zero
    syscall
    
    li $v0, 4
    la $a0, nl
    syscall
    
    #month 3
    li $v0, 4
    la $a0, m3
    syscall
    
    li $v0, 1
    add $a0, $t2, $zero
    syscall
    
    li $v0, 4
    la $a0, nl
    syscall
    
    #total
    li $v0, 4
    la $a0, tot
    syscall
    
    li $v0, 1
    add $a0, $t3, $zero
    syscall
    
    li $v0, 4
    la $a0, nl
    syscall
    
    
    li   $v0, 10

    syscall









