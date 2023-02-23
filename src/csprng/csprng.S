	.text
	.file	"csprng.cpp"
	.globl	csprng_create           # -- Begin function csprng_create
	.p2align	4, 0x90
	.type	csprng_create,@function
csprng_create:                          # @csprng_create
	.cfi_startproc
# %bb.0:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	jmp	fopen                   # TAILCALL
.Lfunc_end0:
	.size	csprng_create, .Lfunc_end0-csprng_create
	.cfi_endproc
                                        # -- End function
	.globl	csprng_get              # -- Begin function csprng_get
	.p2align	4, 0x90
	.type	csprng_get,@function
csprng_get:                             # @csprng_get
	.cfi_startproc
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB1_1
# %bb.2:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	callq	fread
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	sete	%al
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_1:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	csprng_get, .Lfunc_end1-csprng_get
	.cfi_endproc
                                        # -- End function
	.globl	csprng_get_int          # -- Begin function csprng_get_int
	.p2align	4, 0x90
	.type	csprng_get_int,@function
csprng_get_int:                         # @csprng_get_int
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB2_3
# %bb.1:
	movq	%rdi, %rcx
	movq	%rsp, %rdi
	movl	$1, %esi
	movl	$8, %edx
	callq	fread
	cmpq	$8, %rax
	jne	.LBB2_3
# %bb.2:
	movq	(%rsp), %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB2_3:
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	csprng_get_int, .Lfunc_end2-csprng_get_int
	.cfi_endproc
                                        # -- End function
	.globl	csprng_destroy          # -- Begin function csprng_destroy
	.p2align	4, 0x90
	.type	csprng_destroy,@function
csprng_destroy:                         # @csprng_destroy
	.cfi_startproc
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB3_2
# %bb.1:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	fclose
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB3_2:
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	csprng_destroy, .Lfunc_end3-csprng_destroy
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/dev/urandom"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.section	".linker-options","e",@llvm_linker_options
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
