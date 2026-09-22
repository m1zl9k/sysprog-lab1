# Лабораторная работа №1
## «Исследование механизмов ввода-вывода и системных вызовов (Syscalls) на низком уровне»

**Group:** [32П]
**Author:** [Назаренко Николай Викторович]
**Lab:** Lab1

---

## 1. Цель работы

Изучить на практике механизм взаимодействия пользовательского приложения с подсистемой ввода-вывода Linux через прямой системный вызов (syscall) на ассемблере NASM.

## 2. Исходный код direct_io.asm

```nasm
section .data
    message db "System programming test message", 10
    message_len equ $ - message

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, message_len
    syscall

    mov rax, 60
    mov rdi, 0
    syscall