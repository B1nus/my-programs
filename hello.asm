; section .bss
    ; variables

section .data
    hello: db "Hello from assembly!", 10
    helloLen: equ $-hello

section .text
    global _start

    _start:
        mov rax,1 ; sys_write
        mov rdi,1 ; stdout
        mov rsi,hello
        mov rdx,helloLen
        syscall
        
        mov rax,60 ; sys_exit
        mov rdi,0 ; exit_code
        syscall
