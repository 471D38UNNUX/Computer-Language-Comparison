	.file	"FFI.c"
	.text
	.def	JS_NewCFunction;	.scl	3;	.type	32;	.endef
	.seh_proc	JS_NewCFunction
JS_NewCFunction:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movq	40(%rbp), %r9
	movq	32(%rbp), %r8
	movq	24(%rbp), %rdx
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	48(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, %rcx
	call	JS_NewCFunction2
	movq	16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Arguments didn't match in function call\0"
	.align 8
.LC1:
	.ascii "Invalid argument: expected an integer\0"
	.text
	.def	_ExitProcess;	.scl	3;	.type	32;	.endef
	.seh_proc	_ExitProcess
_ExitProcess:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%r9d, 56(%rbp)
	cmpl	$1, 56(%rbp)
	je	.L4
	leaq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	40(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	JS_ThrowTypeError
	movl	$1, %ecx
	movq	__imp_ExitProcess(%rip), %rax
	call	*%rax
.L4:
	movq	64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rcx
	leaq	-4(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	JS_ToInt32
	testl	%eax, %eax
	je	.L5
	leaq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	40(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	JS_ThrowTypeError
	movl	$1, %ecx
	movq	__imp_ExitProcess(%rip), %rax
	call	*%rax
.L5:
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	__imp_ExitProcess(%rip), %rax
	call	*%rax
	nop
	.seh_endproc
	.def	rdtscpf;	.scl	3;	.type	32;	.endef
	.seh_proc	rdtscpf
rdtscpf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%r9d, 56(%rbp)
	cmpl	$0, 56(%rbp)
	je	.L7
	leaq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	40(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	JS_ThrowTypeError
	movl	$1, %ecx
	movq	__imp_ExitProcess(%rip), %rax
	call	*%rax
.L7:
	lfence
	rdtscp
	movl	%ecx, %r8d
	leaq	-12(%rbp), %rcx
	movl	%r8d, (%rcx)
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	lfence
	movq	32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	JS_NewBigUint64
	movq	32(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	sub;	.scl	3;	.type	32;	.endef
	.seh_proc	sub
sub:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%r9d, 56(%rbp)
	movq	64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	JS_ToInt32
	movq	64(%rbp), %rax
	addq	$16, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	JS_ToInt32
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	subl	%eax, %edx
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	%edx, -4(%rbp)
	movq	32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	32(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	movq	32(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "ExitProcess\0"
	.text
	.def	js_module_init;	.scl	3;	.type	32;	.endef
	.seh_proc	js_module_init
js_module_init:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	leaq	-16(%rbp), %rax
	leaq	.LC2(%rip), %r8
	leaq	_ExitProcess(%rip), %rcx
	movq	16(%rbp), %rdx
	movl	$1, 32(%rsp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	JS_NewCFunction
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	.LC2(%rip), %r8
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r9
	movq	%rax, %rcx
	call	JS_SetModuleExport
	movl	$0, %eax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	js_init_module
	.def	js_init_module;	.scl	2;	.type	32;	.endef
	.seh_proc	js_init_module
js_init_module:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	leaq	js_module_init(%rip), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	JS_NewCModule
	movq	%rax, -8(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	JS_AddModuleExport
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.1.0"
	.def	JS_NewCFunction2;	.scl	2;	.type	32;	.endef
	.def	JS_ThrowTypeError;	.scl	2;	.type	32;	.endef
	.def	JS_ToInt32;	.scl	2;	.type	32;	.endef
	.def	JS_NewBigUint64;	.scl	2;	.type	32;	.endef
	.def	JS_SetModuleExport;	.scl	2;	.type	32;	.endef
	.def	JS_NewCModule;	.scl	2;	.type	32;	.endef
	.def	JS_AddModuleExport;	.scl	2;	.type	32;	.endef
