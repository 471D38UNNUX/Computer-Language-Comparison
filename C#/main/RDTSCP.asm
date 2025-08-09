.global _rdtscp
.text
_rdtscp:
    rdtscp
    shl $32, %rdx
    or  %rdx, %rax
    ret
