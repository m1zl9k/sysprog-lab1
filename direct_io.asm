```nasm
section .data
    message db System programming test message, 10
    message_len equ $ - message

section .text
    global _start

_start
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, message_len
    syscall

    mov rax, 60
    mov rdi, 0
    syscall