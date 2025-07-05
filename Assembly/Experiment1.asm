;This is the first Experiment, Mostly in assembley
;using NASM as an assembler
section .data
    msg db "HelloWorld",0
    len equ $ - msg 
section .text
    global _start

_start:
    MOV eax, 4
    MOV ebx, 1
    MOV ecx, msg
    MOV edx, len

    INT 0x80

    MOV eax, 1
    XOR ecx, ecx
    INT 0x80



    