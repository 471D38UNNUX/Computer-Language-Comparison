.global rdtscpf
.text
rdtscpf:
    lfence
    rdtscp
    lfence
    shl $32, %rdx
    or  %rdx, %rax
    ret
