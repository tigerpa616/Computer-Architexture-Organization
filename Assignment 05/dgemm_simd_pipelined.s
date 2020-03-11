	.file	"dgemm_simd_pipelined.c"
	.text
	.comm	_a, 4, 2
	.comm	_b, 4, 2
	.comm	_c, 4, 2
	.globl	_dgemm_SIMD_Pipelined
	.def	_dgemm_SIMD_Pipelined;	.scl	2;	.type	32;	.endef
_dgemm_SIMD_Pipelined:
LFB4101:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-32, %esp
	subl	$416, %esp
	movl	$0, 412(%esp)
	jmp	L2
L18:
	movl	$0, 408(%esp)
	jmp	L3
L17:
	movl	$0, 404(%esp)
	jmp	L4
L6:
	movl	404(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	408(%esp), %eax
	imull	8(%ebp), %eax
	addl	%eax, %edx
	movl	412(%esp), %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 348(%esp)
	movl	348(%esp), %eax
	vmovapd	(%eax), %ymm0
	movl	404(%esp), %eax
	sall	$5, %eax
	leal	416(%esp), %ecx
	addl	%ecx, %eax
	subl	$416, %eax
	vmovapd	%ymm0, (%eax)
	addl	$1, 404(%esp)
L4:
	cmpl	$3, 404(%esp)
	jle	L6
	movl	$0, 400(%esp)
	jmp	L7
L14:
	movl	408(%esp), %eax
	imull	8(%ebp), %eax
	movl	%eax, %edx
	movl	400(%esp), %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 344(%esp)
	movl	344(%esp), %eax
	vbroadcastsd	(%eax), %ymm0
	vmovapd	%ymm0, 352(%esp)
	movl	$0, 396(%esp)
	jmp	L9
L13:
	movl	8(%ebp), %eax
	imull	400(%esp), %eax
	movl	%eax, %edx
	movl	396(%esp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	412(%esp), %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 188(%esp)
	movl	188(%esp), %eax
	vmovapd	(%eax), %ymm0
	vmovapd	%ymm0, 224(%esp)
	vmovapd	352(%esp), %ymm0
	vmovapd	%ymm0, 192(%esp)
	vmovapd	224(%esp), %ymm0
	vmulpd	192(%esp), %ymm0, %ymm0
	movl	396(%esp), %eax
	sall	$5, %eax
	leal	416(%esp), %ecx
	addl	%ecx, %eax
	subl	$416, %eax
	vmovapd	(%eax), %ymm1
	vmovapd	%ymm1, 288(%esp)
	vmovapd	%ymm0, 256(%esp)
	vmovapd	288(%esp), %ymm0
	vaddpd	256(%esp), %ymm0, %ymm0
	movl	396(%esp), %eax
	sall	$5, %eax
	leal	416(%esp), %ecx
	addl	%ecx, %eax
	subl	$416, %eax
	vmovapd	%ymm0, (%eax)
	addl	$1, 396(%esp)
L9:
	cmpl	$3, 396(%esp)
	jle	L13
	addl	$1, 400(%esp)
L7:
	movl	400(%esp), %eax
	cmpl	8(%ebp), %eax
	jl	L14
	movl	$0, 392(%esp)
	jmp	L15
L16:
	movl	392(%esp), %eax
	sall	$5, %eax
	leal	416(%esp), %ecx
	addl	%ecx, %eax
	subl	$416, %eax
	vmovapd	(%eax), %ymm0
	movl	392(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	408(%esp), %eax
	imull	8(%ebp), %eax
	addl	%eax, %edx
	movl	412(%esp), %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 184(%esp)
	vmovapd	%ymm0, 128(%esp)
	movl	184(%esp), %eax
	vmovapd	128(%esp), %ymm0
	vmovapd	%ymm0, (%eax)
	addl	$1, 392(%esp)
L15:
	cmpl	$3, 392(%esp)
	jle	L16
	addl	$1, 408(%esp)
L3:
	movl	408(%esp), %eax
	cmpl	8(%ebp), %eax
	jl	L17
	addl	$16, 412(%esp)
L2:
	movl	412(%esp), %eax
	cmpl	8(%ebp), %eax
	jl	L18
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4101:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
