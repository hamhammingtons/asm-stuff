
section .data

section .text  
    global _start
    
_start:
    mov al, 2; 
    mov bl, 3;
    mul bl ; why: it automatically multiplies bl with al, because al is a special register
    ; it is stored in al or ax, depending on the size of the operand. 
    ; if for example we did mov al 0xff; mov bl 2; then the result would be in the ax register.
    ; because assembly is funny like that and it does some job for you 
    ; so your job is easier 
   
    ; imul however is different 
    ; it takes two operands and it will and can be used with signed numbers
    ; in our example 0xff would become -1 because straight ones in signed numbers represent -1