	.file	"sum.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	_plus
	.def	_plus;	.scl	2;	.type	32;	.endef
_plus:
LFB27:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	add	eax, DWORD PTR [esp+4]
	ret
	.cfi_endproc
LFE27:
	.p2align 4,,15
	.globl	_sumstore
	.def	_sumstore;	.scl	2;	.type	32;	.endef
_sumstore:
LFB28:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+8]
	add	eax, DWORD PTR [esp+4]
	mov	DWORD PTR [edx], eax
	ret
	.cfi_endproc
LFE28:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%ld + %ld --> %ld\12\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB29:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	and	esp, -16
	sub	esp, 16
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	esi, DWORD PTR [ebp+12]
	call	___main
	mov	eax, DWORD PTR [esi+4]
	mov	DWORD PTR [esp], eax
	call	_atoi
	mov	ebx, eax
	mov	eax, DWORD PTR [esi+8]
	mov	DWORD PTR [esp], eax
	call	_atoi
	mov	DWORD PTR [esp+4], ebx
	lea	edx, [ebx+eax]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	lea	esp, [ebp-8]
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_atoi;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
