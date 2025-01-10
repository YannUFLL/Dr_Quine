bits 64
;comment
extern fprintf
extern fopen

%define STR_PGRM "bits 64%1$c;comment%1$cextern fprintf%1$cextern fopen%1$c%1$c%%define STR_PGRM %2$c%3$s%2$c%1$c%%define FRPINTF %1$c%%macro MAIN 1%1$c%1$csection .data%1$c    str_pgrm db STR_PGRM, 0%1$c    file_name db %2$cGrace_kid.asm%2$c, 0%1$c    open_flag db %1, 0%1$c%1$csection .text %1$c    global main%1$c%1$c    main:%1$c        sub rsp, 8%1$c        mov rdi, file_name%1$c        mov rsi, open_flag%1$c        xor rax, rax%1$c        call fopen%1$c        mov rdi, rax%1$c        mov rsi, str_pgrm%1$c        mov rdx, 10%1$c        mov rcx, 34%1$c        mov r8, str_pgrm%1$c        xor rax, rax%1$c        call fprintf%1$c        add rsp, 8%1$c        ret%1$c%%endmacro%1$c%1$cMAIN %2$ca%2$c"
%define FRPINTF 
%macro MAIN 1

section .data
    str_pgrm db STR_PGRM, 0
    file_name db "Grace_kid.asm", 0
    open_flag db %1, 0

section .text 
    global main

    main:
        sub rsp, 8
        mov rdi, file_name
        mov rsi, open_flag
        xor rax, rax
        call fopen
        mov rdi, rax
        mov rsi, str_pgrm
        mov rdx, 10
        mov rcx, 34
        mov r8, str_pgrm
        xor rax, rax
        call fprintf
        add rsp, 8
        ret
%endmacro

MAIN "a"