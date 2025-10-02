.global install
.data
    QueryPerformanceFrequencyv: .asciz "QueryPerformanceFrequency"
    QueryPerformanceCounterv:   .asciz "QueryPerformanceCounter"
    ExitProcessv:               .asciz "ExitProcess"
    rdtscpfv:                   .asciz "rdtscpf"
    variablev:                  .asciz "variable"
    intv:                       .asciz "int"
.text
install:
    sub     $40, %rsp
    lea     QueryPerformanceFrequencyv(%rip), %rcx
    mov     $1, %edx
    lea     _QueryPerformanceFrequency(%rip), %r8
    xor     %r9d, %r9d
    call    PL_register_foreign
    lea     QueryPerformanceCounterv(%rip), %rcx
    mov     $1, %edx
    lea     _QueryPerformanceCounter(%rip), %r8
    xor     %r9d, %r9d
    call    PL_register_foreign
    lea     ExitProcessv(%rip), %rcx
    mov     $1, %edx
    lea     _ExitProcess(%rip), %r8
    xor     %r9d, %r9d
    call    PL_register_foreign
    lea     rdtscpfv(%rip), %rcx
    mov     $1, %edx
    lea     rdtscpf(%rip), %r8
    xor     %r9d, %r9d
    call    PL_register_foreign
    add     $40, %rsp
    ret
_QueryPerformanceFrequency:
    mov     %rcx, 8(%rsp)
    sub     $40, %rsp
    call    PL_is_variable
    test    %al, %al
    jnz     _QueryPerformanceFrequency_c1
    lea     variablev(%rip), %rcx
    mov     48(%rsp), %rdx
    call    PL_type_error
    jmp     _QueryPerformanceFrequency_done
_QueryPerformanceFrequency_c1:
    lea     32(%rsp), %rcx
    call    QueryPerformanceFrequency
    test    %al, %al
    jnz     _QueryPerformanceFrequency_c2
    xor     %al, %al
    jmp     _QueryPerformanceFrequency_done
_QueryPerformanceFrequency_c2:
    mov     48(%rsp), %rcx
    mov     32(%rsp), %rdx
    call    PL_unify_uint64
_QueryPerformanceFrequency_done:
    add     $40, %rsp
    ret
_QueryPerformanceCounter:
    mov     %rcx, 8(%rsp)
    sub     $40, %rsp
    call    PL_is_variable
    test    %al, %al
    jnz     _QueryPerformanceCounter_c1
    lea     variablev(%rip), %rcx
    mov     48(%rsp), %rdx
    call    PL_type_error
    jmp     _QueryPerformanceCounter_done
_QueryPerformanceCounter_c1:
    lea     32(%rsp), %rcx
    call    QueryPerformanceCounter
    test    %al, %al
    jnz     _QueryPerformanceCounter_c2
    xor     %al, %al
    jmp     _QueryPerformanceCounter_done
_QueryPerformanceCounter_c2:
    mov     48(%rsp), %rcx
    mov     32(%rsp), %rdx
    call    PL_unify_uint64
_QueryPerformanceCounter_done:
    add     $40, %rsp
    ret
_ExitProcess:
    mov     %rcx, 8(%rsp)
    sub     $40, %rsp
    lea     32(%rsp), %rdx
    call    PL_get_integer
    test    %al, %al
    jz      e0
    mov     32(%rsp), %ecx
    call    ExitProcess
e0:
    lea     intv(%rip), %rcx
    mov     48(%rsp), %rdx
    call    PL_type_error
    add     $40, %rsp
    ret
rdtscpf:
    mov     %rcx, 8(%rsp)
    sub     $40, %rsp
    lfence
    rdtscp
    lfence
    shl     $32, %rdx
    or      %rax, %rdx
    mov     48(%rsp), %rcx
    call    PL_unify_uint64
    add     $40, %rsp
    ret
