	.text
	.file	"bitinsert.cpp"
	.globl	_Z10remove_bitjy        # -- Begin function _Z10remove_bitjy
	.p2align	4, 0x90
	.type	_Z10remove_bitjy,@function
_Z10remove_bitjy:                       # @_Z10remove_bitjy
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rcx
	movl	$-1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	%edi, %ecx
	shrl	%edi
	andl	%edi, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end0:
	.size	_Z10remove_bitjy, .Lfunc_end0-_Z10remove_bitjy
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
