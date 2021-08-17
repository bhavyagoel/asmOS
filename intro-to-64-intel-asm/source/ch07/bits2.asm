        segment .bss
data    resq    1024
        segment .text
        global  main
main:
        push    rbp
        mov     rbp, rsp
        mov     qword [data], 0x10        ; set bit 4 of data
        mov     qword [data+8], 0x1000    ; set bit 76 of data
        mov     rax, 77             ; test bit 4, 76, 77
        mov     rbx, rax            ; copy bit number to rbx
        shr     rbx, 6              ; qword number of data to test
        mov     rcx, rax            ; copy bit number to rcx
        and     rcx, 0x3f           ; extract rightmost 6 bits
        xor     edx, edx            ; set rdx to 0
        bt      [data+8*rbx], rcx   ; test bit
        setc    dl                  ; edx equals the tested bit
        bts     [data+8*rbx], rcx   ; set the bit, insert into set
        btr     [data+8*rbx], rcx   ; clear the bit, remove
        xor     rax, rax
        leave
        ret
