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
    Size:       .quad 0
    frequency:  .quad 0
    counter:    .quad 0
    .align      16
    buf:        .space 256
    fileinfo:   .space 36
    time:       .space 12
    .equ        kB, 1024
    .equ        mB, 1024 * 1024
    .equ        gB, 1024 * 1024 * 1024
.section .text
_start:
    sub         $40, %rsp
    lea         frequency(%rip), %rcx
    call        QueryPerformanceFrequency
    test        %al, %al
    jz          Error
    lea         counter(%rip), %rcx
    call        QueryPerformanceCounter
    test        %al, %al
    jz          Error
    lea         time(%rip), %r8
    xor         %edx, %edx
    mov         counter(%rip), %rax
    idivq       frequency(%rip)
    mov         %rax, (%r8)
    mov         $1000000000, %eax
    imul        %edx
    xor         %edx, %edx
    idivl       frequency(%rip)
    mov         %eax, 8(%r8)
l0:
    call        rdtscpf
    mov         %rax, %rbp
    call        rdtscpf
    sub         %rbp, %rax
    add         %rax, %rdi
    incl        %ebx
    cmp         $100000, %ebx
    jb          l0
    lea         counter(%rip), %rcx
    call        QueryPerformanceCounter
    test        %al, %al
    jz          Error
    lea         time(%rip), %r8
    xor         %edx, %edx
    mov         counter(%rip), %rax
    idivq       frequency(%rip)
    sub         (%r8), %rax
    cvtsi2sd    %rax, %xmm6
    mov         $1000000000, %eax
    imul        %edx
    xor         %edx, %edx
    idivl       frequency(%rip)
    sub         8(%r8), %eax
    cvtsi2sd    %eax, %xmm1
    mov         $0x41cdcd6500000000, %rax
    movq        %rax, %xmm7
    divsd       %xmm7, %xmm1
    addsd       %xmm1, %xmm6
    movdqa      %xmm6, %xmm8
    lea         buf(%rip), %rcx
    xor         %edx, %edx
    call        setjmp
    test        %al, %al
    jnz         Error
    lea         file(%rip), %rcx
    xor         %edx, %edx
    lea         fileinfo(%rip), %r8
    call        GetFileAttributesExA
    test        %al, %al
    jnz         c1
    lea         buf(%rip), %rcx
    mov         $1, %edx
    call        longjmp
c1:
    mov         fileinfo + 28(%rip), %eax
    mov         fileinfo + 32(%rip), %ecx
    mov         %eax, Size + 4(%rip)
    mov         %ecx, Size(%rip)
    lea         Cycles(%rip), %rcx
    mov         %rdi, %rdx
    call        printf_s
    xor         %edx, %edx
    cvtsd2si    %xmm6, %rbx
    mov         %rbx, %rax
    mov         $3600, %ecx
    div         %rcx
    mov         %rax, %rbp
    mov         %rdx, %rsi
    mov         $60, %ecx
    mov         %rdx, %rax
    xor         %edx, %edx
    div         %rcx
    mov         %rax, %r12
    cvtsi2sd    %rbx, %xmm1
    subsd       %xmm1, %xmm6
    lea         Timef(%rip), %rcx
    mov         %rbp, %rdx
    mov         %rsi, %r8
    movq        %xmm6, %r9
    call        printf_s
    cvtsi2sd    %rdi, %xmm0
    divsd       %xmm8, %xmm0
    divsd       %xmm7, %xmm0
    lea         CPU(%rip), %rcx
    movq        %xmm0, %rdx
    call        printf_s
    mov         Size(%rip), %rax
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
