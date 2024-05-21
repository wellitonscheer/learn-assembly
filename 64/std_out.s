section .data
        STDOUT    equ 1 ;# standart output
        SYS_write equ 1 ;# call code for write

        msg       db  "Hello World"
        msgLen    dq  11

section .text
global _start
_start:
        mov       rax, SYS_write
        mov       rdi, STDOUT
        mov       rsi, msg
        mov       rdx, qword [msgLen]
        syscall
