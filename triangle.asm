            global      _start
            section     .text
_start:
            mov         rdx, output
            mov         r8, 1
            mov         r9, 0
line: 
            mov         byte [rdx], '*'
            inc         rdx 
            inc         r9
            cmp         r9, r8 
            jne         line 

            section .bss
maxlines    equ         8
dataSize    equ         44 
output:     resb        dataSize