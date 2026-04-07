section .data

section .text
    global _start  

_start:
    ; THESE ARE ALL BITWISE!!! 
    mov al 0b1010; 
    mov bl 0b1101; 

    and al, bl ; al->changed, idea: if both bits are 1, then the result is 1, otherwise 0
    ; so 1010 & 1101 = 1000, because only the first
    
    mov al 0b1010; 
    mov bl 0b1101;
    or al, bl ; al->changed, idea: if either bit is 1, then the result is 1, otherwise 0
    ; so 1010 | 1101 = 1111, because at least one of the bits is 1 in all positions
    
    mov al 0b1010; 
    mov bl 0b1101; 
    not al ; al->changed, idea: it inverts the bits, so 1010 becomes 0101

    ; to reset all values to 0 use and with all 0s for ex 0b0000; 