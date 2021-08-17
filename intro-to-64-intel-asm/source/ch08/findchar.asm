        SECTION .data
data    db      "hello world", 0
n       dq      0
needle  db      'w'

        SECTION .text
        global  main
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16

;       Register usage
;
;       rax: byte of data array
;       rbx: byte to search for
;       rcx: loop counter, 0-63
;
        mov     bl, [needle]
        xor     ecx, ecx
        mov     al, [data+rcx]
        cmp     al, 0
        jz      end_while
while:
        cmp     al, bl
        je      found
        inc     rcx
        mov     al, [data+rcx]
        cmp     al, 0
        jnz     while
end_while:
        mov     rcx, -1
found:  mov     [n], rcx
        xor     eax, eax
        leave
        ret
