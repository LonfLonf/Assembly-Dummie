default rel
global main

section .data
    msg db "Hello Mom!", 0

section .text
main: 
    sub rsp, 40
    lea rcx, [msg]
    call printf
    ret