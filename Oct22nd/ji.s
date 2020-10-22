	.file	"ji.c"
	.text
	.globl	ji
	.type	ji, @function
ji:
.LFB0:
	.cfi_startproc
	movl	$0, %edi
	jmp	.L2
.L3:
	leaq	a(%rip), %rsi
	movslq	%edi, %rax
	movslq	%ecx, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	%rdx, %rax
	movl	(%rsi,%rax,4), %edx
	addl	$1, %edx
	movl	%edx, (%rsi,%rax,4)
	addl	$1, %ecx
.L4:
	cmpl	$2, %ecx
	jle	.L3
	addl	$1, %edi
.L2:
	cmpl	$2, %edi
	jg	.L6
	movl	$0, %ecx
	jmp	.L4
.L6:
	rep ret
	.cfi_endproc
.LFE0:
	.size	ji, .-ji
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
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
