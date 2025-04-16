default rel
global main
extern printf

section .data
    msg db "Hello Mom!", 0

section .text
main: 
    sub rsp, 40
    lea rcx, [msg]
    call printf
    add rsp, 40
    ret