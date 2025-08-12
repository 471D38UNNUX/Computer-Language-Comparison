.global Java_Main_QueryPerformanceFrequency
.global Java_Main_QueryPerformanceCounter
.global Java_Main_ExitProcess
.global Java_Main_rdtscpf
.section .text
Java_Main_QueryPerformanceFrequency:
    mov     %rcx, 8(%rsp)
    mov     %r8, 24(%rsp)
    push    %rbx
    sub     $48, %rsp
    mov     (%rcx), %rbx
    mov     %r8, %rdx
    lea     32(%rsp), %r8
    call    *1504(%rbx)                 #   JNINativeInterface_.GetLongArrayElements
    mov     %rax, 40(%rsp)
    mov     %rax, %rcx
    call    QueryPerformanceFrequency
    mov     %al, 32(%rsp)
    mov     64(%rsp), %rcx
    mov     80(%rsp), %rdx
    mov     40(%rsp), %r8
    xor     %r9d, %r9d
    call    *1568(%rbx)                 #   JNINativeInterface_.ReleaseLongArrayElements
    movzx   32(%rsp), %eax
    add     $48, %rsp
    pop     %rbx
    ret
Java_Main_QueryPerformanceCounter:
    mov     %rcx, 8(%rsp)
    mov     %r8, 24(%rsp)
    push    %rbx
    sub     $48, %rsp
    mov     (%rcx), %rbx
    mov     %r8, %rdx
    lea     32(%rsp), %r8
    call    *1504(%rbx)                 #   JNINativeInterface_.GetLongArrayElements
    mov     %rax, 40(%rsp)
    mov     %rax, %rcx
    call    QueryPerformanceCounter
    mov     %al, 32(%rsp)
    mov     64(%rsp), %rcx
    mov     80(%rsp), %rdx
    mov     40(%rsp), %r8
    xor     %r9d, %r9d
    call    *1568(%rbx)                 #   JNINativeInterface_.ReleaseLongArrayElements
    movzx   32(%rsp), %eax
    add     $48, %rsp
    pop     %rbx
    ret
Java_Main_ExitProcess:
    sub     $40, %rsp
    mov     %r8d, %ecx
    call    ExitProcess
Java_Main_rdtscpf:
    lfence
    rdtscp
    lfence
    shl $32, %rdx
    or  %rdx, %rax
    ret
