        segment .text
        global  main                ; let the linker know about main
;
;       This main program does not call any functions, so it
;       doesn't really need a frame pointer.  Still, out of habit,
;       I have been preparing a frame pointer.
;
;       I once tried to used printf from a main which had not set
;       rbp and the debugging was not fun.  It failed for no apparent
;       reason (at least not to me).  Apparently C library functions
;       prefer proper frame pointers for main.
;
;       Parameters to main are passed as normal C parameters in rdi
;       and rsi.  The number of command line parameters is in rdi
;       and rsi is a pointer to an array of C string pointers.
;
main:
        push    rbp             ; try seeing where you can place breaks
        mov     rbp, rsp
        sub     rsp, 16
        mov     rax, 0x1a1a1a1a1a1a1a1a
        mov     eax, 100
        mov     rax, 0x1a1a1a1a1a1a1a1a
        mov     eax, 100
        mov     rax, 0
        leave
        ret
