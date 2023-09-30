bits 64

; outside comment

 extern printf 

section .data
    hello db "hello", 0
    str_pgrm db "bits 64%1$c;outside comment%1$cextern printf%1$csection .data%1$c    hello db %2$chello%2$c, 0%1$c    str_pgrm db %2$cbits 64...%2$c, 0%1$c%1$cglobal _start%1$csection .text:%1$c    global _start%1$c    printHello:%1$c        mov rdi, hello%1$c        call printf%1$c    _start:%1$c        call printHello ;inside comment%1$c        mov rdi, str_pgrm%1$c        mov rsi, 10%1$c        mov rdx, 34%1$c        call printf", 0
section .text
    global main

    printHello: 
        
        mov rdi, hello
        xor rax, rax
        call printf wrt ..plt
        jmp return
 
   main:
      
        sub rsp, 8 ; stack alignement for respect the x86_64 calling convention
        mov rdi, str_pgrm
        mov rsi, 10
        mov rdx, 34
        xor rax, rax
        call printf wrt ..plt
        xor rsi, rsi
        xor rdx, rdx
        ; The call instruction pushes the address of the next instruction onto the stack,
        ; so we need to align the stack properly to maintain consistency.
        call printHello ;inside comment
    return: 
        add rsp, 8
        ret