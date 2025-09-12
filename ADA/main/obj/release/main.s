	.file	"main.adb"
	.text
	.section .rdata,"dr"
.LC7:
	.ascii "main.adb"
	.space 1
.LC8:
	.ascii "main.exe"
.LC15:
	.ascii " seconds"
.LC16:
	.ascii "Approx CPU frequency: "
.LC17:
	.ascii " GHz"
.LC19:
	.ascii "File size: "
.LC21:
	.ascii " GB"
.LC24:
	.ascii " MB"
.LC27:
	.ascii " KB"
	.align 8
.LC0:
	.long	1
	.long	8
	.align 8
.LC1:
	.long	1
	.long	21
	.align 8
.LC2:
	.long	1
	.long	22
	.align 8
.LC3:
	.long	1
	.long	4
	.align 8
.LC4:
	.long	1
	.long	11
	.align 8
.LC5:
	.long	1
	.long	3
	.align 8
.LC6:
	.long	1
	.long	20
	.section	.text.unlikely._ada_main,"x"
	.align 2
.LCOLDB28:
	.section	.text.startup._ada_main,"x"
.LHOTB28:
	.align 2
	.p2align 4
	.globl	_ada_main
	.def	_ada_main;	.scl	2;	.type	32;	.endef
	.seh_proc	_ada_main
_ada_main:
.LFB1:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
.LEHB0:
	subq	$296, %rsp
	.seh_stackalloc	296
	movaps	%xmm6, 272(%rsp)
	.seh_savexmm	%xmm6, 272
.LEHE0:
	.seh_endprologue
	call	__main
	leaq	96(%rsp), %rcx
.LEHB1:
	call	QueryPerformanceFrequency
	leaq	104(%rsp), %rcx
	movl	%eax, %ebx
	call	QueryPerformanceCounter
	cmpb	$1, %al
	jne	.L62
	xorb	$1, %bl
	jne	.L62
.L2:
	movq	96(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L96
	movabsq	$-9223372036854775808, %rax
	movq	104(%rsp), %r8
	cmpq	%rax, %r8
	sete	%dl
	cmpq	$-1, %rcx
	sete	%al
	testb	%al, %dl
	jne	.L97
	movq	%r8, %rax
	cqto
	idivq	%rcx
	movq	%rax, %r13
	cmpq	$-1, %rcx
	je	.L57
	movq	%r8, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.L98
.L63:
	movabsq	$18446744072, %r8
	movl	$2305843009, %eax
	leaq	(%rdx,%rax,4), %rax
	cmpq	%rax, %r8
	jb	.L99
	imulq	$1000000000, %rdx, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rbp
	movl	$2147483648, %eax
	addq	%rbp, %rax
	shrq	$32, %rax
	jne	.L100
.L6:
	movl	$100000, %ebx
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
.L9:
/APP
 # 29 "D:\Assembly Project\Programming Language\ADA\main\src\main.adb" 1
	lfence
rdtscp
lfence
shl  $32, %rdx
or   %rdx, %rax
mov  %rax, %rcx
 # 0 "" 2
 # 29 "D:\Assembly Project\Programming Language\ADA\main\src\main.adb" 1
	lfence
rdtscp
lfence
shl  $32, %rdx
or   %rdx, %rax
mov  %rax, %rdx
 # 0 "" 2
/NO_APP
	subq	%rcx, %rdx
	addq	%rdx, %rsi
	subq	$1, %rbx
	jne	.L9
	leaq	104(%rsp), %rcx
	call	QueryPerformanceCounter
	testb	%al, %al
	je	.L101
.L10:
	movq	96(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L102
	movabsq	$-9223372036854775808, %rax
	movq	104(%rsp), %r8
	cmpq	%rax, %r8
	sete	%dl
	cmpq	$-1, %rcx
	sete	%al
	testb	%al, %dl
	jne	.L103
	movq	%r8, %rax
	cqto
	idivq	%rcx
	movq	%rax, %r12
	cmpq	$-1, %rcx
	je	.L58
	movq	%r8, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.L104
.L64:
	movabsq	$18446744072, %r8
	movl	$2305843009, %eax
	leaq	(%rdx,%rax,4), %rax
	cmpq	%rax, %r8
	jb	.L105
	imulq	$1000000000, %rdx, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rdi
	movl	$2147483648, %eax
	addq	%rdi, %rax
	shrq	$32, %rax
	jne	.L106
.L13:
	subq	%r13, %r12
	jo	.L17
	subl	%ebp, %edi
	jo	.L107
	leaq	.LC8(%rip), %rax
	leaq	80(%rsp), %rbp
	movq	%rax, 80(%rsp)
	movq	%rbp, %rcx
	leaq	.LC0(%rip), %rax
	movq	%rax, 88(%rsp)
	call	ada__directories__size
	leaq	.LC1(%rip), %rdx
	leaq	160(%rsp), %r13
	movq	%rsi, %rcx
	movq	%rax, 64(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rbp, %rdx
	movq	%r13, 80(%rsp)
	call	system__img_llu__impl__image_unsigned
	xorl	%edx, %edx
	testl	%eax, %eax
	leaq	205(%rsp), %rcx
	cmovs	%edx, %eax
	movq	%r13, %rdx
	leaq	192(%rsp), %r14
	leal	13(%rax), %r15d
	movabsq	$8737863351892471636, %rax
	movslq	%r15d, %r8
	movq	%rax, 192(%rsp)
	movabsq	$2338324147735184160, %rax
	subq	$13, %r8
	movq	%rax, 197(%rsp)
	call	memcpy
	cmpl	$34, %r15d
	jg	.L108
	pxor	%xmm6, %xmm6
	pxor	%xmm0, %xmm0
	leaq	120(%rsp), %rax
	movq	%rbp, %rcx
	cvtsi2sdl	%edi, %xmm6
	cvtsi2sdq	%r12, %xmm0
	movl	%r15d, 124(%rsp)
	divsd	.LC9(%rip), %xmm6
	movl	$1, 120(%rsp)
	addsd	%xmm0, %xmm6
	movq	%r14, 80(%rsp)
	movq	%rax, 88(%rsp)
	call	ada__text_io__put_line__2
	ucomisd	.LC10(%rip), %xmm6
	jbe	.L65
	movsd	.LC11(%rip), %xmm0
	ucomisd	%xmm6, %xmm0
	jbe	.L65
	pxor	%xmm0, %xmm0
	leaq	128(%rsp), %rax
	leaq	.LC1(%rip), %rdx
	comisd	%xmm0, %xmm6
	movq	%rax, 56(%rsp)
	movapd	%xmm6, %xmm0
	jb	.L82
	addsd	.LC13(%rip), %xmm0
	movsd	.LC14(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jnb	.L30
.L94:
	cvttsd2siq	%xmm0, %r12
.L31:
	movq	%rax, 80(%rsp)
	movl	$3600, %ecx
	movq	%r12, %rax
	movq	%rdx, 88(%rsp)
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rcx
	movq	%rbp, %rdx
	call	system__img_llu__impl__image_unsigned
	xorl	%edx, %edx
	testl	%eax, %eax
	movq	%r12, %rcx
	movq	%r13, 80(%rsp)
	movl	%edx, %edi
	leaq	.LC1(%rip), %rdx
	movq	%rdx, 88(%rsp)
	movq	%r12, %rdx
	cmovns	%eax, %edi
	movabsq	$655884233731895169, %rax
	shrq	$4, %rdx
	mulq	%rdx
	movabsq	$-8608480567731124087, %rax
	shrq	$3, %rdx
	imulq	$3600, %rdx, %rdx
	subq	%rdx, %rcx
	mulq	%rcx
	movq	%rdx, %rcx
	movq	%rbp, %rdx
	shrq	$5, %rcx
	call	system__img_llu__impl__image_unsigned
	xorl	%edx, %edx
	testl	%eax, %eax
	leal	19(%rdi), %r10d
	movslq	%edi, %r8
	cmovs	%edx, %eax
	movq	56(%rsp), %rdx
	movabsq	$7737593317288667476, %rcx
	movl	%r10d, 76(%rsp)
	movq	%rcx, 192(%rsp)
	leaq	204(%rsp), %rcx
	movl	$540700261, 200(%rsp)
	leal	(%rax,%r10), %r15d
	leal	9(%r15), %eax
	movl	%eax, 72(%rsp)
	call	memcpy
	leal	13(%rdi), %eax
	cltq
	movl	$1970235424, 191(%rsp,%rax)
	movl	$544436853, 194(%rsp,%rax)
	leal	20(%rdi), %eax
	movslq	%r15d, %r8
	movq	%r13, %rdx
	movabsq	$8315180334721887520, %rdi
	cltq
	subq	%rax, %r8
	leaq	-1(%r14,%rax), %rcx
	addq	$1, %r8
	cmpl	%r15d, 76(%rsp)
	cmovge	%rbx, %r8
	call	memcpy
	leal	1(%r15), %eax
	cltq
	movq	%rdi, 191(%rsp,%rax)
	movb	$32, 199(%rsp,%rax)
	cmpl	$70, 72(%rsp)
	jg	.L109
	movl	$1, %eax
	movd	72(%rsp), %xmm2
	movq	%rbp, %rcx
	movq	%r14, 80(%rsp)
	movd	%eax, %xmm0
	leaq	112(%rsp), %rax
	punpckldq	%xmm2, %xmm0
	movq	%rax, 88(%rsp)
	movq	%xmm0, 112(%rsp)
	call	ada__text_io__put__4
	movabsq	$-8608480567731124087, %rax
	pxor	%xmm1, %xmm1
	mulq	%r12
	shrq	$5, %rdx
	imulq	$60, %rdx, %rax
	movq	%r12, %rdx
	subq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	jns	.L36
	movq	%rdx, %rax
	andl	$1, %edx
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
.L36:
	pxor	%xmm0, %xmm0
	addsd	%xmm6, %xmm1
	cvtsi2sdq	%r12, %xmm0
	testq	%r12, %r12
	jns	.L38
	movq	%r12, %rax
	andl	$1, %r12d
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%r12, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
.L38:
	subsd	%xmm0, %xmm1
	movq	.refptr.ada__text_io__current_out(%rip), %rbx
	movl	$6, %r9d
	movl	$1, %r8d
	movq	(%rbx), %rcx
	movl	$0, 32(%rsp)
	call	ada__long_float_text_io__aux_long_float__putXn
	leaq	.LC15(%rip), %rax
	movq	%rbp, %rcx
	movq	%rax, 80(%rsp)
	leaq	.LC0(%rip), %rax
	movq	%rax, 88(%rsp)
	call	ada__text_io__put_line__2
	leaq	.LC16(%rip), %rax
	movq	%rbp, %rcx
	movq	%rax, 80(%rsp)
	leaq	.LC2(%rip), %rax
	movq	%rax, 88(%rsp)
	call	ada__text_io__put__4
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rsi, %xmm1
	testq	%rsi, %rsi
	jns	.L40
	movq	%rsi, %rax
	andl	$1, %esi
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%rsi, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
.L40:
	divsd	%xmm6, %xmm1
	movq	(%rbx), %rcx
	movl	$0, 32(%rsp)
	movl	$6, %r9d
	movl	$1, %r8d
	divsd	.LC9(%rip), %xmm1
	call	ada__long_float_text_io__aux_long_float__putXn
	leaq	.LC17(%rip), %rax
	movq	%rbp, %rcx
	movq	%rax, 80(%rsp)
	leaq	.LC3(%rip), %rax
	movq	%rax, 88(%rsp)
	call	ada__text_io__put_line__2
	pxor	%xmm6, %xmm6
	cvtsi2sdq	64(%rsp), %xmm6
	comisd	.LC18(%rip), %xmm6
	jnb	.L110
	comisd	.LC22(%rip), %xmm6
	jnb	.L111
	comisd	.LC25(%rip), %xmm6
	jb	.L85
	leaq	.LC19(%rip), %rax
	movq	%rbp, %rcx
	movq	%rax, 80(%rsp)
	leaq	.LC4(%rip), %rax
	movq	%rax, 88(%rsp)
	call	ada__text_io__put__4
	movsd	.LC26(%rip), %xmm1
	xorl	%eax, %eax
	movl	$3, %r9d
	movl	$1, %r8d
	movl	%eax, 32(%rsp)
	movq	(%rbx), %rcx
	mulsd	%xmm6, %xmm1
	call	ada__long_float_text_io__aux_long_float__putXn
	leaq	.LC27(%rip), %rax
.L88:
	movq	%rax, 80(%rsp)
	movq	%rbp, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, 88(%rsp)
	call	ada__text_io__put_line__2
.L43:
	xorl	%ecx, %ecx
	call	ExitProcess
.LEHE1:
.L1:
.LEHB2:
	movaps	272(%rsp), %xmm6
	nop
	addq	$296, %rsp
.LEHE2:
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L104:
	xorq	%rcx, %r8
	jns	.L64
	addq	%rcx, %rdx
	jmp	.L64
.L98:
	xorq	%rcx, %r8
	jns	.L63
	addq	%rcx, %rdx
	jmp	.L63
.L82:
	subsd	.LC13(%rip), %xmm0
	movsd	.LC14(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jb	.L94
.L30:
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %r12
	btcq	$63, %r12
	jmp	.L31
.L58:
	xorl	%edi, %edi
	jmp	.L13
.L57:
	xorl	%ebp, %ebp
	jmp	.L6
.L62:
	movl	$1, %ecx
.LEHB3:
	call	ExitProcess
	jmp	.L2
.L101:
	movl	$1, %ecx
	call	ExitProcess
	jmp	.L10
.L110:
	leaq	.LC19(%rip), %rax
	movq	%rbp, %rcx
	movq	%rax, 80(%rsp)
	leaq	.LC4(%rip), %rax
	movq	%rax, 88(%rsp)
	call	ada__text_io__put__4
	movsd	.LC20(%rip), %xmm1
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movl	$1, %r8d
	movl	%ecx, 32(%rsp)
	movq	(%rbx), %rcx
	mulsd	%xmm6, %xmm1
	call	ada__long_float_text_io__aux_long_float__putXn
	leaq	.LC21(%rip), %rax
	jmp	.L88
.L111:
	leaq	.LC19(%rip), %rax
	movq	%rbp, %rcx
	movq	%rax, 80(%rsp)
	leaq	.LC4(%rip), %rax
	movq	%rax, 88(%rsp)
	call	ada__text_io__put__4
	mulsd	.LC23(%rip), %xmm6
	xorl	%edx, %edx
	movl	$3, %r9d
	movl	$1, %r8d
	movl	%edx, 32(%rsp)
	movq	(%rbx), %rcx
	movapd	%xmm6, %xmm1
	call	ada__long_float_text_io__aux_long_float__putXn
	leaq	.LC24(%rip), %rax
	jmp	.L88
.L85:
	leaq	.LC6(%rip), %rdx
	movq	64(%rsp), %rcx
	movq	%r13, 80(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rbp, %rdx
	call	system__img_lli__impl__image_integer
	xorl	%edx, %edx
	testl	%eax, %eax
	leaq	203(%rsp), %rcx
	movl	%edx, %ebx
	movq	%r13, %rdx
	cmovns	%eax, %ebx
	movabsq	$8820707928159578438, %rax
	movq	%rax, 192(%rsp)
	movslq	%ebx, %r8
	leal	17(%rbx), %esi
	movl	$540697978, 199(%rsp)
	call	memcpy
	leal	12(%rbx), %eax
	cltq
	movl	$1954112032, 191(%rsp,%rax)
	movw	$29541, 195(%rsp,%rax)
	cmpl	$37, %esi
	jg	.L112
	movl	$1, %eax
	movd	%esi, %xmm3
	movq	%rbp, %rcx
	movq	%r14, 80(%rsp)
	movd	%eax, %xmm0
	movq	56(%rsp), %rax
	punpckldq	%xmm3, %xmm0
	movq	%rax, 88(%rsp)
	movq	%xmm0, 128(%rsp)
	call	ada__text_io__put_line__2
	jmp	.L43
.L108:
	movl	$57, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Range_Check
.L109:
	movl	$58, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Range_Check
.L112:
	movl	$76, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Range_Check
.L107:
	movl	$55, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Overflow_Check
.L17:
	movl	$55, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Overflow_Check
.L106:
	movl	$54, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Range_Check
.L105:
	movl	$54, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Overflow_Check
.L96:
	movl	$42, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Divide_By_Zero
.L100:
	movl	$43, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Range_Check
.L103:
	movl	$53, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Overflow_Check
.L102:
	movl	$53, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Divide_By_Zero
.L99:
	movl	$43, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Overflow_Check
.L97:
	movl	$42, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Overflow_Check
.L65:
	movl	$58, %edx
	leaq	.LC7(%rip), %rcx
	call	__gnat_rcheck_CE_Overflow_Check
.LEHE3:
.L59:
	movq	%rax, %rdi
	jmp	.L50
	.seh_handler	__gnat_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA1:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT1-.LLSDATTD1
.LLSDATTD1:
	.byte	0x1
	.uleb128 .LLSDACSE1-.LLSDACSB1
.LLSDACSB1:
	.uleb128 .LEHB0-.LFB1
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L59-.LFB1
	.uleb128 0x3
	.uleb128 .LEHB2-.LFB1
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L59-.LFB1
	.uleb128 0x3
.LLSDACSE1:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x7d
	.byte	0
	.byte	0x7b
	.align 4
	.long	.LDFCM0-.
	.long	.LDFCM1-.
.LLSDATT1:
	.section	.text.startup._ada_main,"x"
	.seh_endproc
	.section	.text.unlikely._ada_main,"x"
	.def	_ada_main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ada_main.cold
	.seh_stackalloc	360
	.seh_savereg	%rbx, 296
	.seh_savereg	%rsi, 304
	.seh_savereg	%rdi, 312
	.seh_savereg	%rbp, 320
	.seh_savexmm	%xmm6, 272
	.seh_savereg	%r12, 328
	.seh_savereg	%r13, 336
	.seh_savereg	%r14, 344
	.seh_savereg	%r15, 352
	.seh_endprologue
_ada_main.cold:
.L50:
	movq	%rax, %rcx
	cmpq	$2, %rdx
	jne	.L90
	call	__gnat_begin_handler_v1
	movl	$1, %ecx
	movq	%rax, %rbp
.LEHB4:
	call	ExitProcess
.LEHE4:
	xorl	%r8d, %r8d
	movq	%rbp, %rdx
	movq	%rdi, %rcx
.LEHB5:
	call	__gnat_end_handler_v1
	nop
.LEHE5:
	jmp	.L1
.L60:
	movq	%rax, %rcx
.L90:
	movq	%rdx, %rax
.L52:
	subq	$1, %rax
	jne	.L113
.LEHB6:
	call	__gnat_unhandled_except_handler
	nop
.LEHE6:
	jmp	.L1
.L61:
	movq	%rdx, %rbx
	movq	%rax, %r8
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	movq	%rax, %rsi
.LEHB7:
	call	__gnat_end_handler_v1
.LEHE7:
	movq	%rsi, %rcx
	movq	%rbx, %rax
	jmp	.L52
.L113:
.LEHB8:
	call	_Unwind_Resume
	nop
.LEHE8:
	.seh_handler	__gnat_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDAC1:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC1-.LLSDATTDC1
.LLSDATTDC1:
	.byte	0x1
	.uleb128 .LLSDACSEC1-.LLSDACSBC1
.LLSDACSBC1:
	.uleb128 .LEHB4-.LCOLDB28
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L61-.LCOLDB28
	.uleb128 0x5
	.uleb128 .LEHB5-.LCOLDB28
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L60-.LCOLDB28
	.uleb128 0x1
	.uleb128 .LEHB6-.LCOLDB28
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LCOLDB28
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L60-.LCOLDB28
	.uleb128 0x1
	.uleb128 .LEHB8-.LCOLDB28
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC1:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x7d
	.byte	0
	.byte	0x7b
	.align 4
	.long	.LDFCM0-.
	.long	.LDFCM1-.
.LLSDATTC1:
	.section	.text.unlikely._ada_main,"x"
	.section	.text.startup._ada_main,"x"
	.section	.text.unlikely._ada_main,"x"
	.seh_endproc
.LCOLDE28:
	.section	.text.startup._ada_main,"x"
.LHOTE28:
	.section .rdata,"dr"
	.align 8
.LC9:
	.long	0
	.long	1104006501
	.align 8
.LC10:
	.long	0
	.long	-1075838976
	.align 8
.LC11:
	.long	0
	.long	1139802112
	.align 8
.LC13:
	.long	-1
	.long	1071644671
	.align 8
.LC14:
	.long	0
	.long	1138753536
	.align 8
.LC18:
	.long	0
	.long	1104150528
	.align 8
.LC20:
	.long	0
	.long	1041235968
	.align 8
.LC22:
	.long	0
	.long	1093664768
	.align 8
.LC23:
	.long	0
	.long	1051721728
	.align 8
.LC25:
	.long	0
	.long	1083179008
	.align 8
.LC26:
	.long	0
	.long	1062207488
	.section	.data$.LDFCM1,"w"
	.align 8
.LDFCM1:
	.quad	__gnat_unhandled_others_value
	.section	.data$.LDFCM0,"w"
	.align 8
.LDFCM0:
	.quad	ada__io_exceptions__name_error
	.def	__gnat_personality_seh0;	.scl	2;	.type	32;	.endef
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 15.1.0"
	.def	QueryPerformanceFrequency;	.scl	2;	.type	32;	.endef
	.def	QueryPerformanceCounter;	.scl	2;	.type	32;	.endef
	.def	ada__directories__size;	.scl	2;	.type	32;	.endef
	.def	system__img_llu__impl__image_unsigned;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	ada__text_io__put_line__2;	.scl	2;	.type	32;	.endef
	.def	ada__text_io__put__4;	.scl	2;	.type	32;	.endef
	.def	ada__long_float_text_io__aux_long_float__putXn;	.scl	2;	.type	32;	.endef
	.def	ExitProcess;	.scl	2;	.type	32;	.endef
	.def	system__img_lli__impl__image_integer;	.scl	2;	.type	32;	.endef
	.def	__gnat_rcheck_CE_Range_Check;	.scl	2;	.type	32;	.endef
	.def	__gnat_rcheck_CE_Overflow_Check;	.scl	2;	.type	32;	.endef
	.def	__gnat_rcheck_CE_Divide_By_Zero;	.scl	2;	.type	32;	.endef
	.def	__gnat_begin_handler_v1;	.scl	2;	.type	32;	.endef
	.def	__gnat_end_handler_v1;	.scl	2;	.type	32;	.endef
	.def	__gnat_unhandled_except_handler;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.ada__text_io__current_out, "dr"
	.p2align	3, 0
	.globl	.refptr.ada__text_io__current_out
	.linkonce	discard
.refptr.ada__text_io__current_out:
	.quad	ada__text_io__current_out
