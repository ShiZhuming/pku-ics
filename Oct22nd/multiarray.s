	.file	"multiarray.c"
	.text
	.globl	a
	.data
	.align 32
	.type	a, @object
	.size	a, 36
a:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.text
	.globl	ij
	.type	ij, @function
ij:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	movl	$0, -4(%rbp)
	jmp	.L3
.L4:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L3:
	cmpl	$2, -4(%rbp)
	jle	.L4
	addl	$1, -8(%rbp)
.L2:
	cmpl	$2, -8(%rbp)
	jle	.L5
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	ij, .-ij
	.globl	ji
	.type	ji, @function
ji:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -8(%rbp)
	jmp	.L7
.L10:
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L8:
	cmpl	$2, -4(%rbp)
	jle	.L9
	addl	$1, -8(%rbp)
.L7:
	cmpl	$2, -8(%rbp)
	jle	.L10
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	ji, .-ji
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
