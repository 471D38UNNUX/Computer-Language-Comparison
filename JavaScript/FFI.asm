includelib legacy_stdio_definitions.lib
includelib ucrt.lib
includelib kernel32.lib
napi_define_properties      proto
napi_get_cb_info            proto
napi_throw_type_error       proto
napi_get_buffer_info        proto
napi_get_boolean            proto
napi_get_value_uint32       proto
napi_create_bigint_uint64   proto
QueryPerformanceFrequency   proto
QueryPerformanceCounter     proto
ExitProcess                 proto
.data
    QueryPerformanceFrequencyv  db "QueryPerformanceFrequency", 0
    QueryPerformanceCounterv    db "QueryPerformanceCounter", 0
    ExitProcessv                db "ExitProcess", 0
    rdtscpfv                    db "rdtscpf", 0
    earg                        db "Arguments not match in function call", 0
    esize                       db "Must be at least 8 bytes", 0
    eint                        db "Invalid argument: expected an integer", 0
.code
_DllMainCRTStartup                  proc
	mov	eax, 1
	ret
_DllMainCRTStartup                  endp
node_api_module_get_api_version_v1  proc
    mov eax, 8
    ret
node_api_module_get_api_version_v1  endp
napi_register_module_v1             proc
    mov     8[rsp], rcx
    mov     16[rsp], rdx
    sub     rsp, 40
    call    Init
    add     rsp, 40
    ret
napi_register_module_v1             endp
Init                                proc
    mov     8[rsp], rcx
    mov     16[rsp], rdx
    push    rdi
    sub     rsp, 288
    lea     rdi, 32[rsp]
    xor     eax, eax
    mov     ecx, 256
    rep     stosb
    lea     rax, QueryPerformanceFrequencyv
    lea     rcx, _QueryPerformanceFrequency
    lea     rdx, QueryPerformanceCounterv
    lea     r8, _QueryPerformanceCounter
    lea     r9, ExitProcessv
    lea     r10, _ExitProcess
    lea     r11, rdtscpfv
    lea     rdi, rdtscpf
    mov     32[rsp], rax
    mov     48[rsp], rcx
    mov     96[rsp], rdx
    mov     112[rsp], r8
    mov     160[rsp], r9
    mov     176[rsp], r10
    mov     224[rsp], r11
    mov     240[rsp], rdi
    mov     rcx, 304[rsp]
    mov     rdx, 312[rsp]
    mov     r8d, 4
    lea     r9, 32[rsp]
    call    napi_define_properties
    test    al, al
    jnz     Error
    add     rsp, 288
    pop     rdi
    ret
Error:
    mov     ecx, 1
    call    ExitProcess
Init                                endp
_QueryPerformanceFrequency          proc
    mov     8[rsp], rcx
    mov     16[rsp], rdx
    push    rdi
    sub     rsp, 96
    lea     rdi, 32[rsp]
    xor     eax, eax
    mov     ecx, 64
    rep     stosb
    mov     byte ptr 48[rsp], 1
    mov     rcx, 112[rsp]
    lea     r8, 48[rsp]
    lea     r9, 56[rsp]
    call    napi_get_cb_info
    test    al, al
    jnz     e1
    mov     rcx, 112[rsp]
    mov     rdx, 56[rsp]
    lea     r8, 64[rsp]
    lea     r9, 72[rsp]
    call    napi_get_buffer_info
    test    al, al
    jnz     e2
    mov     rcx, 64[rsp]
    call    QueryPerformanceFrequency
    mov     rcx, 112[rsp]
    mov     edx, eax
    lea     r8, 80[rsp]
    call    napi_get_boolean
    test    al, al
    jnz     e3
    mov     rax, 80[rsp]
    add     rsp, 96
    pop     rdi
    ret
e1:
    mov     rcx, 112[rsp]
    xor     edx, edx
    lea     r8, earg
    call    napi_throw_type_error
    mov     ecx, 1
    call    ExitProcess
e2:
    mov     rcx, 112[rsp]
    xor     edx, edx
    lea     r8, esize
    call    napi_throw_type_error
    mov     ecx, 1
    call    ExitProcess
e3:
    mov     ecx, 1
    call    ExitProcess
_QueryPerformanceFrequency          endp
_QueryPerformanceCounter            proc
    mov     8[rsp], rcx
    mov     16[rsp], rdx
    push    rdi
    sub     rsp, 96
    lea     rdi, 32[rsp]
    xor     eax, eax
    mov     ecx, 64
    rep     stosb
    mov     byte ptr 48[rsp], 1
    mov     rcx, 112[rsp]
    lea     r8, 48[rsp]
    lea     r9, 56[rsp]
    call    napi_get_cb_info
    test    al, al
    jnz     e1
    mov     rcx, 112[rsp]
    mov     rdx, 56[rsp]
    lea     r8, 64[rsp]
    lea     r9, 72[rsp]
    call    napi_get_buffer_info
    test    al, al
    jnz     e2
    mov     rcx, 64[rsp]
    call    QueryPerformanceCounter
    mov     rcx, 112[rsp]
    mov     edx, eax
    lea     r8, 80[rsp]
    call    napi_get_boolean
    test    al, al
    jnz     e3
    mov     rax, 80[rsp]
    add     rsp, 96
    pop     rdi
    ret
e1:
    mov     rcx, 112[rsp]
    xor     edx, edx
    lea     r8, earg
    call    napi_throw_type_error
    mov     ecx, 1
    call    ExitProcess
e2:
    mov     rcx, 112[rsp]
    xor     edx, edx
    lea     r8, esize
    call    napi_throw_type_error
    mov     ecx, 1
    call    ExitProcess
e3:
    mov     ecx, 1
    call    ExitProcess
_QueryPerformanceCounter            endp
_ExitProcess                        proc
    mov     8[rsp], rcx
    mov     16[rsp], rdx
    sub     rsp, 72
    lea     rdi, 32[rsp]
    xor     eax, eax
    mov     ecx, 40
    rep     stosb
    mov     byte ptr 48[rsp], 1
    mov     rcx, 80[rsp]
    lea     r8, 48[rsp]
    lea     r9, 56[rsp]
    call    napi_get_cb_info
    test    al, al
    jnz     e1
    cmp     byte ptr 48[rsp], 1
    jb      e1
    ja      e1
    mov     rcx, 80[rsp]
    mov     rdx, 56[rsp]
    lea     r8, 64[rsp]
    call    napi_get_value_uint32
    test    al, al
    jnz     e2
    mov     ecx, 64[rsp]
    call    ExitProcess
    ret
e1:
    mov     rcx, 80[rsp]
    xor     edx, edx
    lea     r8, earg
    call    napi_throw_type_error
    mov     ecx, 1
    call    ExitProcess
e2:
    mov     rcx, 80[rsp]
    xor     edx, edx
    lea     r8, eint
    call    napi_throw_type_error
    mov     ecx, 1
    call    ExitProcess
_ExitProcess                        endp
rdtscpf                             proc
    mov     8[rsp], rcx
    mov     16[rsp], rdx
    sub     rsp, 40
    mov     qword ptr 32[rsp], 0
    lfence
    rdtscp
    lfence
    shl     rdx, 32
    or      rax, rdx
    mov     rcx, 48[rsp]
    lea     r8, 32[rsp]
    mov     rdx, rax
    call    napi_create_bigint_uint64
    test    al, al
    jnz     Error
    mov     rax, 32[rsp]
    add     rsp, 40
    ret
Error:
    mov     ecx, 1
    call    ExitProcess
rdtscpf                             endp
end