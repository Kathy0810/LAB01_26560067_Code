# Listing 4 - translating statements

.text

.globl main

main:

    addi $s0, $zero, 8       # y = 8

    addi $s1, $zero, 5       # z = 5

    addi $s2, $zero, 3       # w = 3

 

    # >>> instructions for x1, x2, x3 and x4

 #calculate x1 

add $t0, $s0, $s1

add $t0, $t0, $s2

#Calculate x2

addi $t5, $s2, 5

add $t1, $s0, $s1

sub $t1, $t1, $t5

#Calculate x3

move $t2, $s0

#calculate x4

sub $t3, $s1, $s0

    li   $v0, 10

    syscall



