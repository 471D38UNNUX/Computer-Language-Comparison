#   as main.asm -o main.obj
#   ld -s --disable-dynamicbase --file-alignment=1 --section-alignment=1 --disable-reloc-section main.obj -Tlink.ld -L"Path\lib" -lkernel32 -lmsvcr120 -o main.exe
.global _start
.section .data
    file:       .asciz "main.exe"
    Cycles:     .asciz "Total Cycles %llu\n"
    Timef:      .asciz "Time taken: %llu hours %llu minutes %f seconds\n"
    CPU:        .asciz "Approx CPU frequency: %f GHz\n"
    GBf:        .asciz "File size: %.3f GB\n"
    MBf:        .asciz "File size: %.3f MB\n"
    KBf:        .asciz "File size: %.3f KB\n"
    bytef:      .asciz "File size: %u bytes\n"
    .equ        kB, 1024
    .equ        mB, 1024 * 1024
    .equ        gB, 1024 * 1024 * 1024
.section .text
_start:
    sub         $360, %rsp
    lea         32(%rsp), %rcx
    call        QueryPerformanceFrequency
    test        %al, %al
    jz          Error
    lea         40(%rsp), %rcx
    call        QueryPerformanceCounter
    test        %al, %al
    jz          Error
    xor         %edx, %edx
    mov         40(%rsp), %rax
    idivq       32(%rsp)
    mov         %rax, 48(%rsp)
    mov         $1000000000, %eax
    imul        %edx
    xor         %edx, %edx
    idivl       32(%rsp)
    mov         %eax, 56(%rsp)
l0:
    call        rdtscpf
    mov         %rax, %rbp
    call        rdtscpf
    sub         %rbp, %rax
    add         %rax, %rdi
    incl        %ebx
    cmp         $100000, %ebx
    jb          l0
    lea         40(%rsp), %rcx
    call        QueryPerformanceCounter
    test        %al, %al
    jz          Error
    xor         %edx, %edx
    mov         40(%rsp), %rax
    idivq       32(%rsp)
    sub         48(%rsp), %rax
    cvtsi2sd    %rax, %xmm6
    mov         $1000000000, %eax
    imul        %rdx
    xor         %edx, %edx
    idivq       32(%rsp)
    sub         56(%rsp), %eax
    cvtsi2sd    %eax, %xmm1
    mov         $0x41cdcd6500000000, %rax
    movq        %rax, %xmm7
    divsd       %xmm7, %xmm1
    addsd       %xmm1, %xmm6
    movdqa      %xmm6, %xmm8
    lea         96(%rsp), %rcx
    xor         %edx, %edx
    call        setjmp
    test        %al, %al
    jnz         Error
    lea         file(%rip), %rcx
    xor         %edx, %edx
    lea         60(%rsp), %r8
    call        GetFileAttributesExA
    test        %al, %al
    jnz         c1
    lea         96(%rsp), %rcx
    mov         $1, %edx
    call        longjmp
c1:
    mov         88(%rsp), %eax
    mov         92(%rsp), %ecx
    mov         %eax, 356(%rsp)
    mov         %ecx, 352(%rsp)
    lea         Cycles(%rip), %rcx
    mov         %rdi, %rdx
    call        printf_s
    xor         %edx, %edx
    cvtsd2si    %xmm6, %rbx
    mov         %rbx, %rax
    mov         $3600, %ecx
    div         %rcx
    mov         %rax, %rbp
    mov         $60, %ecx
    mov         %rdx, %rax
    xor         %edx, %edx
    div         %rcx
    mov         %rax, %rsi
    cvtsi2sd    %rdx, %xmm0
    cvtsi2sd    %rbx, %xmm1
    subsd       %xmm1, %xmm6
    addsd       %xmm6, %xmm0
    lea         Timef(%rip), %rcx
    mov         %rbp, %rdx
    mov         %rsi, %r8
    movq        %xmm0, %r9
    call        printf_s
    cvtsi2sd    %rdi, %xmm0
    divsd       %xmm8, %xmm0
    divsd       %xmm7, %xmm0
    lea         CPU(%rip), %rcx
    movq        %xmm0, %rdx
    call        printf_s
    mov         352(%rsp), %rax
    cvtsi2sd    %rax, %xmm0
    cmp         $gB, %rax
    jb          c2
    mov         $gB, %ecx
    cvtsi2sd    %ecx, %xmm1
    divsd       %xmm1, %xmm0
    lea         GBf(%rip), %rcx
    movq        %xmm0, %rdx
    call        printf_s
    jmp         done
c2:
    cmp         $mB, %rax
    jb          c3
    mov         $mB, %ecx
    cvtsi2sd    %ecx, %xmm1
    divsd       %xmm1, %xmm0
    lea         MBf(%rip), %rcx
    movq        %xmm0, %rdx
    call        printf_s
    jmp         done
c3:
    cmp         $kB, %rax
    jb          c4
    mov         $kB, %ecx
    cvtsi2sd    %ecx, %xmm1
    divsd       %xmm1, %xmm0
    lea         KBf(%rip), %rcx
    movq        %xmm0, %rdx
    call        printf_s
    jmp         done
c4:
    lea         bytef(%rip), %rcx
    mov         %eax, %edx
    call        printf_s
done:
    xor         %ecx, %ecx
    call        ExitProcess
Error:
    mov         $1, %ecx
    call        ExitProcess
rdtscpf:
    lfence
    rdtscp
    lfence
    shl $32, %rdx
    or  %rdx, %rax
    ret
