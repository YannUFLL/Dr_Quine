;comment

%define STR_PGRM ";comment%1$c%1$c%%define STR_PGRM %2$c%3$s%2$c%1$c%%define FILE_NAME %2$cGrace_kid.s%2$c%1$c%%define MAIN_INJECTION main%1$c%%macro PGRM 1%1$c%1$c    extern fprintf%1$c    extern fopen%1$c%1$csection .data%1$c%1$c    str_pgrm db STR_PGRM, 0%1$c    file_name db FILE_NAME, 0%1$c    open_flag db %1, 0%1$c%1$csection .text %1$c    global MAIN_INJECTION%1$c%1$c    MAIN_INJECTION:%1$c        sub rsp, 8%1$c        mov rdi, file_name%1$c        mov rsi, open_flag%1$c        xor rax, rax%1$c        call fopen%1$c        mov rdi, rax%1$c        mov rsi, str_pgrm%1$c        mov rdx, 10%1$c        mov rcx, 34%1$c        mov r8, str_pgrm%1$c        xor rax, rax%1$c        call fprintf%1$c        add rsp, 8%1$c        ret%1$c%%endmacro%1$c%1$cPGRM %2$ca%2$c"
%define FILE_NAME "Grace_kid.s"
%define MAIN_INJECTION main
%macro PGRM 1

    extern fprintf
    extern fopen

section .data

    str_pgrm db STR_PGRM, 0
    file_name db FILE_NAME, 0
    open_flag db %1, 0

section .text 
    global MAIN_INJECTION

    MAIN_INJECTION:
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

PGRM "a"