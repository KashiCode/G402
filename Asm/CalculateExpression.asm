.data
.text
.globl main

main:
    # Load variables from memory
    lw $t0, 0($a3)     
    lw $t1, 4($a3)     
    lw $t2, 8($a3)     
    lw $t3, 12($a3)    

    # Calculate Expression 2 = (8 % w) - (x * z)
    li $t6, 8           
    div $t3, $t6         
    mfhi $t4            
    mul $t5, $t0, $t2   
    sub $a1, $t4, $t5   


    # Calculate Expression 2 ((y % z) * 4) + ((w - x) / 2)
    div $t1, $t2       
    mfhi $t6           
    li $t7, 4
    mul $t6, $t6, $t7  
    sub $t8, $t3, $t0  
    sra $t8, $t8, 1    
    add $a2, $t6, $t8  

    # Terminate the program
    jr $ra            