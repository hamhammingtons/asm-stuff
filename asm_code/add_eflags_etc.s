section bss 

section .data

section .text  
    global _start 

_start: 

    mov al, 255; max value for 8 bit register (0b11111111) will overflow
    mov bl, 1 ; just for the funny

    add al, bl ; no work but you must do it in order for adc to work.
    adc ah, 0 ; add carry flag to ah so it can be used for 0 + ah + carry flag 

    ; or you can do adc ah, bh and it will add the value of bh to ah and the carry flag.
    int 80h ; exit system call