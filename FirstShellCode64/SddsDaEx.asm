section .data
    cmd db 'cmd.exe', 0

section .text
    global main

extern CreateProcessA
extern ExitProcess

main:
    mov rbx, 0x100
    mov byte [rbx], 0
    mov byte [rbx+4], 68

    mov rdx, 0x1060
    xor rbx, rbx

    mov rdi, 0
    mov rsi, cmd
    mov rcx, 0
    mov rsi, cmd
    mov rcx, 0
    mov r8, 0
    mov r9, 0
    mov r10, 0
    mov r11, 0

    call CreateProcessA

    test rax, rax
    jz exit

exit: 
    mov rdi, 0
    call ExitProcess