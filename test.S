	.text
	.file	"test.cpp"
	.globl	_Z10insert_bitjmb       # -- Begin function _Z10insert_bitjmb
	.p2align	4, 0x90
	.type	_Z10insert_bitjmb,@function
_Z10insert_bitjmb:                      # @_Z10insert_bitjmb
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rcx
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	andl	%edi, %eax
	shll	%cl, %edx
	addb	$1, %cl
	shrl	%cl, %edi
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %edi
	orl	%edx, %eax
	addl	%edi, %edi
	orl	%edi, %eax
	retq
.Lfunc_end0:
	.size	_Z10insert_bitjmb, .Lfunc_end0-_Z10insert_bitjmb
	.cfi_endproc
                                        # -- End function



										
	.globl	_Z15other_inst_bitsjmb  # -- Begin function _Z15other_inst_bitsjmb
	.p2align	4, 0x90
	.type	_Z15other_inst_bitsjmb,@function
_Z15other_inst_bitsjmb:                 # @_Z15other_inst_bitsjmb
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rcx
                                        # kill: def $edi killed $edi def $rdi
	leal	(%rdi,%rdi), %esi
	movl	%esi, %eax
	btsl	%ecx, %eax
	btrl	%ecx, %esi
	testl	%edx, %edx
	cmovnel	%eax, %esi
	movl	$-1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %eax
	andl	%eax, %esi
	notl	%eax
	andl	%edi, %eax
	orl	%esi, %eax
	retq
.Lfunc_end1:
	.size	_Z15other_inst_bitsjmb, .Lfunc_end1-_Z15other_inst_bitsjmb
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
