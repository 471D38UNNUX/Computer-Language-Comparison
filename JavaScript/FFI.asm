.global js_init_module
.section .data
    QueryPerformanceFrequencyv: .asciz "QueryPerformanceFrequency"
    QueryPerformanceCounterv:   .asciz "QueryPerformanceCounter"
    ExitProcessv:               .asciz "ExitProcess"
    rdtscpfv:                   .asciz "rdtscpf"
    earg:                       .asciz "Arguments didn't match in function call"
    esize:                      .asciz "Must be at least 8 bytes"
    eint:                       .asciz "Invalid argument: expected an integer"
    txt:                        .asciz "Test"
.section .text
js_init_module:
    mov     %rcx, 8(%rsp)
    push    %rbx
    sub     $48, %rsp
    lea     Register(%rip), %r8
    call    JS_NewCModule
    mov     %rax, %rbx
    mov     64(%rsp), %rcx
    mov     %rbx, %rdx
    lea     QueryPerformanceFrequencyv(%rip), %r8
    call    JS_AddModuleExport
    mov     64(%rsp), %rcx
    mov     %rbx, %rdx
    lea     QueryPerformanceCounterv(%rip), %r8
    call    JS_AddModuleExport
    mov     64(%rsp), %rcx
    mov     %rbx, %rdx
    lea     ExitProcessv(%rip), %r8
    call    JS_AddModuleExport
    mov     64(%rsp), %rcx
    mov     %rbx, %rdx
    lea     rdtscpfv(%rip), %r8
    call    JS_AddModuleExport
    mov     %rbx, %rax
    add     $48, %rsp
    pop     %rbx
    ret
Register:
    mov     %rcx, 8(%rsp)
    mov     %rdx, 16(%rsp)
    push    %rbx
    lea     QueryPerformanceFrequencyv(%rip), %rbx
    pxor    %xmm0, %xmm0
    sub     $80, %rsp
    mov     %rcx, %rdx
    lea     56(%rsp), %rcx
    lea     _QueryPerformanceFrequency(%rip), %r8
    mov     %rbx, %r9
    movl    $1, 32(%rsp)
    movdqu  %xmm0, 40(%rsp)
    call    JS_NewCFunction2
    mov     96(%rsp), %rcx
    mov     104(%rsp), %rdx
    mov     %rbx, %r8
    lea     QueryPerformanceCounterv(%rip), %rbx
    mov     %rax, %r9
    call    JS_SetModuleExport
    lea     56(%rsp), %rcx
    mov     96(%rsp), %rdx
    lea     _QueryPerformanceCounter(%rip), %r8
    mov     %rbx, %r9
    call    JS_NewCFunction2
    mov     96(%rsp), %rcx
    mov     104(%rsp), %rdx
    mov     %rbx, %r8
    lea     ExitProcessv(%rip), %rbx
    mov     %rax, %r9
    call    JS_SetModuleExport
    lea     56(%rsp), %rcx
    mov     96(%rsp), %rdx
    lea     _ExitProcess(%rip), %r8
    mov     %rbx, %r9
    call    JS_NewCFunction2
    mov     96(%rsp), %rcx
    mov     104(%rsp), %rdx
    mov     %rbx, %r8
    lea     rdtscpfv(%rip), %rbx
    mov     %rax, %r9
    call    JS_SetModuleExport
    lea     56(%rsp), %rcx
    mov     96(%rsp), %rdx
    lea     rdtscpf(%rip), %r8
    mov     %rbx, %r9
    call    JS_NewCFunction2
    mov     96(%rsp), %rcx
    mov     104(%rsp), %rdx
    mov     %rbx, %r8
    mov     %rax, %r9
    call    JS_SetModuleExport
    xor     %eax, %eax
    add     $80, %rsp
    pop     %rbx
    ret
_QueryPerformanceFrequency:
    mov     40(%rsp), %rax
    mov     %rcx, 8(%rsp)
    mov     %rdx, 16(%rsp)
    sub     $56, %rsp
    cmp     $1, %r9b
    jne     _QueryPerformanceFrequency_e1
    movdqa  (%rax), %xmm0
    lea     32(%rsp), %r8
    mov     %rdx, %rcx
    lea     48(%rsp), %rdx
    movdqa  %xmm0, (%r8)
    call    JS_GetArrayBuffer
    cmpb    $8, 48(%rsp)
    jb      _QueryPerformanceFrequency_e2
    mov     %rax, %rcx
    call    QueryPerformanceFrequency
    mov     64(%rsp), %rcx
    mov     %rax, 8(%rcx)
    mov     %rcx, %rax
    movq    $1, (%rax)
    add     $56, %rsp
    ret
_QueryPerformanceFrequency_e1:
    lea     earg(%rip), %r8
    call    JS_ThrowTypeError
    mov     $1, %ecx
    call    ExitProcess
_QueryPerformanceFrequency_e2:
    mov     64(%rsp), %rcx
    mov     72(%rsp), %rdx
    lea     esize(%rip), %r8
    call    JS_ThrowTypeError
    mov     $1, %ecx
    call    ExitProcess
_QueryPerformanceCounter:
    mov     40(%rsp), %rax
    mov     %rcx, 8(%rsp)
    mov     %rdx, 16(%rsp)
    sub     $56, %rsp
    cmp     $1, %r9b
    jne     _QueryPerformanceCounter_e1
    movdqa  (%rax), %xmm0
    lea     32(%rsp), %r8
    mov     %rdx, %rcx
    lea     48(%rsp), %rdx
    movdqa  %xmm0, (%r8)
    call    JS_GetArrayBuffer
    cmpb    $8, 48(%rsp)
    jb      _QueryPerformanceCounter_e2
    mov     %rax, %rcx
    call    QueryPerformanceCounter
    mov     64(%rsp), %rcx
    mov     %rax, 8(%rcx)
    mov     %rcx, %rax
    movq    $1, (%rax)
    add     $56, %rsp
    ret
_QueryPerformanceCounter_e1:
    lea     earg(%rip), %r8
    call    JS_ThrowTypeError
    mov     $1, %ecx
    call    ExitProcess
_QueryPerformanceCounter_e2:
    mov     64(%rsp), %rcx
    mov     72(%rsp), %rdx
    lea     esize(%rip), %r8
    call    JS_ThrowTypeError
    mov     $1, %ecx
    call    ExitProcess
_ExitProcess:
    mov     40(%rsp), %rax
    mov     %rcx, 8(%rsp)
    mov     %rdx, 16(%rsp)
    sub     $56, %rsp
    cmp     $1, %r9b
    jne     _ExitProcess_e1
    movdqa  (%rax), %xmm0
    lea     32(%rsp), %r8
    mov     %rdx, %rcx
    lea     48(%rsp), %rdx
    movdqa  %xmm0, (%r8)
    call    JS_ToInt32
    test    %al, %al
    jnz     _ExitProcess_e2
    mov     48(%rsp), %ecx
    call    ExitProcess
_ExitProcess_e1:
    lea     earg(%rip), %r8
    call    JS_ThrowTypeError
    mov     $1, %ecx
    call    ExitProcess
_ExitProcess_e2:
    mov     64(%rsp), %rcx
    mov     72(%rsp), %rdx
    lea     eint(%rip), %r8
    call    JS_ThrowTypeError
    mov     $1, %ecx
    call    ExitProcess
rdtscpf:
    mov     %rcx, 8(%rsp)
    mov     %rdx, 16(%rsp)
    sub     $56, %rsp
    test    %r9b, %r9b
    jnz     rdtscpf_e0
    lfence
    rdtscp
    lfence
    shl     $32, %rdx
    or      %rdx, %rax
    mov     64(%rsp), %rcx
    mov     72(%rsp), %rdx
    mov     %rax, %r8
    call    JS_NewBigUint64
    add     $56, %rsp
    ret
rdtscpf_e0:
    lea     earg(%rip), %r8
    call    JS_ThrowTypeError
    mov     $1, %ecx
    call    ExitProcess
