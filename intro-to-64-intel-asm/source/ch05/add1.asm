        segment .data
a       dq      175
b       dq      4097
        segment .text
        global  main
main:
        mov     rax, [a]    ; mov a into rax
        add     rax, [b]    ; add b to rax
        xor     rax, rax
        ret
