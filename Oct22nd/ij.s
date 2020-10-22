	.file	"ij.c"
	.text
	.globl	ij
	.type	ij, @function
ij:
.LFB0:
	.cfi_startproc
	movl	$0, %edi
	jmp	.L2
.L3:
	leaq	a(%rip), %rsi
	movslq	%edx, %r8
	movslq	%edi, %rcx
	leaq	(%rcx,%rcx,2), %rax
	addq	%r8, %rax
	movl	(%rsi,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rsi,%rax,4)
	addl	$1, %edx
.L4:
	cmpl	$2, %edx
	jle	.L3
	addl	$1, %edi
.L2:
	cmpl	$2, %edi
	jg	.L6
	movl	$0, %edx
	jmp	.L4
.L6:
	rep ret
	.cfi_endproc
.LFE0:
	.size	ij, .-ij
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
