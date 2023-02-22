	.text
	.file	"yao.cpp"
	.globl	_ZN9YaoCipherC2Ev       # -- Begin function _ZN9YaoCipherC2Ev
	.p2align	4, 0x90
	.type	_ZN9YaoCipherC2Ev,@function
_ZN9YaoCipherC2Ev:                      # @_ZN9YaoCipherC2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$1544, %rsp             # imm = 0x608
	.cfi_def_cfa_offset 1568
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	3240(%rdi), %r14
	callq	csprng_create
	movq	%rax, 3240(%rbx)
	movq	%r14, 3248(%rbx)
	movq	$0, 3256(%rbx)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.3:
.Ltmp0:
	movl	$64, %edi
	callq	_Znam
.Ltmp1:
# %bb.4:
	movq	%rax, 3264(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
.Ltmp3:
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t
.Ltmp4:
# %bb.5:
	leaq	16(%rbx), %rdi
	leaq	8(%rsp), %rsi
	movl	$1536, %edx             # imm = 0x600
	callq	memcpy
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	16(%rbx,%rax), %ecx
	movb	%al, 1552(%rbx,%rcx)
	movzbl	17(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 1552(%rbx,%rcx)
	movzbl	18(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 1552(%rbx,%rcx)
	movzbl	19(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 1552(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_6
# %bb.7:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	272(%rbx,%rax), %ecx
	movb	%al, 1808(%rbx,%rcx)
	movzbl	273(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 1808(%rbx,%rcx)
	movzbl	274(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 1808(%rbx,%rcx)
	movzbl	275(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 1808(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_8
# %bb.9:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movzbl	528(%rbx,%rax), %ecx
	movb	%al, 2064(%rbx,%rcx)
	movzbl	529(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 2064(%rbx,%rcx)
	movzbl	530(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 2064(%rbx,%rcx)
	movzbl	531(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 2064(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_10
# %bb.11:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movzbl	784(%rbx,%rax), %ecx
	movb	%al, 2320(%rbx,%rcx)
	movzbl	785(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 2320(%rbx,%rcx)
	movzbl	786(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 2320(%rbx,%rcx)
	movzbl	787(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 2320(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_12
# %bb.13:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movzbl	1040(%rbx,%rax), %ecx
	movb	%al, 2576(%rbx,%rcx)
	movzbl	1041(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 2576(%rbx,%rcx)
	movzbl	1042(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 2576(%rbx,%rcx)
	movzbl	1043(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 2576(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_14
# %bb.15:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movzbl	1296(%rbx,%rax), %ecx
	movb	%al, 2832(%rbx,%rcx)
	movzbl	1297(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 2832(%rbx,%rcx)
	movzbl	1298(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 2832(%rbx,%rcx)
	movzbl	1299(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 2832(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_16
# %bb.17:
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
.Ltmp6:
	leaq	8(%rsp), %rdi
	callq	_Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t
.Ltmp7:
# %bb.18:
	movups	8(%rsp), %xmm0
	movups	24(%rsp), %xmm1
	movups	40(%rsp), %xmm2
	movups	%xmm2, 3120(%rbx)
	movups	%xmm1, 3104(%rbx)
	movups	%xmm0, 3088(%rbx)
	movzbl	3088(%rbx), %eax
	movb	$0, 3136(%rbx,%rax)
	movzbl	3089(%rbx), %eax
	movb	$1, 3136(%rbx,%rax)
	movzbl	3090(%rbx), %eax
	movb	$2, 3136(%rbx,%rax)
	movzbl	3091(%rbx), %eax
	movb	$3, 3136(%rbx,%rax)
	movzbl	3092(%rbx), %eax
	movb	$4, 3136(%rbx,%rax)
	movzbl	3093(%rbx), %eax
	movb	$5, 3136(%rbx,%rax)
	movzbl	3094(%rbx), %eax
	movb	$6, 3136(%rbx,%rax)
	movzbl	3095(%rbx), %eax
	movb	$7, 3136(%rbx,%rax)
	movzbl	3096(%rbx), %eax
	movb	$8, 3136(%rbx,%rax)
	movzbl	3097(%rbx), %eax
	movb	$9, 3136(%rbx,%rax)
	movzbl	3098(%rbx), %eax
	movb	$10, 3136(%rbx,%rax)
	movzbl	3099(%rbx), %eax
	movb	$11, 3136(%rbx,%rax)
	movzbl	3100(%rbx), %eax
	movb	$12, 3136(%rbx,%rax)
	movzbl	3101(%rbx), %eax
	movb	$13, 3136(%rbx,%rax)
	movzbl	3102(%rbx), %eax
	movb	$14, 3136(%rbx,%rax)
	movzbl	3103(%rbx), %eax
	movb	$15, 3136(%rbx,%rax)
	movzbl	3104(%rbx), %eax
	movb	$0, 3152(%rbx,%rax)
	movzbl	3105(%rbx), %eax
	movb	$1, 3152(%rbx,%rax)
	movzbl	3106(%rbx), %eax
	movb	$2, 3152(%rbx,%rax)
	movzbl	3107(%rbx), %eax
	movb	$3, 3152(%rbx,%rax)
	movzbl	3108(%rbx), %eax
	movb	$4, 3152(%rbx,%rax)
	movzbl	3109(%rbx), %eax
	movb	$5, 3152(%rbx,%rax)
	movzbl	3110(%rbx), %eax
	movb	$6, 3152(%rbx,%rax)
	movzbl	3111(%rbx), %eax
	movb	$7, 3152(%rbx,%rax)
	movzbl	3112(%rbx), %eax
	movb	$8, 3152(%rbx,%rax)
	movzbl	3113(%rbx), %eax
	movb	$9, 3152(%rbx,%rax)
	movzbl	3114(%rbx), %eax
	movb	$10, 3152(%rbx,%rax)
	movzbl	3115(%rbx), %eax
	movb	$11, 3152(%rbx,%rax)
	movzbl	3116(%rbx), %eax
	movb	$12, 3152(%rbx,%rax)
	movzbl	3117(%rbx), %eax
	movb	$13, 3152(%rbx,%rax)
	movzbl	3118(%rbx), %eax
	movb	$14, 3152(%rbx,%rax)
	movzbl	3119(%rbx), %eax
	movb	$15, 3152(%rbx,%rax)
	movzbl	3120(%rbx), %eax
	movb	$0, 3168(%rbx,%rax)
	movzbl	3121(%rbx), %eax
	movb	$1, 3168(%rbx,%rax)
	movzbl	3122(%rbx), %eax
	movb	$2, 3168(%rbx,%rax)
	movzbl	3123(%rbx), %eax
	movb	$3, 3168(%rbx,%rax)
	movzbl	3124(%rbx), %eax
	movb	$4, 3168(%rbx,%rax)
	movzbl	3125(%rbx), %eax
	movb	$5, 3168(%rbx,%rax)
	movzbl	3126(%rbx), %eax
	movb	$6, 3168(%rbx,%rax)
	movzbl	3127(%rbx), %eax
	movb	$7, 3168(%rbx,%rax)
	movzbl	3128(%rbx), %eax
	movb	$8, 3168(%rbx,%rax)
	movzbl	3129(%rbx), %eax
	movb	$9, 3168(%rbx,%rax)
	movzbl	3130(%rbx), %eax
	movb	$10, 3168(%rbx,%rax)
	movzbl	3131(%rbx), %eax
	movb	$11, 3168(%rbx,%rax)
	movzbl	3132(%rbx), %eax
	movb	$12, 3168(%rbx,%rax)
	movzbl	3133(%rbx), %eax
	movb	$13, 3168(%rbx,%rax)
	movzbl	3134(%rbx), %eax
	movb	$14, 3168(%rbx,%rax)
	movzbl	3135(%rbx), %eax
	movb	$15, 3168(%rbx,%rax)
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	callq	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	movq	%rax, 3184(%rbx)
	movq	%rdx, 3192(%rbx)
	movzbl	%al, %ecx
	movb	$0, 3200(%rbx,%rcx)
	movzbl	%ah, %ecx
	movb	$1, 3200(%rbx,%rcx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	movb	$2, 3200(%rbx,%rcx)
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	$3, 3200(%rbx,%rcx)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movzbl	%cl, %ecx
	movb	$4, 3200(%rbx,%rcx)
	movq	%rax, %rcx
	shrq	$40, %rcx
	movzbl	%cl, %ecx
	movb	$5, 3200(%rbx,%rcx)
	movq	%rax, %rcx
	shrq	$48, %rcx
	movzbl	%cl, %ecx
	movb	$6, 3200(%rbx,%rcx)
	shrq	$56, %rax
	movb	$7, 3200(%rbx,%rax)
	movzbl	%dl, %eax
	movb	$8, 3200(%rbx,%rax)
	movzbl	%dh, %eax
	movb	$9, 3200(%rbx,%rax)
	movl	%edx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	movb	$10, 3200(%rbx,%rax)
	movl	%edx, %eax
	shrl	$24, %eax
	movb	$11, 3200(%rbx,%rax)
	movq	%rdx, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	movb	$12, 3200(%rbx,%rax)
	movq	%rdx, %rax
	shrq	$40, %rax
	movzbl	%al, %eax
	movb	$13, 3200(%rbx,%rax)
	movq	%rdx, %rax
	shrq	$48, %rax
	movzbl	%al, %eax
	movb	$14, 3200(%rbx,%rax)
	shrq	$56, %rdx
	movb	$15, 3200(%rbx,%rdx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
.Ltmp9:
	leaq	8(%rsp), %rdi
	callq	_Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t
.Ltmp10:
# %bb.19:
	movq	24(%rsp), %rax
	movq	%rax, 3232(%rbx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, 3216(%rbx)
	movl	3216(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB0_23
# %bb.20:
	movb	8(%rsp), %al
	movb	%al, 9(%rsp)
	movb	%dil, 8(%rsp)
	leaq	10(%rsp), %r8
	cmpb	%sil, %dil
	jb	.LBB0_32
.LBB0_25:
	movb	9(%rsp), %dl
	movq	%r8, %rax
	cmpb	%sil, %dl
	jae	.LBB0_28
# %bb.26:
	leaq	10(%rsp), %rax
	.p2align	4, 0x90
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movb	%dl, (%rax)
	movzbl	-2(%rax), %edx
	addq	$-1, %rax
	cmpb	%sil, %dl
	jb	.LBB0_27
.LBB0_28:
	movb	%sil, (%rax)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	leaq	11(%rsp), %rax
	cmpb	%sil, %dl
	ja	.LBB0_38
.LBB0_34:
	movb	10(%rsp), %cl
	movq	%rax, %rsi
	cmpb	%cl, %dl
	jbe	.LBB0_37
# %bb.35:
	leaq	11(%rsp), %rsi
	.p2align	4, 0x90
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movzbl	-2(%rsi), %ecx
	addq	$-1, %rsi
	cmpb	%cl, %dl
	ja	.LBB0_36
.LBB0_37:
	movb	%dl, (%rsi)
	jmp	.LBB0_39
.LBB0_23:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	leaq	10(%rsp), %r8
	cmpb	%sil, %dil
	jae	.LBB0_25
.LBB0_32:
	shrl	$24, %edx
	movzwl	8(%rsp), %eax
	movw	%ax, 9(%rsp)
	movb	%sil, 8(%rsp)
	leaq	11(%rsp), %rax
	cmpb	%sil, %dl
	jbe	.LBB0_34
.LBB0_38:
	movzwl	8(%rsp), %esi
	movb	10(%rsp), %cl
	movb	%cl, (%rax)
	movw	%si, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB0_39:
	movl	3220(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB0_40
# %bb.41:
	movb	8(%rsp), %cl
	movb	%cl, 9(%rsp)
	movb	%dil, 8(%rsp)
	cmpb	%sil, %dil
	jb	.LBB0_47
.LBB0_43:
	movb	9(%rsp), %cl
	movq	%r8, %rdx
	cmpb	%sil, %cl
	jae	.LBB0_46
# %bb.44:
	leaq	10(%rsp), %rdx
	.p2align	4, 0x90
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rdx)
	movzbl	-2(%rdx), %ecx
	addq	$-1, %rdx
	cmpb	%sil, %cl
	jb	.LBB0_45
.LBB0_46:
	movb	%sil, (%rdx)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	cmpb	%sil, %dl
	ja	.LBB0_53
.LBB0_49:
	movb	10(%rsp), %cl
	movq	%rax, %rsi
	cmpb	%cl, %dl
	jbe	.LBB0_52
# %bb.50:
	leaq	11(%rsp), %rsi
	.p2align	4, 0x90
.LBB0_51:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movzbl	-2(%rsi), %ecx
	addq	$-1, %rsi
	cmpb	%cl, %dl
	ja	.LBB0_51
.LBB0_52:
	movb	%dl, (%rsi)
	jmp	.LBB0_54
.LBB0_40:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	cmpb	%sil, %dil
	jae	.LBB0_43
.LBB0_47:
	shrl	$24, %edx
	movzwl	8(%rsp), %ecx
	movw	%cx, 9(%rsp)
	movb	%sil, 8(%rsp)
	cmpb	%sil, %dl
	jbe	.LBB0_49
.LBB0_53:
	movzwl	8(%rsp), %esi
	movb	10(%rsp), %cl
	movb	%cl, (%rax)
	movw	%si, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB0_54:
	movl	3224(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB0_55
# %bb.56:
	movb	8(%rsp), %cl
	movb	%cl, 9(%rsp)
	movb	%dil, 8(%rsp)
	cmpb	%sil, %dil
	jb	.LBB0_62
.LBB0_58:
	movb	9(%rsp), %cl
	movq	%r8, %rdx
	cmpb	%sil, %cl
	jae	.LBB0_61
# %bb.59:
	leaq	10(%rsp), %rdx
	.p2align	4, 0x90
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rdx)
	movzbl	-2(%rdx), %ecx
	addq	$-1, %rdx
	cmpb	%sil, %cl
	jb	.LBB0_60
.LBB0_61:
	movb	%sil, (%rdx)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	cmpb	%sil, %dl
	ja	.LBB0_68
.LBB0_64:
	movb	10(%rsp), %cl
	movq	%rax, %rsi
	cmpb	%cl, %dl
	jbe	.LBB0_67
# %bb.65:
	leaq	11(%rsp), %rsi
	.p2align	4, 0x90
.LBB0_66:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movzbl	-2(%rsi), %ecx
	addq	$-1, %rsi
	cmpb	%cl, %dl
	ja	.LBB0_66
.LBB0_67:
	movb	%dl, (%rsi)
	jmp	.LBB0_69
.LBB0_55:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	cmpb	%sil, %dil
	jae	.LBB0_58
.LBB0_62:
	shrl	$24, %edx
	movzwl	8(%rsp), %ecx
	movw	%cx, 9(%rsp)
	movb	%sil, 8(%rsp)
	cmpb	%sil, %dl
	jbe	.LBB0_64
.LBB0_68:
	movzwl	8(%rsp), %esi
	movb	10(%rsp), %cl
	movb	%cl, (%rax)
	movw	%si, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB0_69:
	movl	3228(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB0_70
# %bb.71:
	movb	8(%rsp), %cl
	movb	%cl, 9(%rsp)
	movb	%dil, 8(%rsp)
	cmpb	%sil, %dil
	jb	.LBB0_77
.LBB0_73:
	movb	9(%rsp), %cl
	movq	%r8, %rdx
	cmpb	%sil, %cl
	jae	.LBB0_76
# %bb.74:
	leaq	10(%rsp), %rdx
	.p2align	4, 0x90
.LBB0_75:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rdx)
	movzbl	-2(%rdx), %ecx
	addq	$-1, %rdx
	cmpb	%sil, %cl
	jb	.LBB0_75
.LBB0_76:
	movb	%sil, (%rdx)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	cmpb	%sil, %dl
	ja	.LBB0_83
.LBB0_79:
	movb	10(%rsp), %cl
	movq	%rax, %rsi
	cmpb	%cl, %dl
	jbe	.LBB0_82
# %bb.80:
	leaq	11(%rsp), %rsi
	.p2align	4, 0x90
.LBB0_81:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movzbl	-2(%rsi), %ecx
	addq	$-1, %rsi
	cmpb	%cl, %dl
	ja	.LBB0_81
.LBB0_82:
	movb	%dl, (%rsi)
	jmp	.LBB0_84
.LBB0_70:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	cmpb	%sil, %dil
	jae	.LBB0_73
.LBB0_77:
	shrl	$24, %edx
	movzwl	8(%rsp), %ecx
	movw	%cx, 9(%rsp)
	movb	%sil, 8(%rsp)
	cmpb	%sil, %dl
	jbe	.LBB0_79
.LBB0_83:
	movzwl	8(%rsp), %esi
	movb	10(%rsp), %cl
	movb	%cl, (%rax)
	movw	%si, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB0_84:
	movl	3232(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB0_85
# %bb.86:
	movb	8(%rsp), %cl
	movb	%cl, 9(%rsp)
	movb	%dil, 8(%rsp)
	cmpb	%sil, %dil
	jb	.LBB0_92
.LBB0_88:
	movb	9(%rsp), %cl
	movq	%r8, %rdx
	cmpb	%sil, %cl
	jae	.LBB0_91
# %bb.89:
	leaq	10(%rsp), %rdx
	.p2align	4, 0x90
.LBB0_90:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rdx)
	movzbl	-2(%rdx), %ecx
	addq	$-1, %rdx
	cmpb	%sil, %cl
	jb	.LBB0_90
.LBB0_91:
	movb	%sil, (%rdx)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	cmpb	%sil, %dl
	ja	.LBB0_98
.LBB0_94:
	movb	10(%rsp), %cl
	movq	%rax, %rsi
	cmpb	%cl, %dl
	jbe	.LBB0_97
# %bb.95:
	leaq	11(%rsp), %rsi
	.p2align	4, 0x90
.LBB0_96:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movzbl	-2(%rsi), %ecx
	addq	$-1, %rsi
	cmpb	%cl, %dl
	ja	.LBB0_96
.LBB0_97:
	movb	%dl, (%rsi)
	jmp	.LBB0_99
.LBB0_85:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	cmpb	%sil, %dil
	jae	.LBB0_88
.LBB0_92:
	shrl	$24, %edx
	movzwl	8(%rsp), %ecx
	movw	%cx, 9(%rsp)
	movb	%sil, 8(%rsp)
	cmpb	%sil, %dl
	jbe	.LBB0_94
.LBB0_98:
	movzwl	8(%rsp), %esi
	movb	10(%rsp), %cl
	movb	%cl, (%rax)
	movw	%si, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB0_99:
	movl	3236(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB0_100
# %bb.101:
	movb	8(%rsp), %cl
	movb	%cl, 9(%rsp)
	movb	%dil, 8(%rsp)
	cmpb	%sil, %dil
	jb	.LBB0_107
.LBB0_103:
	movb	9(%rsp), %cl
	cmpb	%sil, %cl
	jae	.LBB0_106
# %bb.104:
	leaq	10(%rsp), %r8
	.p2align	4, 0x90
.LBB0_105:                              # =>This Inner Loop Header: Depth=1
	movb	%cl, (%r8)
	movzbl	-2(%r8), %ecx
	addq	$-1, %r8
	cmpb	%sil, %cl
	jb	.LBB0_105
.LBB0_106:
	movb	%sil, (%r8)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	cmpb	%sil, %dl
	ja	.LBB0_113
.LBB0_109:
	movb	10(%rsp), %cl
	cmpb	%cl, %dl
	jbe	.LBB0_112
# %bb.110:
	leaq	11(%rsp), %rax
	.p2align	4, 0x90
.LBB0_111:                              # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rax)
	movzbl	-2(%rax), %ecx
	addq	$-1, %rax
	cmpb	%cl, %dl
	ja	.LBB0_111
.LBB0_112:
	movb	%dl, (%rax)
	addq	$1544, %rsp             # imm = 0x608
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_100:
	.cfi_def_cfa_offset 1568
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	cmpb	%sil, %dil
	jae	.LBB0_103
.LBB0_107:
	shrl	$24, %edx
	movzwl	8(%rsp), %ecx
	movw	%cx, 9(%rsp)
	movb	%sil, 8(%rsp)
	cmpb	%sil, %dl
	jbe	.LBB0_109
.LBB0_113:
	movzwl	8(%rsp), %ecx
	movb	10(%rsp), %bl
	movb	%bl, (%rax)
	movw	%cx, -2(%rax)
	movb	%dl, 8(%rsp)
	addq	$1544, %rsp             # imm = 0x608
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:
	.cfi_def_cfa_offset 1568
	movl	$16, %edi
	callq	__cxa_allocate_exception
	movq	%rax, %r14
.Ltmp15:
	movl	$.L.str, %esi
	movq	%rax, %rdi
	callq	_ZN9duthomhas6csprng9exceptionC2EPKc
.Ltmp16:
# %bb.2:
	movl	$_ZTIN9duthomhas6csprng9exceptionE, %esi
	movl	$_ZNSt13runtime_errorD2Ev, %edx
	movq	%r14, %rdi
	callq	__cxa_throw
.LBB0_115:
.Ltmp17:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__cxa_free_exception
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB0_22:
.Ltmp11:
	jmp	.LBB0_30
.LBB0_21:
.Ltmp8:
	jmp	.LBB0_30
.LBB0_117:
.Ltmp5:
	jmp	.LBB0_30
.LBB0_29:
.Ltmp2:
.LBB0_30:
	movq	%rax, %rbx
	movq	(%r14), %rdi
.Ltmp12:
	callq	csprng_destroy
.Ltmp13:
# %bb.31:
	movq	%rax, (%r14)
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB0_118:
.Ltmp14:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end0:
	.size	_ZN9YaoCipherC2Ev, .Lfunc_end0-_ZN9YaoCipherC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0   #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0   # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0          #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0   #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0   # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3          #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0   #     jumps to .Ltmp5
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0   # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp4          #   Call between .Ltmp4 and .Ltmp6
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0   # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6          #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0   #     jumps to .Ltmp8
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0   # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9         #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0  #     jumps to .Ltmp11
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0  # >> Call Site 7 <<
	.uleb128 .Ltmp15-.Ltmp10        #   Call between .Ltmp10 and .Ltmp15
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0  # >> Call Site 8 <<
	.uleb128 .Ltmp16-.Ltmp15        #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0  #     jumps to .Ltmp17
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0  # >> Call Site 9 <<
	.uleb128 .Ltmp12-.Ltmp16        #   Call between .Ltmp16 and .Ltmp12
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0  # >> Call Site 10 <<
	.uleb128 .Ltmp13-.Ltmp12        #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0  #     jumps to .Ltmp14
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp13-.Lfunc_begin0  # >> Call Site 11 <<
	.uleb128 .Lfunc_end0-.Ltmp13    #   Call between .Ltmp13 and .Lfunc_end0
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end0:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t,"axG",@progbits,_Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t,comdat
	.weak	_Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t # -- Begin function _Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t
	.p2align	4, 0x90
	.type	_Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t,@function
_Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t: # @_Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
	.cfi_def_cfa_offset 368
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%rsi, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	leaq	16(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rbx
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbx
	leaq	56(%rsp), %rdi
	movl	$.L__const._Z13gen_rnd_arrayILi256EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memcpy
	movl	$255, %ebp
	movq	%rsp, %r14
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rbp
	movzbl	56(%rsp,%rdx), %eax
	movzbl	56(%rsp,%rbp), %ecx
	movb	%cl, 56(%rsp,%rdx)
	movb	%al, 56(%rsp,%rbp)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rbx
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbx
	cmpq	$1, %rbp
	leaq	-1(%rbp), %rbp
	ja	.LBB1_1
# %bb.2:
	leaq	56(%rsp), %rbx
	movl	$256, %edx              # imm = 0x100
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	callq	memcpy
	leaq	32(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %r14
	movq	%rdx, %r12
	xorq	%r13, %r14
	movq	%r14, 40(%rsp)
	xorq	%r15, %r12
	movq	%r12, 32(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	16(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rbp
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbp
	movl	$.L__const._Z13gen_rnd_arrayILi256EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rbx, %rdi
	callq	memcpy
	movl	$255, %ebx
	movq	%rsp, %r15
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rax
	xorl	%edx, %edx
	divq	%rbx
	movzbl	56(%rsp,%rdx), %eax
	movzbl	56(%rsp,%rbx), %ecx
	movb	%cl, 56(%rsp,%rdx)
	movb	%al, 56(%rsp,%rbx)
	movl	$16, %esi
	movq	%r15, %rdi
	callq	XXH3_128bits
	movq	%rax, %rbp
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbp
	cmpq	$1, %rbx
	leaq	-1(%rbx), %rbx
	ja	.LBB1_3
# %bb.4:
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	256(%rax), %rdi
	leaq	56(%rsp), %rbp
	movl	$256, %edx              # imm = 0x100
	movq	%rbp, %rsi
	callq	memcpy
	leaq	32(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %r13
	movq	%rdx, %r15
	xorq	%r14, %r13
	movq	%r13, 40(%rsp)
	xorq	%r12, %r15
	movq	%r15, 32(%rsp)
	movq	%r15, 16(%rsp)
	movq	%r13, 24(%rsp)
	leaq	16(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rbx
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbx
	movl	$.L__const._Z13gen_rnd_arrayILi256EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rbp, %rdi
	callq	memcpy
	movl	$255, %ebp
	movq	%rsp, %r14
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rbp
	movzbl	56(%rsp,%rdx), %eax
	movzbl	56(%rsp,%rbp), %ecx
	movb	%cl, 56(%rsp,%rdx)
	movb	%al, 56(%rsp,%rbp)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rbx
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbx
	cmpq	$1, %rbp
	leaq	-1(%rbp), %rbp
	ja	.LBB1_5
# %bb.6:
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	512(%rax), %rdi
	leaq	56(%rsp), %rbx
	movl	$256, %edx              # imm = 0x100
	movq	%rbx, %rsi
	callq	memcpy
	leaq	32(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %r14
	movq	%rdx, %r12
	xorq	%r13, %r14
	movq	%r14, 40(%rsp)
	xorq	%r15, %r12
	movq	%r12, 32(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	16(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rbp
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbp
	movl	$.L__const._Z13gen_rnd_arrayILi256EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rbx, %rdi
	callq	memcpy
	movl	$255, %ebx
	movq	%rsp, %r15
	.p2align	4, 0x90
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rax
	xorl	%edx, %edx
	divq	%rbx
	movzbl	56(%rsp,%rdx), %eax
	movzbl	56(%rsp,%rbx), %ecx
	movb	%cl, 56(%rsp,%rdx)
	movb	%al, 56(%rsp,%rbx)
	movl	$16, %esi
	movq	%r15, %rdi
	callq	XXH3_128bits
	movq	%rax, %rbp
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbp
	cmpq	$1, %rbx
	leaq	-1(%rbx), %rbx
	ja	.LBB1_7
# %bb.8:
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	768(%rax), %rdi
	leaq	56(%rsp), %rbp
	movl	$256, %edx              # imm = 0x100
	movq	%rbp, %rsi
	callq	memcpy
	leaq	32(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %r13
	movq	%rdx, %r15
	xorq	%r14, %r13
	movq	%r13, 40(%rsp)
	xorq	%r12, %r15
	movq	%r15, 32(%rsp)
	movq	%r15, 16(%rsp)
	movq	%r13, 24(%rsp)
	leaq	16(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rbx
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbx
	movl	$.L__const._Z13gen_rnd_arrayILi256EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rbp, %rdi
	callq	memcpy
	movl	$255, %ebp
	movq	%rsp, %r14
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rbp
	movzbl	56(%rsp,%rdx), %eax
	movzbl	56(%rsp,%rbp), %ecx
	movb	%cl, 56(%rsp,%rdx)
	movb	%al, 56(%rsp,%rbp)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rbx
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbx
	cmpq	$1, %rbp
	leaq	-1(%rbp), %rbp
	ja	.LBB1_9
# %bb.10:
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	1024(%rax), %rdi
	leaq	56(%rsp), %rbx
	movl	$256, %edx              # imm = 0x100
	movq	%rbx, %rsi
	callq	memcpy
	leaq	32(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	xorq	%r13, %rax
	movq	%rax, 40(%rsp)
	xorq	%r15, %rdx
	movq	%rdx, 32(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	leaq	16(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rbp
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbp
	movl	$.L__const._Z13gen_rnd_arrayILi256EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rbx, %rdi
	callq	memcpy
	movl	$255, %ebx
	movq	%rsp, %r14
	.p2align	4, 0x90
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rax
	xorl	%edx, %edx
	divq	%rbx
	movzbl	56(%rsp,%rdx), %eax
	movzbl	56(%rsp,%rbx), %ecx
	movb	%cl, 56(%rsp,%rdx)
	movb	%al, 56(%rsp,%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rbp
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rbp
	cmpq	$1, %rbx
	leaq	-1(%rbx), %rbx
	ja	.LBB1_11
# %bb.12:
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	addq	$1280, %rdi             # imm = 0x500
	leaq	56(%rsp), %rsi
	movl	$256, %edx              # imm = 0x100
	callq	memcpy
	movq	%rbx, %rax
	addq	$312, %rsp              # imm = 0x138
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t, .Lfunc_end1-_Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t,"axG",@progbits,_Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t,comdat
	.weak	_Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t # -- Begin function _Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t
	.p2align	4, 0x90
	.type	_Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t,@function
_Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t: # @_Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	movq	%rax, (%r13)
	movq	%rdx, 8(%r13)
	leaq	8(%rsp), %rdi
	movl	$16, %esi
	movq	%rdi, %rbp
	callq	XXH3_128bits
	movq	%rax, %rbx
	movq	%rdx, %r14
	xorq	%r15, %rbx
	movq	%rbx, 16(%rsp)
	xorq	%r12, %r14
	movq	%r14, 8(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	movq	%rax, 16(%r13)
	movq	%rdx, 24(%r13)
	movl	$16, %esi
	movq	%rbp, %r12
	movq	%rbp, %rdi
	callq	XXH3_128bits
	movq	%rax, %rbp
	movq	%rdx, %r15
	xorq	%rbx, %rbp
	movq	%rbp, 16(%rsp)
	xorq	%r14, %r15
	movq	%r15, 8(%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	movq	%rax, 32(%r13)
	movq	%rdx, 40(%r13)
	movl	$16, %esi
	movq	%r12, %rdi
	callq	XXH3_128bits
	movq	%rax, %rbx
	movq	%rdx, %r14
	xorq	%rbp, %rbx
	movq	%rbx, 16(%rsp)
	xorq	%r15, %r14
	movq	%r14, 8(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	movq	%rax, 48(%r13)
	movq	%rdx, 56(%r13)
	movl	$16, %esi
	movq	%r12, %rdi
	callq	XXH3_128bits
	movq	%rax, %rbp
	movq	%rdx, %r15
	xorq	%rbx, %rbp
	movq	%rbp, 16(%rsp)
	xorq	%r14, %r15
	movq	%r15, 8(%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	movq	%rax, 64(%r13)
	movq	%rdx, 72(%r13)
	movl	$16, %esi
	movq	%r12, %rdi
	callq	XXH3_128bits
	movq	%rdx, %rdi
	xorq	%rbp, %rax
	xorq	%r15, %rdi
	movq	%rax, %rsi
	callq	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	movq	%rax, 80(%r13)
	movq	%rdx, 88(%r13)
	movq	%r13, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t, .Lfunc_end2-_Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t
	.cfi_endproc
                                        # -- End function
	.section	.text._Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t,"axG",@progbits,_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t,comdat
	.weak	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t # -- Begin function _Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	.p2align	4, 0x90
	.type	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t,@function
_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t: # @_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, 40(%rsp)
	movq	%rsi, 48(%rsp)
	leaq	40(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movups	.L__const._Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movabsq	$-8608480567731124087, %rdx # imm = 0x8888888888888889
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rax,%rax,2), %rax
	subq	%rax, %rcx
	movq	%rsp, %r14
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	$15, (%rcx)
	movb	%al, 15(%rsp)
	leaq	24(%rsp), %rbx
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	%rax
	movabsq	$5270498306774157605, %rdx # imm = 0x4924924924924925
	mulq	%rdx
	shrq	%rdx
	movq	%rdx, %rax
	shlq	$4, %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	addq	%rdx, %rsi
	addq	%rcx, %rsi
	orq	%r14, %rsi
	movb	(%rsi), %al
	movb	14(%rsp), %cl
	movb	%cl, (%rsi)
	movb	%al, 14(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movabsq	$5675921253449092805, %rdx # imm = 0x4EC4EC4EC4EC4EC5
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$2, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdx,%rax,4), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	13(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 13(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-6148914691236517205, %r15 # imm = 0xAAAAAAAAAAAAAAAB
	movq	%rcx, %rax
	mulq	%r15
	shrq	%rdx
	andq	$-4, %rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	12(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 12(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movabsq	$3353953467947191203, %rdx # imm = 0x2E8BA2E8BA2E8BA3
	movq	%rcx, %rax
	mulq	%rdx
	shrq	%rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rdx,%rax,2), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	11(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 11(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-3689348814741910323, %r12 # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rcx, %rax
	mulq	%r12
	shrq	$2, %rdx
	andq	$-2, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	10(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 10(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-2049638230412172401, %rdx # imm = 0xE38E38E38E38E38F
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,8), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	9(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 9(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorl	%edx, %eax
	andl	$7, %eax
	movb	(%rsp,%rax), %cl
	movb	8(%rsp), %dl
	movb	%dl, (%rsp,%rax)
	movb	%cl, 8(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movabsq	$2635249153387078803, %rdx # imm = 0x2492492492492493
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$2, %rax
	leaq	(,%rax,8), %rdx
	subq	%rdx, %rax
	addq	%rcx, %rax
	orq	%r14, %rax
	movb	(%rax), %cl
	movb	7(%rsp), %dl
	movb	%dl, (%rax)
	movb	%cl, 7(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%r15
	shrq	%rdx
	andq	$-2, %rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	6(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 6(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%r12
	shrq	$2, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	5(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 5(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorl	%edx, %eax
	andl	$3, %eax
	movb	(%rsp,%rax), %cl
	movb	4(%rsp), %dl
	movb	%dl, (%rsp,%rax)
	movb	%cl, 4(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%r15
	shrq	%rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	3(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 3(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	xorl	%edx, %eax
	andl	$1, %eax
	movb	(%rsp,%rax), %cl
	movb	2(%rsp), %dl
	movb	%dl, (%rsp,%rax)
	movb	%cl, 2(%rsp)
	movb	(%rsp), %al
	movb	1(%rsp), %cl
	movb	%cl, (%rsp)
	movb	%al, 1(%rsp)
	movq	(%rsp), %rax
	movq	8(%rsp), %rdx
	addq	$56, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t, .Lfunc_end3-_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t,"axG",@progbits,_Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t,comdat
	.weak	_Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t # -- Begin function _Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t
	.p2align	4, 0x90
	.type	_Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t,@function
_Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t: # @_Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$128, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%rsi, 96(%rsp)
	movq	%rdx, 104(%rsp)
	leaq	96(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rbx
	movq	%rdx, %r13
	movq	%rax, 112(%rsp)
	movq	%rdx, 120(%rsp)
	leaq	112(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_Z14gen_bit_tablesILi24EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t
	movq	%rax, 72(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rbx, 56(%rsp)
	movq	%r13, 64(%rsp)
	leaq	56(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rax
	movups	.L__const._Z13gen_rnd_arrayILi25EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	.L__const._Z13gen_rnd_arrayILi25EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array+9(%rip), %xmm0
	movups	%xmm0, 25(%rsp)
	movl	$24, %ebx
	movq	%rsp, %r13
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	divq	%rbx
	movzbl	16(%rsp,%rdx), %eax
	movzbl	16(%rsp,%rbx), %ecx
	movb	%cl, 16(%rsp,%rdx)
	movb	%al, 16(%rsp,%rbx)
	movl	$16, %esi
	movq	%r13, %rdi
	callq	XXH3_128bits
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rax
	cmpq	$1, %rbx
	leaq	-1(%rbx), %rbx
	ja	.LBB4_1
# %bb.2:
	movl	16(%rsp), %eax
	movl	%eax, 88(%rsp)
	movl	%eax, 16(%r12)
	movups	72(%rsp), %xmm0
	movups	%xmm0, (%r12)
	movq	%r15, 56(%rsp)
	movq	%r14, 64(%rsp)
	leaq	56(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rax
	movups	.L__const._Z13gen_rnd_arrayILi29EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	.L__const._Z13gen_rnd_arrayILi29EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array+13(%rip), %xmm0
	movups	%xmm0, 29(%rsp)
	movl	$28, %ebx
	movq	%rsp, %r14
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	divq	%rbx
	movzbl	16(%rsp,%rdx), %eax
	movzbl	16(%rsp,%rbx), %ecx
	movb	%cl, 16(%rsp,%rdx)
	movb	%al, 16(%rsp,%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	xorq	%rdx, %rax
	cmpq	$1, %rbx
	leaq	-1(%rbx), %rbx
	ja	.LBB4_3
# %bb.4:
	movl	16(%rsp), %eax
	movl	%eax, 20(%r12)
	movq	%r12, %rax
	addq	$128, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t, .Lfunc_end4-_Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN9YaoCipherC2E13XXH128_hash_t # -- Begin function _ZN9YaoCipherC2E13XXH128_hash_t
	.p2align	4, 0x90
	.type	_ZN9YaoCipherC2E13XXH128_hash_t,@function
_ZN9YaoCipherC2E13XXH128_hash_t:        # @_ZN9YaoCipherC2E13XXH128_hash_t
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$1544, %rsp             # imm = 0x608
	.cfi_def_cfa_offset 1584
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	3240(%rdi), %r12
	callq	csprng_create
	movq	%rax, 3240(%rbx)
	movq	%r12, 3248(%rbx)
	movq	$0, 3256(%rbx)
	testq	%rax, %rax
	je	.LBB5_1
# %bb.3:
.Ltmp18:
	movl	$64, %edi
	callq	_Znam
.Ltmp19:
# %bb.4:
	movq	%rax, 3264(%rbx)
	movq	%r15, (%rbx)
	movq	%r14, 8(%rbx)
.Ltmp21:
	leaq	8(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_Z10gen_tablesILi256ELi6EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t
.Ltmp22:
# %bb.5:
	leaq	16(%rbx), %rdi
	leaq	8(%rsp), %rsi
	movl	$1536, %edx             # imm = 0x600
	callq	memcpy
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	16(%rbx,%rax), %ecx
	movb	%al, 1552(%rbx,%rcx)
	movzbl	17(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 1552(%rbx,%rcx)
	movzbl	18(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 1552(%rbx,%rcx)
	movzbl	19(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 1552(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB5_6
# %bb.7:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	272(%rbx,%rax), %ecx
	movb	%al, 1808(%rbx,%rcx)
	movzbl	273(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 1808(%rbx,%rcx)
	movzbl	274(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 1808(%rbx,%rcx)
	movzbl	275(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 1808(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB5_8
# %bb.9:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movzbl	528(%rbx,%rax), %ecx
	movb	%al, 2064(%rbx,%rcx)
	movzbl	529(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 2064(%rbx,%rcx)
	movzbl	530(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 2064(%rbx,%rcx)
	movzbl	531(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 2064(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB5_10
# %bb.11:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_12:                               # =>This Inner Loop Header: Depth=1
	movzbl	784(%rbx,%rax), %ecx
	movb	%al, 2320(%rbx,%rcx)
	movzbl	785(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 2320(%rbx,%rcx)
	movzbl	786(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 2320(%rbx,%rcx)
	movzbl	787(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 2320(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB5_12
# %bb.13:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_14:                               # =>This Inner Loop Header: Depth=1
	movzbl	1040(%rbx,%rax), %ecx
	movb	%al, 2576(%rbx,%rcx)
	movzbl	1041(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 2576(%rbx,%rcx)
	movzbl	1042(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 2576(%rbx,%rcx)
	movzbl	1043(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 2576(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB5_14
# %bb.15:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_16:                               # =>This Inner Loop Header: Depth=1
	movzbl	1296(%rbx,%rax), %ecx
	movb	%al, 2832(%rbx,%rcx)
	movzbl	1297(%rbx,%rax), %ecx
	leal	1(%rax), %edx
	movb	%dl, 2832(%rbx,%rcx)
	movzbl	1298(%rbx,%rax), %ecx
	leal	2(%rax), %edx
	movb	%dl, 2832(%rbx,%rcx)
	movzbl	1299(%rbx,%rax), %ecx
	leal	3(%rax), %edx
	movb	%dl, 2832(%rbx,%rcx)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB5_16
# %bb.17:
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
.Ltmp24:
	leaq	8(%rsp), %rdi
	callq	_Z10gen_tablesILi16ELi3EESt5arrayIS0_IhXT_EEXT0_EE13XXH128_hash_t
.Ltmp25:
# %bb.18:
	movups	8(%rsp), %xmm0
	movups	24(%rsp), %xmm1
	movups	40(%rsp), %xmm2
	movups	%xmm2, 3120(%rbx)
	movups	%xmm1, 3104(%rbx)
	movups	%xmm0, 3088(%rbx)
	movzbl	3088(%rbx), %eax
	movb	$0, 3136(%rbx,%rax)
	movzbl	3089(%rbx), %eax
	movb	$1, 3136(%rbx,%rax)
	movzbl	3090(%rbx), %eax
	movb	$2, 3136(%rbx,%rax)
	movzbl	3091(%rbx), %eax
	movb	$3, 3136(%rbx,%rax)
	movzbl	3092(%rbx), %eax
	movb	$4, 3136(%rbx,%rax)
	movzbl	3093(%rbx), %eax
	movb	$5, 3136(%rbx,%rax)
	movzbl	3094(%rbx), %eax
	movb	$6, 3136(%rbx,%rax)
	movzbl	3095(%rbx), %eax
	movb	$7, 3136(%rbx,%rax)
	movzbl	3096(%rbx), %eax
	movb	$8, 3136(%rbx,%rax)
	movzbl	3097(%rbx), %eax
	movb	$9, 3136(%rbx,%rax)
	movzbl	3098(%rbx), %eax
	movb	$10, 3136(%rbx,%rax)
	movzbl	3099(%rbx), %eax
	movb	$11, 3136(%rbx,%rax)
	movzbl	3100(%rbx), %eax
	movb	$12, 3136(%rbx,%rax)
	movzbl	3101(%rbx), %eax
	movb	$13, 3136(%rbx,%rax)
	movzbl	3102(%rbx), %eax
	movb	$14, 3136(%rbx,%rax)
	movzbl	3103(%rbx), %eax
	movb	$15, 3136(%rbx,%rax)
	movzbl	3104(%rbx), %eax
	movb	$0, 3152(%rbx,%rax)
	movzbl	3105(%rbx), %eax
	movb	$1, 3152(%rbx,%rax)
	movzbl	3106(%rbx), %eax
	movb	$2, 3152(%rbx,%rax)
	movzbl	3107(%rbx), %eax
	movb	$3, 3152(%rbx,%rax)
	movzbl	3108(%rbx), %eax
	movb	$4, 3152(%rbx,%rax)
	movzbl	3109(%rbx), %eax
	movb	$5, 3152(%rbx,%rax)
	movzbl	3110(%rbx), %eax
	movb	$6, 3152(%rbx,%rax)
	movzbl	3111(%rbx), %eax
	movb	$7, 3152(%rbx,%rax)
	movzbl	3112(%rbx), %eax
	movb	$8, 3152(%rbx,%rax)
	movzbl	3113(%rbx), %eax
	movb	$9, 3152(%rbx,%rax)
	movzbl	3114(%rbx), %eax
	movb	$10, 3152(%rbx,%rax)
	movzbl	3115(%rbx), %eax
	movb	$11, 3152(%rbx,%rax)
	movzbl	3116(%rbx), %eax
	movb	$12, 3152(%rbx,%rax)
	movzbl	3117(%rbx), %eax
	movb	$13, 3152(%rbx,%rax)
	movzbl	3118(%rbx), %eax
	movb	$14, 3152(%rbx,%rax)
	movzbl	3119(%rbx), %eax
	movb	$15, 3152(%rbx,%rax)
	movzbl	3120(%rbx), %eax
	movb	$0, 3168(%rbx,%rax)
	movzbl	3121(%rbx), %eax
	movb	$1, 3168(%rbx,%rax)
	movzbl	3122(%rbx), %eax
	movb	$2, 3168(%rbx,%rax)
	movzbl	3123(%rbx), %eax
	movb	$3, 3168(%rbx,%rax)
	movzbl	3124(%rbx), %eax
	movb	$4, 3168(%rbx,%rax)
	movzbl	3125(%rbx), %eax
	movb	$5, 3168(%rbx,%rax)
	movzbl	3126(%rbx), %eax
	movb	$6, 3168(%rbx,%rax)
	movzbl	3127(%rbx), %eax
	movb	$7, 3168(%rbx,%rax)
	movzbl	3128(%rbx), %eax
	movb	$8, 3168(%rbx,%rax)
	movzbl	3129(%rbx), %eax
	movb	$9, 3168(%rbx,%rax)
	movzbl	3130(%rbx), %eax
	movb	$10, 3168(%rbx,%rax)
	movzbl	3131(%rbx), %eax
	movb	$11, 3168(%rbx,%rax)
	movzbl	3132(%rbx), %eax
	movb	$12, 3168(%rbx,%rax)
	movzbl	3133(%rbx), %eax
	movb	$13, 3168(%rbx,%rax)
	movzbl	3134(%rbx), %eax
	movb	$14, 3168(%rbx,%rax)
	movzbl	3135(%rbx), %eax
	movb	$15, 3168(%rbx,%rax)
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	callq	_Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t
	movq	%rax, 3184(%rbx)
	movq	%rdx, 3192(%rbx)
	movzbl	%al, %ecx
	movb	$0, 3200(%rbx,%rcx)
	movzbl	%ah, %ecx
	movb	$1, 3200(%rbx,%rcx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	movb	$2, 3200(%rbx,%rcx)
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	$3, 3200(%rbx,%rcx)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movzbl	%cl, %ecx
	movb	$4, 3200(%rbx,%rcx)
	movq	%rax, %rcx
	shrq	$40, %rcx
	movzbl	%cl, %ecx
	movb	$5, 3200(%rbx,%rcx)
	movq	%rax, %rcx
	shrq	$48, %rcx
	movzbl	%cl, %ecx
	movb	$6, 3200(%rbx,%rcx)
	shrq	$56, %rax
	movb	$7, 3200(%rbx,%rax)
	movzbl	%dl, %eax
	movb	$8, 3200(%rbx,%rax)
	movzbl	%dh, %eax
	movb	$9, 3200(%rbx,%rax)
	movl	%edx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	movb	$10, 3200(%rbx,%rax)
	movl	%edx, %eax
	shrl	$24, %eax
	movb	$11, 3200(%rbx,%rax)
	movq	%rdx, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	movb	$12, 3200(%rbx,%rax)
	movq	%rdx, %rax
	shrq	$40, %rax
	movzbl	%al, %eax
	movb	$13, 3200(%rbx,%rax)
	movq	%rdx, %rax
	shrq	$48, %rax
	movzbl	%al, %eax
	movb	$14, 3200(%rbx,%rax)
	shrq	$56, %rdx
	movb	$15, 3200(%rbx,%rdx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
.Ltmp27:
	leaq	8(%rsp), %rdi
	callq	_Z14gen_bit_tablesILi32EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t
.Ltmp28:
# %bb.19:
	movq	24(%rsp), %rax
	movq	%rax, 3232(%rbx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, 3216(%rbx)
	movl	3216(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB5_23
# %bb.20:
	movb	8(%rsp), %al
	movb	%al, 9(%rsp)
	movb	%dil, 8(%rsp)
	leaq	10(%rsp), %r8
	cmpb	%sil, %dil
	jb	.LBB5_32
.LBB5_25:
	movb	9(%rsp), %dl
	movq	%r8, %rax
	cmpb	%sil, %dl
	jae	.LBB5_28
# %bb.26:
	leaq	10(%rsp), %rax
	.p2align	4, 0x90
.LBB5_27:                               # =>This Inner Loop Header: Depth=1
	movb	%dl, (%rax)
	movzbl	-2(%rax), %edx
	addq	$-1, %rax
	cmpb	%sil, %dl
	jb	.LBB5_27
.LBB5_28:
	movb	%sil, (%rax)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	leaq	11(%rsp), %rax
	cmpb	%sil, %dl
	ja	.LBB5_38
.LBB5_34:
	movb	10(%rsp), %cl
	movq	%rax, %rsi
	cmpb	%cl, %dl
	jbe	.LBB5_37
# %bb.35:
	leaq	11(%rsp), %rsi
	.p2align	4, 0x90
.LBB5_36:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movzbl	-2(%rsi), %ecx
	addq	$-1, %rsi
	cmpb	%cl, %dl
	ja	.LBB5_36
.LBB5_37:
	movb	%dl, (%rsi)
	jmp	.LBB5_39
.LBB5_23:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	leaq	10(%rsp), %r8
	cmpb	%sil, %dil
	jae	.LBB5_25
.LBB5_32:
	shrl	$24, %edx
	movzwl	8(%rsp), %eax
	movw	%ax, 9(%rsp)
	movb	%sil, 8(%rsp)
	leaq	11(%rsp), %rax
	cmpb	%sil, %dl
	jbe	.LBB5_34
.LBB5_38:
	movzwl	8(%rsp), %esi
	movb	10(%rsp), %cl
	movb	%cl, (%rax)
	movw	%si, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB5_39:
	movl	3220(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB5_40
# %bb.41:
	movb	8(%rsp), %cl
	movb	%cl, 9(%rsp)
	movb	%dil, 8(%rsp)
	cmpb	%sil, %dil
	jb	.LBB5_47
.LBB5_43:
	movb	9(%rsp), %cl
	movq	%r8, %rdx
	cmpb	%sil, %cl
	jae	.LBB5_46
# %bb.44:
	leaq	10(%rsp), %rdx
	.p2align	4, 0x90
.LBB5_45:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rdx)
	movzbl	-2(%rdx), %ecx
	addq	$-1, %rdx
	cmpb	%sil, %cl
	jb	.LBB5_45
.LBB5_46:
	movb	%sil, (%rdx)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	cmpb	%sil, %dl
	ja	.LBB5_53
.LBB5_49:
	movb	10(%rsp), %cl
	movq	%rax, %rsi
	cmpb	%cl, %dl
	jbe	.LBB5_52
# %bb.50:
	leaq	11(%rsp), %rsi
	.p2align	4, 0x90
.LBB5_51:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movzbl	-2(%rsi), %ecx
	addq	$-1, %rsi
	cmpb	%cl, %dl
	ja	.LBB5_51
.LBB5_52:
	movb	%dl, (%rsi)
	jmp	.LBB5_54
.LBB5_40:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	cmpb	%sil, %dil
	jae	.LBB5_43
.LBB5_47:
	shrl	$24, %edx
	movzwl	8(%rsp), %ecx
	movw	%cx, 9(%rsp)
	movb	%sil, 8(%rsp)
	cmpb	%sil, %dl
	jbe	.LBB5_49
.LBB5_53:
	movzwl	8(%rsp), %esi
	movb	10(%rsp), %cl
	movb	%cl, (%rax)
	movw	%si, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB5_54:
	movl	3224(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB5_55
# %bb.56:
	movb	8(%rsp), %cl
	movb	%cl, 9(%rsp)
	movb	%dil, 8(%rsp)
	cmpb	%sil, %dil
	jb	.LBB5_62
.LBB5_58:
	movb	9(%rsp), %cl
	movq	%r8, %rdx
	cmpb	%sil, %cl
	jae	.LBB5_61
# %bb.59:
	leaq	10(%rsp), %rdx
	.p2align	4, 0x90
.LBB5_60:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rdx)
	movzbl	-2(%rdx), %ecx
	addq	$-1, %rdx
	cmpb	%sil, %cl
	jb	.LBB5_60
.LBB5_61:
	movb	%sil, (%rdx)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	cmpb	%sil, %dl
	ja	.LBB5_68
.LBB5_64:
	movb	10(%rsp), %cl
	movq	%rax, %rsi
	cmpb	%cl, %dl
	jbe	.LBB5_67
# %bb.65:
	leaq	11(%rsp), %rsi
	.p2align	4, 0x90
.LBB5_66:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movzbl	-2(%rsi), %ecx
	addq	$-1, %rsi
	cmpb	%cl, %dl
	ja	.LBB5_66
.LBB5_67:
	movb	%dl, (%rsi)
	jmp	.LBB5_69
.LBB5_55:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	cmpb	%sil, %dil
	jae	.LBB5_58
.LBB5_62:
	shrl	$24, %edx
	movzwl	8(%rsp), %ecx
	movw	%cx, 9(%rsp)
	movb	%sil, 8(%rsp)
	cmpb	%sil, %dl
	jbe	.LBB5_64
.LBB5_68:
	movzwl	8(%rsp), %esi
	movb	10(%rsp), %cl
	movb	%cl, (%rax)
	movw	%si, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB5_69:
	movl	3228(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB5_70
# %bb.71:
	movb	8(%rsp), %cl
	movb	%cl, 9(%rsp)
	movb	%dil, 8(%rsp)
	cmpb	%sil, %dil
	jb	.LBB5_77
.LBB5_73:
	movb	9(%rsp), %cl
	movq	%r8, %rdx
	cmpb	%sil, %cl
	jae	.LBB5_76
# %bb.74:
	leaq	10(%rsp), %rdx
	.p2align	4, 0x90
.LBB5_75:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rdx)
	movzbl	-2(%rdx), %ecx
	addq	$-1, %rdx
	cmpb	%sil, %cl
	jb	.LBB5_75
.LBB5_76:
	movb	%sil, (%rdx)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	cmpb	%sil, %dl
	ja	.LBB5_83
.LBB5_79:
	movb	10(%rsp), %cl
	movq	%rax, %rsi
	cmpb	%cl, %dl
	jbe	.LBB5_82
# %bb.80:
	leaq	11(%rsp), %rsi
	.p2align	4, 0x90
.LBB5_81:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movzbl	-2(%rsi), %ecx
	addq	$-1, %rsi
	cmpb	%cl, %dl
	ja	.LBB5_81
.LBB5_82:
	movb	%dl, (%rsi)
	jmp	.LBB5_84
.LBB5_70:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	cmpb	%sil, %dil
	jae	.LBB5_73
.LBB5_77:
	shrl	$24, %edx
	movzwl	8(%rsp), %ecx
	movw	%cx, 9(%rsp)
	movb	%sil, 8(%rsp)
	cmpb	%sil, %dl
	jbe	.LBB5_79
.LBB5_83:
	movzwl	8(%rsp), %esi
	movb	10(%rsp), %cl
	movb	%cl, (%rax)
	movw	%si, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB5_84:
	movl	3232(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB5_85
# %bb.86:
	movb	8(%rsp), %cl
	movb	%cl, 9(%rsp)
	movb	%dil, 8(%rsp)
	cmpb	%sil, %dil
	jb	.LBB5_92
.LBB5_88:
	movb	9(%rsp), %cl
	movq	%r8, %rdx
	cmpb	%sil, %cl
	jae	.LBB5_91
# %bb.89:
	leaq	10(%rsp), %rdx
	.p2align	4, 0x90
.LBB5_90:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rdx)
	movzbl	-2(%rdx), %ecx
	addq	$-1, %rdx
	cmpb	%sil, %cl
	jb	.LBB5_90
.LBB5_91:
	movb	%sil, (%rdx)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	cmpb	%sil, %dl
	ja	.LBB5_98
.LBB5_94:
	movb	10(%rsp), %cl
	movq	%rax, %rsi
	cmpb	%cl, %dl
	jbe	.LBB5_97
# %bb.95:
	leaq	11(%rsp), %rsi
	.p2align	4, 0x90
.LBB5_96:                               # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movzbl	-2(%rsi), %ecx
	addq	$-1, %rsi
	cmpb	%cl, %dl
	ja	.LBB5_96
.LBB5_97:
	movb	%dl, (%rsi)
	jmp	.LBB5_99
.LBB5_85:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	cmpb	%sil, %dil
	jae	.LBB5_88
.LBB5_92:
	shrl	$24, %edx
	movzwl	8(%rsp), %ecx
	movw	%cx, 9(%rsp)
	movb	%sil, 8(%rsp)
	cmpb	%sil, %dl
	jbe	.LBB5_94
.LBB5_98:
	movzwl	8(%rsp), %esi
	movb	10(%rsp), %cl
	movb	%cl, (%rax)
	movw	%si, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB5_99:
	movl	3236(%rbx), %edx
	movl	%edx, 8(%rsp)
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %esi
	shrl	$16, %esi
	cmpb	%dl, %dil
	jbe	.LBB5_100
# %bb.101:
	movb	8(%rsp), %cl
	movb	%cl, 9(%rsp)
	movb	%dil, 8(%rsp)
	cmpb	%sil, %dil
	jb	.LBB5_107
.LBB5_103:
	movb	9(%rsp), %cl
	cmpb	%sil, %cl
	jae	.LBB5_106
# %bb.104:
	leaq	10(%rsp), %r8
	.p2align	4, 0x90
.LBB5_105:                              # =>This Inner Loop Header: Depth=1
	movb	%cl, (%r8)
	movzbl	-2(%r8), %ecx
	addq	$-1, %r8
	cmpb	%sil, %cl
	jb	.LBB5_105
.LBB5_106:
	movb	%sil, (%r8)
	movb	8(%rsp), %sil
	movb	11(%rsp), %dl
	cmpb	%sil, %dl
	ja	.LBB5_113
.LBB5_109:
	movb	10(%rsp), %cl
	cmpb	%cl, %dl
	jbe	.LBB5_112
# %bb.110:
	leaq	11(%rsp), %rax
	.p2align	4, 0x90
.LBB5_111:                              # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rax)
	movzbl	-2(%rax), %ecx
	addq	$-1, %rax
	cmpb	%cl, %dl
	ja	.LBB5_111
.LBB5_112:
	movb	%dl, (%rax)
	jmp	.LBB5_114
.LBB5_100:
	movb	%dil, 9(%rsp)
	movl	%edx, %edi
	cmpb	%sil, %dil
	jae	.LBB5_103
.LBB5_107:
	shrl	$24, %edx
	movzwl	8(%rsp), %ecx
	movw	%cx, 9(%rsp)
	movb	%sil, 8(%rsp)
	cmpb	%sil, %dl
	jbe	.LBB5_109
.LBB5_113:
	movzwl	8(%rsp), %ecx
	movb	10(%rsp), %bl
	movb	%bl, (%rax)
	movw	%cx, -2(%rax)
	movb	%dl, 8(%rsp)
.LBB5_114:
	addq	$1544, %rsp             # imm = 0x608
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_1:
	.cfi_def_cfa_offset 1584
	movl	$16, %edi
	callq	__cxa_allocate_exception
	movq	%rax, %r14
.Ltmp33:
	movl	$.L.str, %esi
	movq	%rax, %rdi
	callq	_ZN9duthomhas6csprng9exceptionC2EPKc
.Ltmp34:
# %bb.2:
	movl	$_ZTIN9duthomhas6csprng9exceptionE, %esi
	movl	$_ZNSt13runtime_errorD2Ev, %edx
	movq	%r14, %rdi
	callq	__cxa_throw
.LBB5_115:
.Ltmp35:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__cxa_free_exception
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB5_22:
.Ltmp29:
	jmp	.LBB5_30
.LBB5_21:
.Ltmp26:
	jmp	.LBB5_30
.LBB5_117:
.Ltmp23:
	jmp	.LBB5_30
.LBB5_29:
.Ltmp20:
.LBB5_30:
	movq	%rax, %rbx
	movq	(%r12), %rdi
.Ltmp30:
	callq	csprng_destroy
.Ltmp31:
# %bb.31:
	movq	%rax, (%r12)
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB5_118:
.Ltmp32:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end5:
	.size	_ZN9YaoCipherC2E13XXH128_hash_t, .Lfunc_end5-_ZN9YaoCipherC2E13XXH128_hash_t
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin1  #   Call between .Lfunc_begin1 and .Ltmp18
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1  # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp18        #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1  #     jumps to .Ltmp20
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1  # >> Call Site 3 <<
	.uleb128 .Ltmp22-.Ltmp21        #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1  #     jumps to .Ltmp23
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1  # >> Call Site 4 <<
	.uleb128 .Ltmp24-.Ltmp22        #   Call between .Ltmp22 and .Ltmp24
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1  # >> Call Site 5 <<
	.uleb128 .Ltmp25-.Ltmp24        #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1  #     jumps to .Ltmp26
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1  # >> Call Site 6 <<
	.uleb128 .Ltmp28-.Ltmp27        #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1  #     jumps to .Ltmp29
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1  # >> Call Site 7 <<
	.uleb128 .Ltmp33-.Ltmp28        #   Call between .Ltmp28 and .Ltmp33
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1  # >> Call Site 8 <<
	.uleb128 .Ltmp34-.Ltmp33        #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin1  #     jumps to .Ltmp35
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1  # >> Call Site 9 <<
	.uleb128 .Ltmp30-.Ltmp34        #   Call between .Ltmp34 and .Ltmp30
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1  # >> Call Site 10 <<
	.uleb128 .Ltmp31-.Ltmp30        #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin1  #     jumps to .Ltmp32
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp31-.Lfunc_begin1  # >> Call Site 11 <<
	.uleb128 .Lfunc_end5-.Ltmp31    #   Call between .Ltmp31 and .Lfunc_end5
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end1:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.text
	.globl	_ZN9YaoCipher5roundEPjm # -- Begin function _ZN9YaoCipher5roundEPjm
	.p2align	4, 0x90
	.type	_ZN9YaoCipher5roundEPjm,@function
_ZN9YaoCipher5roundEPjm:                # @_ZN9YaoCipher5roundEPjm
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	%rdx, %r11
	andq	$-2, %r11
	addq	$2, %r11
	shrq	%r11
	movq	%rdx, %r9
	shrq	%r9
	leaq	1(%rdx), %r10
	shrq	%r10
	testq	%r11, %r11
	je	.LBB6_10
# %bb.1:
	leaq	-1(%r11), %r8
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_17
# %bb.2:
	xorl	%esi, %esi
	jmp	.LBB6_3
.LBB6_10:
	testb	$1, %r14b
	je	.LBB6_13
# %bb.11:
	movzbl	(%r12,%r10), %eax
	shlq	$4, %r9
	addq	%r15, %r9
	movb	3088(%rax,%r9), %al
	movb	%al, (%r12,%r10)
	movzbl	4(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 4(%r12,%r10)
	movzbl	8(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 8(%r12,%r10)
	movzbl	12(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 12(%r12,%r10)
	movzbl	16(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 16(%r12,%r10)
	movzbl	20(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 20(%r12,%r10)
	movzbl	24(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 24(%r12,%r10)
	movzbl	28(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 28(%r12,%r10)
	movzbl	32(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 32(%r12,%r10)
	movzbl	36(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 36(%r12,%r10)
	movzbl	40(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 40(%r12,%r10)
	movzbl	44(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 44(%r12,%r10)
	movzbl	48(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 48(%r12,%r10)
	movzbl	52(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 52(%r12,%r10)
	movzbl	56(%r12,%r10), %eax
	movb	3088(%rax,%r9), %al
	movb	%al, 56(%r12,%r10)
	movzbl	60(%r12,%r10), %eax
	jmp	.LBB6_12
.LBB6_17:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_18:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, (%r12,%rsi)
	movzbl	1(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 1(%r12,%rsi)
	movzbl	2(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 2(%r12,%rsi)
	movzbl	3(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 3(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_18
.LBB6_3:
	testq	%rdi, %rdi
	je	.LBB6_6
# %bb.4:
	addq	%r12, %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	shlq	$8, %rdx
	addq	%r15, %rdx
	.p2align	4, 0x90
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rcx), %eax
	movzbl	16(%rax,%rdx), %eax
	movb	%al, (%rsi,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.LBB6_5
.LBB6_6:
	testb	$1, %r14b
	je	.LBB6_8
# %bb.7:
	movzbl	(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, (%r12,%r10)
.LBB6_8:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_22
# %bb.9:
	xorl	%esi, %esi
	jmp	.LBB6_24
.LBB6_22:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_23:                               # =>This Inner Loop Header: Depth=1
	movzbl	4(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 4(%r12,%rsi)
	movzbl	5(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 5(%r12,%rsi)
	movzbl	6(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 6(%r12,%rsi)
	movzbl	7(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 7(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_23
.LBB6_24:
	testq	%rdi, %rdi
	je	.LBB6_27
# %bb.25:
	leaq	(%r12,%rsi), %rcx
	addq	$4, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_26:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_26
.LBB6_27:
	testb	$1, %r14b
	je	.LBB6_29
# %bb.28:
	movzbl	4(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 4(%r12,%r10)
.LBB6_29:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_31
# %bb.30:
	xorl	%esi, %esi
	jmp	.LBB6_33
.LBB6_31:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_32:                               # =>This Inner Loop Header: Depth=1
	movzbl	8(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 8(%r12,%rsi)
	movzbl	9(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 9(%r12,%rsi)
	movzbl	10(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 10(%r12,%rsi)
	movzbl	11(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 11(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_32
.LBB6_33:
	testq	%rdi, %rdi
	je	.LBB6_36
# %bb.34:
	leaq	(%r12,%rsi), %rcx
	addq	$8, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_35:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_35
.LBB6_36:
	testb	$1, %r14b
	je	.LBB6_38
# %bb.37:
	movzbl	8(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 8(%r12,%r10)
.LBB6_38:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_40
# %bb.39:
	xorl	%esi, %esi
	jmp	.LBB6_42
.LBB6_40:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_41:                               # =>This Inner Loop Header: Depth=1
	movzbl	12(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 12(%r12,%rsi)
	movzbl	13(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 13(%r12,%rsi)
	movzbl	14(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 14(%r12,%rsi)
	movzbl	15(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 15(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_41
.LBB6_42:
	testq	%rdi, %rdi
	je	.LBB6_45
# %bb.43:
	leaq	(%r12,%rsi), %rcx
	addq	$12, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_44:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_44
.LBB6_45:
	testb	$1, %r14b
	je	.LBB6_47
# %bb.46:
	movzbl	12(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 12(%r12,%r10)
.LBB6_47:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_49
# %bb.48:
	xorl	%esi, %esi
	jmp	.LBB6_51
.LBB6_49:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_50:                               # =>This Inner Loop Header: Depth=1
	movzbl	16(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 16(%r12,%rsi)
	movzbl	17(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 17(%r12,%rsi)
	movzbl	18(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 18(%r12,%rsi)
	movzbl	19(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 19(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_50
.LBB6_51:
	testq	%rdi, %rdi
	je	.LBB6_54
# %bb.52:
	leaq	(%r12,%rsi), %rcx
	addq	$16, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_53:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_53
.LBB6_54:
	testb	$1, %r14b
	je	.LBB6_56
# %bb.55:
	movzbl	16(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 16(%r12,%r10)
.LBB6_56:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_58
# %bb.57:
	xorl	%esi, %esi
	jmp	.LBB6_60
.LBB6_58:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_59:                               # =>This Inner Loop Header: Depth=1
	movzbl	20(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 20(%r12,%rsi)
	movzbl	21(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 21(%r12,%rsi)
	movzbl	22(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 22(%r12,%rsi)
	movzbl	23(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 23(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_59
.LBB6_60:
	testq	%rdi, %rdi
	je	.LBB6_63
# %bb.61:
	leaq	(%r12,%rsi), %rcx
	addq	$20, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_62:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_62
.LBB6_63:
	testb	$1, %r14b
	je	.LBB6_65
# %bb.64:
	movzbl	20(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 20(%r12,%r10)
.LBB6_65:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_67
# %bb.66:
	xorl	%esi, %esi
	jmp	.LBB6_69
.LBB6_67:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_68:                               # =>This Inner Loop Header: Depth=1
	movzbl	24(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 24(%r12,%rsi)
	movzbl	25(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 25(%r12,%rsi)
	movzbl	26(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 26(%r12,%rsi)
	movzbl	27(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 27(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_68
.LBB6_69:
	testq	%rdi, %rdi
	je	.LBB6_72
# %bb.70:
	leaq	(%r12,%rsi), %rcx
	addq	$24, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_71:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_71
.LBB6_72:
	testb	$1, %r14b
	je	.LBB6_74
# %bb.73:
	movzbl	24(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 24(%r12,%r10)
.LBB6_74:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_76
# %bb.75:
	xorl	%esi, %esi
	jmp	.LBB6_78
.LBB6_76:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_77:                               # =>This Inner Loop Header: Depth=1
	movzbl	28(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 28(%r12,%rsi)
	movzbl	29(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 29(%r12,%rsi)
	movzbl	30(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 30(%r12,%rsi)
	movzbl	31(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 31(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_77
.LBB6_78:
	testq	%rdi, %rdi
	je	.LBB6_81
# %bb.79:
	leaq	(%r12,%rsi), %rcx
	addq	$28, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_80:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_80
.LBB6_81:
	testb	$1, %r14b
	je	.LBB6_83
# %bb.82:
	movzbl	28(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 28(%r12,%r10)
.LBB6_83:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_85
# %bb.84:
	xorl	%esi, %esi
	jmp	.LBB6_87
.LBB6_85:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_86:                               # =>This Inner Loop Header: Depth=1
	movzbl	32(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 32(%r12,%rsi)
	movzbl	33(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 33(%r12,%rsi)
	movzbl	34(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 34(%r12,%rsi)
	movzbl	35(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 35(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_86
.LBB6_87:
	testq	%rdi, %rdi
	je	.LBB6_90
# %bb.88:
	leaq	(%r12,%rsi), %rcx
	addq	$32, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_89:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_89
.LBB6_90:
	testb	$1, %r14b
	je	.LBB6_92
# %bb.91:
	movzbl	32(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 32(%r12,%r10)
.LBB6_92:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_94
# %bb.93:
	xorl	%esi, %esi
	jmp	.LBB6_96
.LBB6_94:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_95:                               # =>This Inner Loop Header: Depth=1
	movzbl	36(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 36(%r12,%rsi)
	movzbl	37(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 37(%r12,%rsi)
	movzbl	38(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 38(%r12,%rsi)
	movzbl	39(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 39(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_95
.LBB6_96:
	testq	%rdi, %rdi
	je	.LBB6_99
# %bb.97:
	leaq	(%r12,%rsi), %rcx
	addq	$36, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_98:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_98
.LBB6_99:
	testb	$1, %r14b
	je	.LBB6_101
# %bb.100:
	movzbl	36(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 36(%r12,%r10)
.LBB6_101:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_103
# %bb.102:
	xorl	%esi, %esi
	jmp	.LBB6_105
.LBB6_103:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_104:                              # =>This Inner Loop Header: Depth=1
	movzbl	40(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 40(%r12,%rsi)
	movzbl	41(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 41(%r12,%rsi)
	movzbl	42(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 42(%r12,%rsi)
	movzbl	43(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 43(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_104
.LBB6_105:
	testq	%rdi, %rdi
	je	.LBB6_108
# %bb.106:
	leaq	(%r12,%rsi), %rcx
	addq	$40, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_107:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_107
.LBB6_108:
	testb	$1, %r14b
	je	.LBB6_110
# %bb.109:
	movzbl	40(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 40(%r12,%r10)
.LBB6_110:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_112
# %bb.111:
	xorl	%esi, %esi
	jmp	.LBB6_114
.LBB6_112:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_113:                              # =>This Inner Loop Header: Depth=1
	movzbl	44(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 44(%r12,%rsi)
	movzbl	45(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 45(%r12,%rsi)
	movzbl	46(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 46(%r12,%rsi)
	movzbl	47(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 47(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_113
.LBB6_114:
	testq	%rdi, %rdi
	je	.LBB6_117
# %bb.115:
	leaq	(%r12,%rsi), %rcx
	addq	$44, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_116:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_116
.LBB6_117:
	testb	$1, %r14b
	je	.LBB6_119
# %bb.118:
	movzbl	44(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 44(%r12,%r10)
.LBB6_119:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_121
# %bb.120:
	xorl	%esi, %esi
	jmp	.LBB6_123
.LBB6_121:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_122:                              # =>This Inner Loop Header: Depth=1
	movzbl	48(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 48(%r12,%rsi)
	movzbl	49(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 49(%r12,%rsi)
	movzbl	50(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 50(%r12,%rsi)
	movzbl	51(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 51(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_122
.LBB6_123:
	testq	%rdi, %rdi
	je	.LBB6_126
# %bb.124:
	leaq	(%r12,%rsi), %rcx
	addq	$48, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_125:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_125
.LBB6_126:
	testb	$1, %r14b
	je	.LBB6_128
# %bb.127:
	movzbl	48(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 48(%r12,%r10)
.LBB6_128:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_130
# %bb.129:
	xorl	%esi, %esi
	jmp	.LBB6_132
.LBB6_130:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_131:                              # =>This Inner Loop Header: Depth=1
	movzbl	52(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 52(%r12,%rsi)
	movzbl	53(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 53(%r12,%rsi)
	movzbl	54(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 54(%r12,%rsi)
	movzbl	55(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 55(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_131
.LBB6_132:
	testq	%rdi, %rdi
	je	.LBB6_135
# %bb.133:
	leaq	(%r12,%rsi), %rcx
	addq	$52, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_134:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_134
.LBB6_135:
	testb	$1, %r14b
	je	.LBB6_137
# %bb.136:
	movzbl	52(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 52(%r12,%r10)
.LBB6_137:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_139
# %bb.138:
	xorl	%esi, %esi
	jmp	.LBB6_141
.LBB6_139:
	movq	%r11, %rdx
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_140:                              # =>This Inner Loop Header: Depth=1
	movzbl	56(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 56(%r12,%rsi)
	movzbl	57(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 57(%r12,%rsi)
	movzbl	58(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 58(%r12,%rsi)
	movzbl	59(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 59(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_140
.LBB6_141:
	testq	%rdi, %rdi
	je	.LBB6_144
# %bb.142:
	leaq	(%r12,%rsi), %rcx
	addq	$56, %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	shlq	$8, %rsi
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB6_143:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	movzbl	16(%rax,%rsi), %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB6_143
.LBB6_144:
	testb	$1, %r14b
	je	.LBB6_146
# %bb.145:
	movzbl	56(%r12,%r10), %eax
	movq	%r9, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, 56(%r12,%r10)
.LBB6_146:
	movl	%r11d, %edi
	andl	$3, %edi
	cmpq	$3, %r8
	jae	.LBB6_148
# %bb.147:
	xorl	%esi, %esi
	jmp	.LBB6_150
.LBB6_148:
	subq	%rdi, %r11
	xorl	%esi, %esi
	movq	%r14, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
	.p2align	4, 0x90
.LBB6_149:                              # =>This Inner Loop Header: Depth=1
	movzbl	60(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 60(%r12,%rsi)
	movzbl	61(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 61(%r12,%rsi)
	movzbl	62(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 62(%r12,%rsi)
	movzbl	63(%r12,%rsi), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 63(%r12,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r11
	jne	.LBB6_149
.LBB6_150:
	testq	%rdi, %rdi
	je	.LBB6_153
# %bb.151:
	leaq	(%r12,%rsi), %rax
	addq	$60, %rax
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	shlq	$8, %rdx
	addq	%r15, %rdx
	.p2align	4, 0x90
.LBB6_152:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %esi
	movzbl	16(%rsi,%rdx), %ebx
	movb	%bl, (%rax,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.LBB6_152
.LBB6_153:
	testb	$1, %r14b
	je	.LBB6_13
# %bb.154:
	movzbl	60(%r12,%r10), %eax
	shlq	$4, %r9
	addq	%r15, %r9
.LBB6_12:
	movb	3088(%rax,%r9), %al
	movb	%al, 60(%r12,%r10)
.LBB6_13:
	movq	3240(%r15), %rdi
	movq	%rsp, %rsi
	movl	$8, %edx
	callq	csprng_get
	testl	%eax, %eax
	je	.LBB6_14
# %bb.19:
	movq	(%rsp), %r8
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB6_20:                               # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rdx), %edi
	movzbl	3216(%r15,%r14,4), %ecx
	xorl	%eax, %eax
	btq	%rdx, %r8
	setb	%al
	movl	$-1, %ebx
	shll	%cl, %ebx
	notl	%ebx
	shll	%cl, %eax
	movl	$-2, %esi
	shll	%cl, %esi
	andl	%edi, %ebx
	orl	%ebx, %eax
	andl	%edi, %esi
	addl	%esi, %esi
	orl	%eax, %esi
	movl	%esi, (%r12,%rdx)
	movzbl	3217(%r15,%r14,4), %ecx
	leal	1(%rdx), %eax
	movzbl	%al, %eax
	xorl	%ebx, %ebx
	btq	%rax, %r8
	setb	%bl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	shll	%cl, %ebx
	movl	$-2, %edi
	shll	%cl, %edi
	andl	%esi, %eax
	orl	%eax, %ebx
	andl	%esi, %edi
	addl	%edi, %edi
	orl	%ebx, %edi
	movl	%edi, (%r12,%rdx)
	movzbl	3218(%r15,%r14,4), %ecx
	leal	2(%rdx), %eax
	movzbl	%al, %eax
	xorl	%ebx, %ebx
	btq	%rax, %r8
	setb	%bl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	shll	%cl, %ebx
	movl	$-2, %esi
	shll	%cl, %esi
	andl	%edi, %eax
	orl	%eax, %ebx
	andl	%edi, %esi
	addl	%esi, %esi
	orl	%ebx, %esi
	movl	%esi, (%r12,%rdx)
	movzbl	3219(%r15,%r14,4), %ecx
	leal	3(%rdx), %eax
	movzbl	%al, %eax
	xorl	%edi, %edi
	btq	%rax, %r8
	setb	%dil
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	shll	%cl, %edi
	movl	$-2, %ebx
	shll	%cl, %ebx
	andl	%esi, %eax
	orl	%eax, %edi
	andl	%esi, %ebx
	addl	%ebx, %ebx
	orl	%edi, %ebx
	movl	%ebx, (%r12,%rdx)
	addq	$4, %rdx
	cmpq	$64, %rdx
	jne	.LBB6_20
# %bb.21:
	movq	%r12, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_14:
	.cfi_def_cfa_offset 48
	movl	$16, %edi
	callq	__cxa_allocate_exception
	movq	%rax, %rbx
.Ltmp36:
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	_ZN9duthomhas6csprng9exceptionC2EPKc
.Ltmp37:
# %bb.15:
	movl	$_ZTIN9duthomhas6csprng9exceptionE, %esi
	movl	$_ZNSt13runtime_errorD2Ev, %edx
	movq	%rbx, %rdi
	callq	__cxa_throw
.LBB6_16:
.Ltmp38:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__cxa_free_exception
	movq	%r14, %rdi
	callq	_Unwind_Resume
.Lfunc_end6:
	.size	_ZN9YaoCipher5roundEPjm, .Lfunc_end6-_ZN9YaoCipher5roundEPjm
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table6:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2 # >> Call Site 1 <<
	.uleb128 .Ltmp36-.Lfunc_begin2  #   Call between .Lfunc_begin2 and .Ltmp36
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin2  # >> Call Site 2 <<
	.uleb128 .Ltmp37-.Ltmp36        #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin2  #     jumps to .Ltmp38
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin2  # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp37    #   Call between .Ltmp37 and .Lfunc_end6
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.text
	.globl	_ZN9YaoCipher10substituteEPhm # -- Begin function _ZN9YaoCipher10substituteEPhm
	.p2align	4, 0x90
	.type	_ZN9YaoCipher10substituteEPhm,@function
_ZN9YaoCipher10substituteEPhm:          # @_ZN9YaoCipher10substituteEPhm
	.cfi_startproc
# %bb.0:
	movq	%rdx, %r8
	andq	$-2, %r8
	leaq	2(%r8), %r10
	shrq	%r10
	je	.LBB7_6
# %bb.1:
	leaq	-1(%r10), %rax
	movl	%r10d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rax
	jae	.LBB7_9
# %bb.2:
	xorl	%r11d, %r11d
	jmp	.LBB7_3
.LBB7_9:
	subq	%r9, %r10
	xorl	%r11d, %r11d
	movq	%rdx, %rcx
	shlq	$8, %rcx
	addq	%rdi, %rcx
	.p2align	4, 0x90
.LBB7_10:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%r11), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, (%rsi,%r11)
	movzbl	1(%rsi,%r11), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 1(%rsi,%r11)
	movzbl	2(%rsi,%r11), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 2(%rsi,%r11)
	movzbl	3(%rsi,%r11), %eax
	movzbl	16(%rax,%rcx), %eax
	movb	%al, 3(%rsi,%r11)
	addq	$4, %r11
	cmpq	%r11, %r10
	jne	.LBB7_10
.LBB7_3:
	testq	%r9, %r9
	je	.LBB7_6
# %bb.4:
	addq	%rsi, %r11
	xorl	%ecx, %ecx
	movq	%rdx, %r10
	shlq	$8, %r10
	addq	%rdi, %r10
	.p2align	4, 0x90
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r11,%rcx), %eax
	movzbl	16(%rax,%r10), %eax
	movb	%al, (%r11,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.LBB7_5
.LBB7_6:
	testb	$1, %dl
	je	.LBB7_8
# %bb.7:
	addq	$1, %rdx
	shrq	%rdx
	movzbl	(%rsi,%rdx), %eax
	leaq	(%rdi,%r8,8), %rcx
	movb	3088(%rax,%rcx), %al
	movb	%al, (%rsi,%rdx)
.LBB7_8:
	retq
.Lfunc_end7:
	.size	_ZN9YaoCipher10substituteEPhm, .Lfunc_end7-_ZN9YaoCipher10substituteEPhm
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _ZN9YaoCipher7unroundEPjm
.LCPI8_0:
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.text
	.globl	_ZN9YaoCipher7unroundEPjm
	.p2align	4, 0x90
	.type	_ZN9YaoCipher7unroundEPjm,@function
_ZN9YaoCipher7unroundEPjm:              # @_ZN9YaoCipher7unroundEPjm
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rax
	leaq	(%rdi,%rdx,4), %rcx
	addq	$3217, %rcx             # imm = 0xC91
	cmpq	%rsi, %rcx
	jbe	.LBB8_4
# %bb.1:
	leaq	(%rdi,%rdx,4), %rcx
	addq	$3216, %rcx             # imm = 0xC90
	leaq	64(%rax), %rsi
	cmpq	%rsi, %rcx
	jae	.LBB8_4
# %bb.2:
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	3219(%rdi,%rdx,4), %ecx
	movl	$-1, %ebx
	shll	%cl, %ebx
	movl	(%rax,%r9,4), %r8d
	movl	%r8d, %ecx
	shrl	%ecx
	andl	%ebx, %ecx
	notl	%ebx
	andl	%r8d, %ebx
	orl	%ecx, %ebx
	movl	%ebx, (%rax,%r9,4)
	movzbl	3218(%rdi,%rdx,4), %ecx
	movl	$-1, %esi
	shll	%cl, %esi
	movl	%ebx, %ecx
	shrl	%ecx
	andl	%esi, %ecx
	notl	%esi
	andl	%ebx, %esi
	orl	%ecx, %esi
	movl	%esi, (%rax,%r9,4)
	movzbl	3217(%rdi,%rdx,4), %ecx
	movl	$-1, %ebx
	shll	%cl, %ebx
	movl	%esi, %ecx
	shrl	%ecx
	andl	%ebx, %ecx
	notl	%ebx
	andl	%esi, %ebx
	orl	%ecx, %ebx
	movl	%ebx, (%rax,%r9,4)
	movzbl	3216(%rdi,%rdx,4), %ecx
	movl	$-1, %esi
	shll	%cl, %esi
	movl	%ebx, %ecx
	shrl	%ecx
	andl	%esi, %ecx
	notl	%esi
	andl	%ebx, %esi
	orl	%ecx, %esi
	movl	%esi, (%rax,%r9,4)
	addq	$1, %r9
	cmpq	$16, %r9
	jne	.LBB8_3
	jmp	.LBB8_5
.LBB8_4:
	movzbl	3219(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm0, %xmm1      # xmm1 = xmm0[0,0,2,3,4,5,6,7]
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pslld	$23, %xmm1
	movdqa	.LCPI8_0(%rip), %xmm2   # xmm2 = [1065353216,1065353216,1065353216,1065353216]
	paddd	%xmm2, %xmm1
	cvttps2dq	%xmm1, %xmm3
	pcmpeqd	%xmm1, %xmm1
	pcmpeqd	%xmm4, %xmm4
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movdqu	(%rax), %xmm5
	movdqu	16(%rax), %xmm3
	movdqa	%xmm5, %xmm6
	psrld	$1, %xmm6
	pand	%xmm4, %xmm6
	pandn	%xmm5, %xmm4
	por	%xmm6, %xmm4
	movdqu	%xmm4, (%rax)
	movzbl	3218(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm5
	punpcklbw	%xmm5, %xmm5    # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm5, %xmm5      # xmm5 = xmm5[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	pslld	$23, %xmm5
	paddd	%xmm2, %xmm5
	cvttps2dq	%xmm5, %xmm6
	pcmpeqd	%xmm5, %xmm5
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6      # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	movdqa	%xmm4, %xmm6
	psrld	$1, %xmm6
	pand	%xmm5, %xmm6
	pandn	%xmm4, %xmm5
	por	%xmm6, %xmm5
	movdqu	%xmm5, (%rax)
	movzbl	3217(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm4
	punpcklbw	%xmm4, %xmm4    # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm4, %xmm4      # xmm4 = xmm4[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pslld	$23, %xmm4
	paddd	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm6
	pcmpeqd	%xmm4, %xmm4
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6      # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	movdqa	%xmm5, %xmm6
	psrld	$1, %xmm6
	pand	%xmm4, %xmm6
	pandn	%xmm5, %xmm4
	por	%xmm6, %xmm4
	movdqu	%xmm4, (%rax)
	movzbl	3216(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm5
	punpcklbw	%xmm5, %xmm5    # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm5, %xmm5      # xmm5 = xmm5[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	pslld	$23, %xmm5
	paddd	%xmm2, %xmm5
	cvttps2dq	%xmm5, %xmm5
	pcmpeqd	%xmm6, %xmm6
	pmuludq	%xmm5, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movdqa	%xmm4, %xmm5
	psrld	$1, %xmm5
	pand	%xmm6, %xmm5
	pandn	%xmm4, %xmm6
	por	%xmm5, %xmm6
	movdqu	%xmm6, (%rax)
	movzbl	3219(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm4
	punpcklbw	%xmm4, %xmm4    # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm4, %xmm4      # xmm4 = xmm4[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pslld	$23, %xmm4
	paddd	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm5
	pcmpeqd	%xmm4, %xmm4
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqa	%xmm3, %xmm5
	psrld	$1, %xmm5
	pand	%xmm4, %xmm5
	pandn	%xmm3, %xmm4
	por	%xmm5, %xmm4
	movdqu	%xmm4, 16(%rax)
	movzbl	3218(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm3
	punpcklbw	%xmm3, %xmm3    # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm3, %xmm3      # xmm3 = xmm3[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	pslld	$23, %xmm3
	paddd	%xmm2, %xmm3
	cvttps2dq	%xmm3, %xmm5
	pcmpeqd	%xmm3, %xmm3
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	movdqa	%xmm4, %xmm5
	psrld	$1, %xmm5
	pand	%xmm3, %xmm5
	pandn	%xmm4, %xmm3
	por	%xmm5, %xmm3
	movdqu	%xmm3, 16(%rax)
	movzbl	3217(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm4
	punpcklbw	%xmm4, %xmm4    # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm4, %xmm4      # xmm4 = xmm4[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pslld	$23, %xmm4
	paddd	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm5
	pcmpeqd	%xmm4, %xmm4
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqa	%xmm3, %xmm5
	psrld	$1, %xmm5
	pand	%xmm4, %xmm5
	pandn	%xmm3, %xmm4
	por	%xmm5, %xmm4
	movdqu	%xmm4, 16(%rax)
	movzbl	3216(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm3
	punpcklbw	%xmm3, %xmm3    # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm3, %xmm3      # xmm3 = xmm3[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	pslld	$23, %xmm3
	paddd	%xmm2, %xmm3
	cvttps2dq	%xmm3, %xmm3
	pcmpeqd	%xmm5, %xmm5
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	movdqa	%xmm4, %xmm3
	psrld	$1, %xmm3
	pand	%xmm5, %xmm3
	pandn	%xmm4, %xmm5
	por	%xmm3, %xmm5
	movdqu	%xmm5, 16(%rax)
	movdqu	32(%rax), %xmm4
	movzbl	3219(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm3
	punpcklbw	%xmm3, %xmm3    # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm3, %xmm3      # xmm3 = xmm3[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	pslld	$23, %xmm3
	paddd	%xmm2, %xmm3
	cvttps2dq	%xmm3, %xmm5
	pcmpeqd	%xmm3, %xmm3
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	movdqa	%xmm4, %xmm5
	psrld	$1, %xmm5
	pand	%xmm3, %xmm5
	pandn	%xmm4, %xmm3
	por	%xmm5, %xmm3
	movdqu	%xmm3, 32(%rax)
	movzbl	3218(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm4
	punpcklbw	%xmm4, %xmm4    # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm4, %xmm4      # xmm4 = xmm4[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pslld	$23, %xmm4
	paddd	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm5
	pcmpeqd	%xmm4, %xmm4
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqa	%xmm3, %xmm5
	psrld	$1, %xmm5
	pand	%xmm4, %xmm5
	pandn	%xmm3, %xmm4
	por	%xmm5, %xmm4
	movdqu	%xmm4, 32(%rax)
	movzbl	3217(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm3
	punpcklbw	%xmm3, %xmm3    # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm3, %xmm3      # xmm3 = xmm3[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	pslld	$23, %xmm3
	paddd	%xmm2, %xmm3
	cvttps2dq	%xmm3, %xmm5
	pcmpeqd	%xmm3, %xmm3
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	movdqa	%xmm4, %xmm5
	psrld	$1, %xmm5
	pand	%xmm3, %xmm5
	pandn	%xmm4, %xmm3
	por	%xmm5, %xmm3
	movdqu	%xmm3, 32(%rax)
	movzbl	3216(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm4
	punpcklbw	%xmm4, %xmm4    # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm4, %xmm4      # xmm4 = xmm4[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pslld	$23, %xmm4
	paddd	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm4
	pcmpeqd	%xmm5, %xmm5
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movdqa	%xmm3, %xmm4
	psrld	$1, %xmm4
	pand	%xmm5, %xmm4
	pandn	%xmm3, %xmm5
	por	%xmm4, %xmm5
	movdqu	%xmm5, 32(%rax)
	movdqu	48(%rax), %xmm4
	movzbl	3219(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm3
	punpcklbw	%xmm3, %xmm3    # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm3, %xmm3      # xmm3 = xmm3[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	pslld	$23, %xmm3
	paddd	%xmm2, %xmm3
	cvttps2dq	%xmm3, %xmm5
	pcmpeqd	%xmm3, %xmm3
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	movdqa	%xmm4, %xmm5
	psrld	$1, %xmm5
	pand	%xmm3, %xmm5
	pandn	%xmm4, %xmm3
	por	%xmm5, %xmm3
	movdqu	%xmm3, 48(%rax)
	movzbl	3218(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm4
	punpcklbw	%xmm4, %xmm4    # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm4, %xmm4      # xmm4 = xmm4[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pslld	$23, %xmm4
	paddd	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm5
	pcmpeqd	%xmm4, %xmm4
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqa	%xmm3, %xmm5
	psrld	$1, %xmm5
	pand	%xmm4, %xmm5
	pandn	%xmm3, %xmm4
	por	%xmm5, %xmm4
	movdqu	%xmm4, 48(%rax)
	movzbl	3217(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm3
	punpcklbw	%xmm3, %xmm3    # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm3, %xmm3      # xmm3 = xmm3[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	pslld	$23, %xmm3
	paddd	%xmm2, %xmm3
	cvttps2dq	%xmm3, %xmm5
	pcmpeqd	%xmm3, %xmm3
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	movdqa	%xmm4, %xmm5
	psrld	$1, %xmm5
	pand	%xmm3, %xmm5
	pandn	%xmm4, %xmm3
	por	%xmm5, %xmm3
	movdqu	%xmm3, 48(%rax)
	movzbl	3216(%rdi,%rdx,4), %ecx
	movd	%ecx, %xmm4
	punpcklbw	%xmm4, %xmm4    # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm4, %xmm4      # xmm4 = xmm4[0,0,2,3,4,5,6,7]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pslld	$23, %xmm4
	paddd	%xmm2, %xmm4
	cvttps2dq	%xmm4, %xmm0
	pcmpeqd	%xmm2, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	%xmm3, %xmm0
	psrld	$1, %xmm0
	pand	%xmm2, %xmm0
	pandn	%xmm3, %xmm2
	por	%xmm0, %xmm2
	movdqu	%xmm2, 48(%rax)
.LBB8_5:
	movq	%rdx, %r11
	andq	$-2, %r11
	addq	$2, %r11
	shrq	%r11
	movq	%rdx, %r8
	shrq	%r8
	leaq	1(%rdx), %r10
	shrq	%r10
	testq	%r11, %r11
	je	.LBB8_15
# %bb.6:
	leaq	-1(%r11), %r9
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_17
# %bb.7:
	xorl	%ecx, %ecx
	jmp	.LBB8_8
.LBB8_15:
	testb	$1, %dl
	je	.LBB8_153
# %bb.16:
	movzbl	(%rax,%r10), %ecx
	shlq	$4, %r8
	addq	%r8, %rdi
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, (%rax,%r10)
	movzbl	4(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 4(%rax,%r10)
	movzbl	8(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 8(%rax,%r10)
	movzbl	12(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 12(%rax,%r10)
	movzbl	16(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 16(%rax,%r10)
	movzbl	20(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 20(%rax,%r10)
	movzbl	24(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 24(%rax,%r10)
	movzbl	28(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 28(%rax,%r10)
	movzbl	32(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 32(%rax,%r10)
	movzbl	36(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 36(%rax,%r10)
	movzbl	40(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 40(%rax,%r10)
	movzbl	44(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 44(%rax,%r10)
	movzbl	48(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 48(%rax,%r10)
	movzbl	52(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 52(%rax,%r10)
	movzbl	56(%rax,%r10), %ecx
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 56(%rax,%r10)
	movzbl	60(%rax,%r10), %ecx
	jmp	.LBB8_152
.LBB8_17:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_18:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, (%rax,%rcx)
	movzbl	1(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 1(%rax,%rcx)
	movzbl	2(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 2(%rax,%rcx)
	movzbl	3(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 3(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_18
.LBB8_8:
	testq	%r14, %r14
	je	.LBB8_11
# %bb.9:
	addq	%rax, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_10
.LBB8_11:
	testb	$1, %dl
	jne	.LBB8_12
# %bb.13:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_19
.LBB8_14:
	xorl	%ecx, %ecx
	jmp	.LBB8_21
.LBB8_12:
	movzbl	(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, (%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_14
.LBB8_19:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_20:                               # =>This Inner Loop Header: Depth=1
	movzbl	4(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 4(%rax,%rcx)
	movzbl	5(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 5(%rax,%rcx)
	movzbl	6(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 6(%rax,%rcx)
	movzbl	7(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 7(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_20
.LBB8_21:
	testq	%r14, %r14
	je	.LBB8_24
# %bb.22:
	addq	%rax, %rcx
	addq	$4, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_23:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_23
.LBB8_24:
	testb	$1, %dl
	jne	.LBB8_25
# %bb.26:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_28
.LBB8_27:
	xorl	%ecx, %ecx
	jmp	.LBB8_30
.LBB8_25:
	movzbl	4(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 4(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_27
.LBB8_28:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_29:                               # =>This Inner Loop Header: Depth=1
	movzbl	8(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 8(%rax,%rcx)
	movzbl	9(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 9(%rax,%rcx)
	movzbl	10(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 10(%rax,%rcx)
	movzbl	11(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 11(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_29
.LBB8_30:
	testq	%r14, %r14
	je	.LBB8_33
# %bb.31:
	addq	%rax, %rcx
	addq	$8, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_32:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_32
.LBB8_33:
	testb	$1, %dl
	jne	.LBB8_34
# %bb.35:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_37
.LBB8_36:
	xorl	%ecx, %ecx
	jmp	.LBB8_39
.LBB8_34:
	movzbl	8(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 8(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_36
.LBB8_37:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_38:                               # =>This Inner Loop Header: Depth=1
	movzbl	12(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 12(%rax,%rcx)
	movzbl	13(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 13(%rax,%rcx)
	movzbl	14(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 14(%rax,%rcx)
	movzbl	15(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 15(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_38
.LBB8_39:
	testq	%r14, %r14
	je	.LBB8_42
# %bb.40:
	addq	%rax, %rcx
	addq	$12, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_41:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_41
.LBB8_42:
	testb	$1, %dl
	jne	.LBB8_43
# %bb.44:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_46
.LBB8_45:
	xorl	%ecx, %ecx
	jmp	.LBB8_48
.LBB8_43:
	movzbl	12(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 12(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_45
.LBB8_46:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_47:                               # =>This Inner Loop Header: Depth=1
	movzbl	16(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 16(%rax,%rcx)
	movzbl	17(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 17(%rax,%rcx)
	movzbl	18(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 18(%rax,%rcx)
	movzbl	19(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 19(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_47
.LBB8_48:
	testq	%r14, %r14
	je	.LBB8_51
# %bb.49:
	addq	%rax, %rcx
	addq	$16, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_50:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_50
.LBB8_51:
	testb	$1, %dl
	jne	.LBB8_52
# %bb.53:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_55
.LBB8_54:
	xorl	%ecx, %ecx
	jmp	.LBB8_57
.LBB8_52:
	movzbl	16(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 16(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_54
.LBB8_55:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_56:                               # =>This Inner Loop Header: Depth=1
	movzbl	20(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 20(%rax,%rcx)
	movzbl	21(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 21(%rax,%rcx)
	movzbl	22(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 22(%rax,%rcx)
	movzbl	23(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 23(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_56
.LBB8_57:
	testq	%r14, %r14
	je	.LBB8_60
# %bb.58:
	addq	%rax, %rcx
	addq	$20, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_59:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_59
.LBB8_60:
	testb	$1, %dl
	jne	.LBB8_61
# %bb.62:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_64
.LBB8_63:
	xorl	%ecx, %ecx
	jmp	.LBB8_66
.LBB8_61:
	movzbl	20(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 20(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_63
.LBB8_64:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_65:                               # =>This Inner Loop Header: Depth=1
	movzbl	24(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 24(%rax,%rcx)
	movzbl	25(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 25(%rax,%rcx)
	movzbl	26(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 26(%rax,%rcx)
	movzbl	27(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 27(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_65
.LBB8_66:
	testq	%r14, %r14
	je	.LBB8_69
# %bb.67:
	addq	%rax, %rcx
	addq	$24, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_68:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_68
.LBB8_69:
	testb	$1, %dl
	jne	.LBB8_70
# %bb.71:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_73
.LBB8_72:
	xorl	%ecx, %ecx
	jmp	.LBB8_75
.LBB8_70:
	movzbl	24(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 24(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_72
.LBB8_73:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_74:                               # =>This Inner Loop Header: Depth=1
	movzbl	28(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 28(%rax,%rcx)
	movzbl	29(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 29(%rax,%rcx)
	movzbl	30(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 30(%rax,%rcx)
	movzbl	31(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 31(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_74
.LBB8_75:
	testq	%r14, %r14
	je	.LBB8_78
# %bb.76:
	addq	%rax, %rcx
	addq	$28, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_77:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_77
.LBB8_78:
	testb	$1, %dl
	jne	.LBB8_79
# %bb.80:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_82
.LBB8_81:
	xorl	%ecx, %ecx
	jmp	.LBB8_84
.LBB8_79:
	movzbl	28(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 28(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_81
.LBB8_82:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_83:                               # =>This Inner Loop Header: Depth=1
	movzbl	32(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 32(%rax,%rcx)
	movzbl	33(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 33(%rax,%rcx)
	movzbl	34(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 34(%rax,%rcx)
	movzbl	35(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 35(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_83
.LBB8_84:
	testq	%r14, %r14
	je	.LBB8_87
# %bb.85:
	addq	%rax, %rcx
	addq	$32, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_86:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_86
.LBB8_87:
	testb	$1, %dl
	jne	.LBB8_88
# %bb.89:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_91
.LBB8_90:
	xorl	%ecx, %ecx
	jmp	.LBB8_93
.LBB8_88:
	movzbl	32(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 32(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_90
.LBB8_91:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_92:                               # =>This Inner Loop Header: Depth=1
	movzbl	36(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 36(%rax,%rcx)
	movzbl	37(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 37(%rax,%rcx)
	movzbl	38(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 38(%rax,%rcx)
	movzbl	39(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 39(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_92
.LBB8_93:
	testq	%r14, %r14
	je	.LBB8_96
# %bb.94:
	addq	%rax, %rcx
	addq	$36, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_95:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_95
.LBB8_96:
	testb	$1, %dl
	jne	.LBB8_97
# %bb.98:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_100
.LBB8_99:
	xorl	%ecx, %ecx
	jmp	.LBB8_102
.LBB8_97:
	movzbl	36(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 36(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_99
.LBB8_100:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_101:                              # =>This Inner Loop Header: Depth=1
	movzbl	40(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 40(%rax,%rcx)
	movzbl	41(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 41(%rax,%rcx)
	movzbl	42(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 42(%rax,%rcx)
	movzbl	43(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 43(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_101
.LBB8_102:
	testq	%r14, %r14
	je	.LBB8_105
# %bb.103:
	addq	%rax, %rcx
	addq	$40, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_104:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_104
.LBB8_105:
	testb	$1, %dl
	jne	.LBB8_106
# %bb.107:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_109
.LBB8_108:
	xorl	%ecx, %ecx
	jmp	.LBB8_111
.LBB8_106:
	movzbl	40(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 40(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_108
.LBB8_109:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_110:                              # =>This Inner Loop Header: Depth=1
	movzbl	44(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 44(%rax,%rcx)
	movzbl	45(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 45(%rax,%rcx)
	movzbl	46(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 46(%rax,%rcx)
	movzbl	47(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 47(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_110
.LBB8_111:
	testq	%r14, %r14
	je	.LBB8_114
# %bb.112:
	addq	%rax, %rcx
	addq	$44, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_113:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_113
.LBB8_114:
	testb	$1, %dl
	jne	.LBB8_115
# %bb.116:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_118
.LBB8_117:
	xorl	%ecx, %ecx
	jmp	.LBB8_120
.LBB8_115:
	movzbl	44(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 44(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_117
.LBB8_118:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_119:                              # =>This Inner Loop Header: Depth=1
	movzbl	48(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 48(%rax,%rcx)
	movzbl	49(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 49(%rax,%rcx)
	movzbl	50(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 50(%rax,%rcx)
	movzbl	51(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 51(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_119
.LBB8_120:
	testq	%r14, %r14
	je	.LBB8_123
# %bb.121:
	addq	%rax, %rcx
	addq	$48, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_122:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_122
.LBB8_123:
	testb	$1, %dl
	jne	.LBB8_124
# %bb.125:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_127
.LBB8_126:
	xorl	%ecx, %ecx
	jmp	.LBB8_129
.LBB8_124:
	movzbl	48(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 48(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_126
.LBB8_127:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_128:                              # =>This Inner Loop Header: Depth=1
	movzbl	52(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 52(%rax,%rcx)
	movzbl	53(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 53(%rax,%rcx)
	movzbl	54(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 54(%rax,%rcx)
	movzbl	55(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 55(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_128
.LBB8_129:
	testq	%r14, %r14
	je	.LBB8_132
# %bb.130:
	addq	%rax, %rcx
	addq	$52, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_131:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_131
.LBB8_132:
	testb	$1, %dl
	jne	.LBB8_133
# %bb.134:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_136
.LBB8_135:
	xorl	%ecx, %ecx
	jmp	.LBB8_138
.LBB8_133:
	movzbl	52(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 52(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_135
.LBB8_136:
	movq	%r11, %r15
	subq	%r14, %r15
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	shlq	$8, %rsi
	addq	%rdi, %rsi
	.p2align	4, 0x90
.LBB8_137:                              # =>This Inner Loop Header: Depth=1
	movzbl	56(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 56(%rax,%rcx)
	movzbl	57(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 57(%rax,%rcx)
	movzbl	58(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 58(%rax,%rcx)
	movzbl	59(%rax,%rcx), %ebx
	movzbl	1552(%rbx,%rsi), %ebx
	movb	%bl, 59(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r15
	jne	.LBB8_137
.LBB8_138:
	testq	%r14, %r14
	je	.LBB8_141
# %bb.139:
	addq	%rax, %rcx
	addq	$56, %rcx
	xorl	%esi, %esi
	movq	%rdx, %r15
	shlq	$8, %r15
	addq	%rdi, %r15
	.p2align	4, 0x90
.LBB8_140:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movzbl	1552(%rbx,%r15), %ebx
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB8_140
.LBB8_141:
	testb	$1, %dl
	jne	.LBB8_142
# %bb.143:
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jae	.LBB8_145
.LBB8_144:
	xorl	%ecx, %ecx
	jmp	.LBB8_147
.LBB8_142:
	movzbl	56(%rax,%r10), %ecx
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	%rdi, %rsi
	movb	3136(%rcx,%rsi), %cl
	movb	%cl, 56(%rax,%r10)
	movl	%r11d, %r14d
	andl	$3, %r14d
	cmpq	$3, %r9
	jb	.LBB8_144
.LBB8_145:
	subq	%r14, %r11
	xorl	%ecx, %ecx
	movq	%rdx, %r9
	shlq	$8, %r9
	addq	%rdi, %r9
	.p2align	4, 0x90
.LBB8_146:                              # =>This Inner Loop Header: Depth=1
	movzbl	60(%rax,%rcx), %esi
	movzbl	1552(%rsi,%r9), %ebx
	movb	%bl, 60(%rax,%rcx)
	movzbl	61(%rax,%rcx), %esi
	movzbl	1552(%rsi,%r9), %ebx
	movb	%bl, 61(%rax,%rcx)
	movzbl	62(%rax,%rcx), %esi
	movzbl	1552(%rsi,%r9), %ebx
	movb	%bl, 62(%rax,%rcx)
	movzbl	63(%rax,%rcx), %esi
	movzbl	1552(%rsi,%r9), %ebx
	movb	%bl, 63(%rax,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r11
	jne	.LBB8_146
.LBB8_147:
	testq	%r14, %r14
	je	.LBB8_150
# %bb.148:
	leaq	(%rax,%rcx), %r11
	addq	$60, %r11
	xorl	%ebx, %ebx
	movq	%rdx, %r9
	shlq	$8, %r9
	addq	%rdi, %r9
	.p2align	4, 0x90
.LBB8_149:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r11,%rbx), %esi
	movzbl	1552(%rsi,%r9), %ecx
	movb	%cl, (%r11,%rbx)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.LBB8_149
.LBB8_150:
	testb	$1, %dl
	je	.LBB8_153
# %bb.151:
	movzbl	60(%rax,%r10), %ecx
	shlq	$4, %r8
	addq	%r8, %rdi
.LBB8_152:
	movb	3136(%rcx,%rdi), %cl
	movb	%cl, 60(%rax,%r10)
.LBB8_153:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN9YaoCipher7unroundEPjm, .Lfunc_end8-_ZN9YaoCipher7unroundEPjm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9YaoCipher18reverse_substituteEPhm # -- Begin function _ZN9YaoCipher18reverse_substituteEPhm
	.p2align	4, 0x90
	.type	_ZN9YaoCipher18reverse_substituteEPhm,@function
_ZN9YaoCipher18reverse_substituteEPhm:  # @_ZN9YaoCipher18reverse_substituteEPhm
	.cfi_startproc
# %bb.0:
	movq	%rdx, %r8
	andq	$-2, %r8
	leaq	2(%r8), %r10
	shrq	%r10
	je	.LBB9_6
# %bb.1:
	leaq	-1(%r10), %rax
	movl	%r10d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rax
	jae	.LBB9_9
# %bb.2:
	xorl	%r11d, %r11d
	jmp	.LBB9_3
.LBB9_9:
	subq	%r9, %r10
	xorl	%r11d, %r11d
	movq	%rdx, %rcx
	shlq	$8, %rcx
	addq	%rdi, %rcx
	.p2align	4, 0x90
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%r11), %eax
	movzbl	1552(%rax,%rcx), %eax
	movb	%al, (%rsi,%r11)
	movzbl	1(%rsi,%r11), %eax
	movzbl	1552(%rax,%rcx), %eax
	movb	%al, 1(%rsi,%r11)
	movzbl	2(%rsi,%r11), %eax
	movzbl	1552(%rax,%rcx), %eax
	movb	%al, 2(%rsi,%r11)
	movzbl	3(%rsi,%r11), %eax
	movzbl	1552(%rax,%rcx), %eax
	movb	%al, 3(%rsi,%r11)
	addq	$4, %r11
	cmpq	%r11, %r10
	jne	.LBB9_10
.LBB9_3:
	testq	%r9, %r9
	je	.LBB9_6
# %bb.4:
	addq	%rsi, %r11
	xorl	%ecx, %ecx
	movq	%rdx, %r10
	shlq	$8, %r10
	addq	%rdi, %r10
	.p2align	4, 0x90
.LBB9_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r11,%rcx), %eax
	movzbl	1552(%rax,%r10), %eax
	movb	%al, (%r11,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.LBB9_5
.LBB9_6:
	testb	$1, %dl
	je	.LBB9_8
# %bb.7:
	addq	$1, %rdx
	shrq	%rdx
	movzbl	(%rsi,%rdx), %eax
	leaq	(%rdi,%r8,8), %rcx
	movb	3136(%rax,%rcx), %al
	movb	%al, (%rsi,%rdx)
.LBB9_8:
	retq
.Lfunc_end9:
	.size	_ZN9YaoCipher18reverse_substituteEPhm, .Lfunc_end9-_ZN9YaoCipher18reverse_substituteEPhm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9YaoCipher13encrypt_blockEPj # -- Begin function _ZN9YaoCipher13encrypt_blockEPj
	.p2align	4, 0x90
	.type	_ZN9YaoCipher13encrypt_blockEPj,@function
_ZN9YaoCipher13encrypt_blockEPj:        # @_ZN9YaoCipher13encrypt_blockEPj
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%edx, %edx
	callq	_ZN9YaoCipher5roundEPjm
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher5roundEPjm
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher5roundEPjm
	movl	$3, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher5roundEPjm
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher5roundEPjm
	movl	$5, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher5roundEPjm
	movq	3264(%r14), %rax
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movups	%xmm0, (%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm3, 48(%rax)
	movq	3264(%r14), %rax
	movzbl	3184(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, (%rbx)
	movzbl	3185(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 4(%rbx)
	movzbl	3186(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 8(%rbx)
	movzbl	3187(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 12(%rbx)
	movzbl	3188(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 16(%rbx)
	movzbl	3189(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 20(%rbx)
	movzbl	3190(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 24(%rbx)
	movzbl	3191(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 28(%rbx)
	movzbl	3192(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 32(%rbx)
	movzbl	3193(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 36(%rbx)
	movzbl	3194(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 40(%rbx)
	movzbl	3195(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 44(%rbx)
	movzbl	3196(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 48(%rbx)
	movzbl	3197(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 52(%rbx)
	movzbl	3198(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 56(%rbx)
	movzbl	3199(%r14), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 60(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	_ZN9YaoCipher13encrypt_blockEPj, .Lfunc_end10-_ZN9YaoCipher13encrypt_blockEPj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9YaoCipher13decrypt_blockEPj # -- Begin function _ZN9YaoCipher13decrypt_blockEPj
	.p2align	4, 0x90
	.type	_ZN9YaoCipher13decrypt_blockEPj,@function
_ZN9YaoCipher13decrypt_blockEPj:        # @_ZN9YaoCipher13decrypt_blockEPj
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$5, %edx
	callq	_ZN9YaoCipher7unroundEPjm
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher7unroundEPjm
	movl	$3, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher7unroundEPjm
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher7unroundEPjm
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher7unroundEPjm
	movq	%r14, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	_ZN9YaoCipher7unroundEPjm
	movq	3264(%r14), %rax
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movups	%xmm0, (%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm3, 48(%rax)
	movq	3264(%r14), %rax
	movzbl	3200(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, (%rbx)
	movzbl	3201(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 4(%rbx)
	movzbl	3202(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 8(%rbx)
	movzbl	3203(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 12(%rbx)
	movzbl	3204(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 16(%rbx)
	movzbl	3205(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 20(%rbx)
	movzbl	3206(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 24(%rbx)
	movzbl	3207(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 28(%rbx)
	movzbl	3208(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 32(%rbx)
	movzbl	3209(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 36(%rbx)
	movzbl	3210(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 40(%rbx)
	movzbl	3211(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 44(%rbx)
	movzbl	3212(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 48(%rbx)
	movzbl	3213(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 52(%rbx)
	movzbl	3214(%r14), %ecx
	movl	(%rax,%rcx,4), %ecx
	movl	%ecx, 56(%rbx)
	movzbl	3215(%r14), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 60(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	_ZN9YaoCipher13decrypt_blockEPj, .Lfunc_end11-_ZN9YaoCipher13decrypt_blockEPj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9YaoCipher7encryptEPjm # -- Begin function _ZN9YaoCipher7encryptEPjm
	.p2align	4, 0x90
	.type	_ZN9YaoCipher7encryptEPjm,@function
_ZN9YaoCipher7encryptEPjm:              # @_ZN9YaoCipher7encryptEPjm
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	testq	%rdx, %rdx
	je	.LBB12_3
# %bb.1:
	movq	%rdx, %r12
	movq	%rdi, %r15
	xorl	%r13d, %r13d
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher13encrypt_blockEPj
	addq	$16, %r13
	addq	$64, %rbx
	cmpq	%r12, %r13
	jb	.LBB12_2
.LBB12_3:
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	_ZN9YaoCipher7encryptEPjm, .Lfunc_end12-_ZN9YaoCipher7encryptEPjm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9YaoCipher7decryptEPjm # -- Begin function _ZN9YaoCipher7decryptEPjm
	.p2align	4, 0x90
	.type	_ZN9YaoCipher7decryptEPjm,@function
_ZN9YaoCipher7decryptEPjm:              # @_ZN9YaoCipher7decryptEPjm
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	testq	%rdx, %rdx
	je	.LBB13_3
# %bb.1:
	movq	%rdx, %r12
	movq	%rdi, %r15
	xorl	%r13d, %r13d
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_ZN9YaoCipher13decrypt_blockEPj
	addq	$16, %r13
	addq	$64, %rbx
	cmpq	%r12, %r13
	jb	.LBB13_2
.LBB13_3:
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_ZN9YaoCipher7decryptEPjm, .Lfunc_end13-_ZN9YaoCipher7decryptEPjm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9duthomhas6csprng9exceptionC2EPKc,"axG",@progbits,_ZN9duthomhas6csprng9exceptionC2EPKc,comdat
	.weak	_ZN9duthomhas6csprng9exceptionC2EPKc # -- Begin function _ZN9duthomhas6csprng9exceptionC2EPKc
	.p2align	4, 0x90
	.type	_ZN9duthomhas6csprng9exceptionC2EPKc,@function
_ZN9duthomhas6csprng9exceptionC2EPKc:   # @_ZN9duthomhas6csprng9exceptionC2EPKc
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZNSt13runtime_errorC2EPKc
	movq	$_ZTVN9duthomhas6csprng9exceptionE+16, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	_ZN9duthomhas6csprng9exceptionC2EPKc, .Lfunc_end14-_ZN9duthomhas6csprng9exceptionC2EPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9duthomhas6csprng9exceptionD0Ev,"axG",@progbits,_ZN9duthomhas6csprng9exceptionD0Ev,comdat
	.weak	_ZN9duthomhas6csprng9exceptionD0Ev # -- Begin function _ZN9duthomhas6csprng9exceptionD0Ev
	.p2align	4, 0x90
	.type	_ZN9duthomhas6csprng9exceptionD0Ev,@function
_ZN9duthomhas6csprng9exceptionD0Ev:     # @_ZN9duthomhas6csprng9exceptionD0Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZNSt13runtime_errorD2Ev
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end15:
	.size	_ZN9duthomhas6csprng9exceptionD0Ev, .Lfunc_end15-_ZN9duthomhas6csprng9exceptionD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end16:
	.size	__clang_call_terminate, .Lfunc_end16-__clang_call_terminate
                                        # -- End function
	.section	.text._Z14gen_bit_tablesILi24EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t,"axG",@progbits,_Z14gen_bit_tablesILi24EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t,comdat
	.weak	_Z14gen_bit_tablesILi24EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t # -- Begin function _Z14gen_bit_tablesILi24EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t
	.p2align	4, 0x90
	.type	_Z14gen_bit_tablesILi24EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t,@function
_Z14gen_bit_tablesILi24EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t: # @_Z14gen_bit_tablesILi24EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	%rdi, 88(%rsp)
	movq	%rsi, 96(%rsp)
	leaq	88(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %r13
	movq	%rdx, %r12
	movq	%rax, 32(%rsp)
	movq	%rdx, 40(%rsp)
	leaq	32(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rbx
	movq	%rdx, %rbp
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsp, %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	_Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t
	shlq	$32, %rax
	movl	%r14d, %ebx
	orq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	_Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t
	movl	(%rsp), %eax
	movq	%rbx, 104(%rsp)
	movl	%eax, 112(%rsp)
	movq	%rbx, 48(%rsp)
	movl	%eax, 56(%rsp)
	movq	%r15, 32(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, 40(%rsp)
	leaq	32(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, 64(%rsp)
	movq	%rdx, 72(%rsp)
	xorq	%rdx, %rax
	movups	.L__const._Z13gen_rnd_arrayILi21EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movq	.L__const._Z13gen_rnd_arrayILi21EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array+13(%rip), %rcx
	movq	%rcx, 13(%rsp)
	movl	$20, %ebp
	leaq	64(%rsp), %rbx
	.p2align	4, 0x90
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	divq	%rbp
	movzbl	(%rsp,%rdx), %eax
	movzbl	(%rsp,%rbp), %ecx
	movb	%cl, (%rsp,%rdx)
	movb	%al, (%rsp,%rbp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, 64(%rsp)
	movq	%rdx, 72(%rsp)
	xorq	%rdx, %rax
	cmpq	$1, %rbp
	leaq	-1(%rbp), %rbp
	ja	.LBB17_1
# %bb.2:
	movl	(%rsp), %eax
	movl	%eax, 60(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rdx
	addq	$120, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	_Z14gen_bit_tablesILi24EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t, .Lfunc_end17-_Z14gen_bit_tablesILi24EESt5arrayIS0_IhLm4EEXdvmiT_Li8ELi4EEE13XXH128_hash_t
	.cfi_endproc
                                        # -- End function
	.section	.text._Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t,"axG",@progbits,_Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t,comdat
	.weak	_Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t # -- Begin function _Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t
	.p2align	4, 0x90
	.type	_Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t,@function
_Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t: # @_Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	%rsi, 24(%rsp)
	movq	%rdx, 32(%rsp)
	leaq	24(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	xorl	%edx, %eax
	movups	.L__const._Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array(%rip), %xmm0
	movups	%xmm0, (%rbx)
	movb	.L__const._Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array+16(%rip), %cl
	movb	%cl, 16(%rbx)
	andl	$15, %eax
	movb	(%rbx,%rax), %cl
	movb	$16, (%rbx,%rax)
	movb	%cl, 16(%rbx)
	leaq	8(%rsp), %r14
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-8608480567731124087, %rdx # imm = 0x8888888888888889
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rax,%rax,2), %rax
	subq	%rax, %rcx
	movb	(%rbx,%rcx), %al
	movb	15(%rbx), %dl
	movb	%dl, (%rbx,%rcx)
	movb	%al, 15(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	%rax
	movabsq	$5270498306774157605, %rdx # imm = 0x4924924924924925
	mulq	%rdx
	shrq	%rdx
	movq	%rdx, %rax
	shlq	$4, %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	addq	%rdx, %rsi
	addq	%rcx, %rsi
	movb	(%rbx,%rsi), %al
	movb	14(%rbx), %cl
	movb	%cl, (%rbx,%rsi)
	movb	%al, 14(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	xorq	%rdx, %rcx
	movabsq	$5675921253449092805, %rdx # imm = 0x4EC4EC4EC4EC4EC5
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$2, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdx,%rax,4), %rax
	subq	%rax, %rcx
	movb	(%rbx,%rcx), %al
	movb	13(%rbx), %dl
	movb	%dl, (%rbx,%rcx)
	movb	%al, 13(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-6148914691236517205, %r15 # imm = 0xAAAAAAAAAAAAAAAB
	movq	%rcx, %rax
	mulq	%r15
	shrq	%rdx
	andq	$-4, %rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	movb	(%rbx,%rcx), %al
	movb	12(%rbx), %dl
	movb	%dl, (%rbx,%rcx)
	movb	%al, 12(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	xorq	%rdx, %rcx
	movabsq	$3353953467947191203, %rdx # imm = 0x2E8BA2E8BA2E8BA3
	movq	%rcx, %rax
	mulq	%rdx
	shrq	%rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rdx,%rax,2), %rax
	subq	%rax, %rcx
	movb	(%rbx,%rcx), %al
	movb	11(%rbx), %dl
	movb	%dl, (%rbx,%rcx)
	movb	%al, 11(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-3689348814741910323, %r12 # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rcx, %rax
	mulq	%r12
	shrq	$2, %rdx
	andq	$-2, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rcx
	movb	(%rbx,%rcx), %al
	movb	10(%rbx), %dl
	movb	%dl, (%rbx,%rcx)
	movb	%al, 10(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rdx, %rsi
	movq	%rax, 8(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-2049638230412172401, %rdx # imm = 0xE38E38E38E38E38F
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rsi, 16(%rsp)
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,8), %rax
	subq	%rax, %rcx
	movb	(%rbx,%rcx), %al
	movb	9(%rbx), %dl
	movb	%dl, (%rbx,%rcx)
	movb	%al, 9(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	xorl	%edx, %eax
	andl	$7, %eax
	movb	(%rbx,%rax), %cl
	movb	8(%rbx), %dl
	movb	%dl, (%rbx,%rax)
	movb	%cl, 8(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rdx, %rsi
	movq	%rax, 8(%rsp)
	xorq	%rdx, %rcx
	movabsq	$2635249153387078803, %rdx # imm = 0x2492492492492493
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$2, %rax
	leaq	(,%rax,8), %rdx
	subq	%rdx, %rax
	addq	%rcx, %rax
	movb	(%rbx,%rax), %cl
	movb	7(%rbx), %dl
	movb	%dl, (%rbx,%rax)
	movb	%cl, 7(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%r15
	shrq	%rdx
	andq	$-2, %rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	movb	(%rbx,%rcx), %al
	movb	6(%rbx), %dl
	movb	%dl, (%rbx,%rcx)
	movb	%al, 6(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rdx, %rsi
	movq	%rax, 8(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%r12
	movq	%rsi, 16(%rsp)
	shrq	$2, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rcx
	movb	(%rbx,%rcx), %al
	movb	5(%rbx), %dl
	movb	%dl, (%rbx,%rcx)
	movb	%al, 5(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	xorl	%edx, %eax
	andl	$3, %eax
	movb	(%rbx,%rax), %cl
	movb	4(%rbx), %dl
	movb	%dl, (%rbx,%rax)
	movb	%cl, 4(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rdx, %rsi
	movq	%rax, 8(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%r15
	movq	%rsi, 16(%rsp)
	shrq	%rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	movb	(%rbx,%rcx), %al
	movb	3(%rbx), %dl
	movb	%dl, (%rbx,%rcx)
	movb	%al, 3(%rbx)
	movl	$16, %esi
	movq	%r14, %rdi
	callq	XXH3_128bits
	xorl	%edx, %eax
	andl	$1, %eax
	movb	(%rbx,%rax), %cl
	movb	2(%rbx), %dl
	movb	%dl, (%rbx,%rax)
	movb	%cl, 2(%rbx)
	movb	(%rbx), %al
	movb	1(%rbx), %cl
	movb	%cl, (%rbx)
	movb	%al, 1(%rbx)
	movq	%rbx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	_Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t, .Lfunc_end18-_Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t
	.cfi_endproc
                                        # -- End function
	.section	.text._Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t,"axG",@progbits,_Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t,comdat
	.weak	_Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t # -- Begin function _Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t
	.p2align	4, 0x90
	.type	_Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t,@function
_Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t: # @_Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, 40(%rsp)
	movq	%rsi, 48(%rsp)
	leaq	40(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movq	.L__const._Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	.L__const._Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array+5(%rip), %rsi
	movabsq	$-6148914691236517205, %r14 # imm = 0xAAAAAAAAAAAAAAAB
	movq	%rcx, %rax
	mulq	%r14
	movq	%rsi, 13(%rsp)
	shrq	%rdx
	andq	$-4, %rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	movb	8(%rsp,%rcx), %al
	movb	$12, 8(%rsp,%rcx)
	movb	%al, 20(%rsp)
	leaq	24(%rsp), %rbx
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movabsq	$3353953467947191203, %rdx # imm = 0x2E8BA2E8BA2E8BA3
	movq	%rcx, %rax
	mulq	%rdx
	shrq	%rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rdx,%rax,2), %rax
	subq	%rax, %rcx
	movb	8(%rsp,%rcx), %al
	movb	19(%rsp), %dl
	movb	%dl, 8(%rsp,%rcx)
	movb	%al, 19(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-3689348814741910323, %r15 # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rcx, %rax
	mulq	%r15
	shrq	$2, %rdx
	andq	$-2, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rcx
	movb	8(%rsp,%rcx), %al
	movb	18(%rsp), %dl
	movb	%dl, 8(%rsp,%rcx)
	movb	%al, 18(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rdx, %rsi
	movq	%rax, 24(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-2049638230412172401, %rdx # imm = 0xE38E38E38E38E38F
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rsi, 32(%rsp)
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,8), %rax
	subq	%rax, %rcx
	movb	8(%rsp,%rcx), %al
	movb	17(%rsp), %dl
	movb	%dl, 8(%rsp,%rcx)
	movb	%al, 17(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorl	%edx, %eax
	andl	$7, %eax
	movb	8(%rsp,%rax), %cl
	movb	16(%rsp), %dl
	movb	%dl, 8(%rsp,%rax)
	movb	%cl, 16(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movabsq	$2635249153387078803, %rdx # imm = 0x2492492492492493
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$2, %rax
	leaq	(,%rax,8), %rdx
	subq	%rdx, %rax
	addq	%rcx, %rax
	leaq	8(%rsp), %r12
	orq	%r12, %rax
	movb	(%rax), %cl
	movb	15(%rsp), %dl
	movb	%dl, (%rax)
	movb	%cl, 15(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%r14
	shrq	%rdx
	andq	$-2, %rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	orq	%r12, %rcx
	movb	(%rcx), %al
	movb	14(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 14(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%r15
	shrq	$2, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rcx
	orq	%r12, %rcx
	movb	(%rcx), %al
	movb	13(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 13(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorl	%edx, %eax
	andl	$3, %eax
	movb	8(%rsp,%rax), %cl
	movb	12(%rsp), %dl
	movb	%dl, 8(%rsp,%rax)
	movb	%cl, 12(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%r14
	shrq	%rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	orq	%r12, %rcx
	movb	(%rcx), %al
	movb	11(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 11(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	xorl	%edx, %eax
	andl	$1, %eax
	movb	8(%rsp,%rax), %cl
	movb	10(%rsp), %dl
	movb	%dl, 8(%rsp,%rax)
	movb	%cl, 10(%rsp)
	movb	8(%rsp), %al
	movb	9(%rsp), %cl
	movb	%cl, 8(%rsp)
	movb	%al, 9(%rsp)
	movq	8(%rsp), %rax
	movl	16(%rsp), %ecx
	movl	20(%rsp), %edx
	shlq	$32, %rdx
	orq	%rcx, %rdx
	addq	$56, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	_Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t, .Lfunc_end19-_Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t
	.cfi_endproc
                                        # -- End function
	.section	.text._Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t,"axG",@progbits,_Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t,comdat
	.weak	_Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t # -- Begin function _Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t
	.p2align	4, 0x90
	.type	_Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t,@function
_Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t: # @_Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, 32(%rsp)
	movq	%rsi, 40(%rsp)
	leaq	32(%rsp), %rdi
	movl	$16, %esi
	callq	XXH3_128bits
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	xorl	%edx, %eax
	movq	.L__const._Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array(%rip), %rcx
	movq	%rcx, (%rsp)
	movb	.L__const._Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array+8(%rip), %cl
	movb	%cl, 8(%rsp)
	andl	$7, %eax
	movb	(%rsp,%rax), %cl
	movb	$8, (%rsp,%rax)
	movb	%cl, 8(%rsp)
	leaq	16(%rsp), %rbx
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	xorq	%rdx, %rcx
	movabsq	$2635249153387078803, %rdx # imm = 0x2492492492492493
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$2, %rax
	leaq	(,%rax,8), %rdx
	subq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rsp, %r14
	orq	%r14, %rax
	movb	(%rax), %cl
	movb	7(%rsp), %dl
	movb	%dl, (%rax)
	movb	%cl, 7(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-6148914691236517205, %r15 # imm = 0xAAAAAAAAAAAAAAAB
	movq	%rcx, %rax
	mulq	%r15
	shrq	%rdx
	andq	$-2, %rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	6(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 6(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	xorq	%rdx, %rcx
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$2, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	5(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 5(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	xorl	%edx, %eax
	andl	$3, %eax
	movb	(%rsp,%rax), %cl
	movb	4(%rsp), %dl
	movb	%dl, (%rsp,%rax)
	movb	%cl, 4(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	movq	%rax, %rcx
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	xorq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%r15
	shrq	%rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	orq	%r14, %rcx
	movb	(%rcx), %al
	movb	3(%rsp), %dl
	movb	%dl, (%rcx)
	movb	%al, 3(%rsp)
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	XXH3_128bits
	xorl	%edx, %eax
	andl	$1, %eax
	movb	(%rsp,%rax), %cl
	movb	2(%rsp), %dl
	movb	%dl, (%rsp,%rax)
	movb	%cl, 2(%rsp)
	movb	(%rsp), %al
	movb	1(%rsp), %cl
	movb	%cl, (%rsp)
	movb	%al, 1(%rsp)
	movq	(%rsp), %rax
	movb	8(%rsp), %dl
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	_Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t, .Lfunc_end20-_Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_yao.cpp
	.type	_GLOBAL__sub_I_yao.cpp,@function
_GLOBAL__sub_I_yao.cpp:                 # @_GLOBAL__sub_I_yao.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end21:
	.size	_GLOBAL__sub_I_yao.cpp, .Lfunc_end21-_GLOBAL__sub_I_yao.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"duthomhas::CSPRNG: Failed to initialize the OS CSPRNG"
	.size	.L.str, 54

	.type	_ZTSN9duthomhas6csprng9exceptionE,@object # @_ZTSN9duthomhas6csprng9exceptionE
	.section	.rodata._ZTSN9duthomhas6csprng9exceptionE,"aG",@progbits,_ZTSN9duthomhas6csprng9exceptionE,comdat
	.weak	_ZTSN9duthomhas6csprng9exceptionE
_ZTSN9duthomhas6csprng9exceptionE:
	.asciz	"N9duthomhas6csprng9exceptionE"
	.size	_ZTSN9duthomhas6csprng9exceptionE, 30

	.type	_ZTIN9duthomhas6csprng9exceptionE,@object # @_ZTIN9duthomhas6csprng9exceptionE
	.section	.rodata._ZTIN9duthomhas6csprng9exceptionE,"aG",@progbits,_ZTIN9duthomhas6csprng9exceptionE,comdat
	.weak	_ZTIN9duthomhas6csprng9exceptionE
	.p2align	3
_ZTIN9duthomhas6csprng9exceptionE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN9duthomhas6csprng9exceptionE
	.quad	_ZTISt13runtime_error
	.size	_ZTIN9duthomhas6csprng9exceptionE, 24

	.type	_ZTVN9duthomhas6csprng9exceptionE,@object # @_ZTVN9duthomhas6csprng9exceptionE
	.section	.rodata._ZTVN9duthomhas6csprng9exceptionE,"aG",@progbits,_ZTVN9duthomhas6csprng9exceptionE,comdat
	.weak	_ZTVN9duthomhas6csprng9exceptionE
	.p2align	3
_ZTVN9duthomhas6csprng9exceptionE:
	.quad	0
	.quad	_ZTIN9duthomhas6csprng9exceptionE
	.quad	_ZNSt13runtime_errorD2Ev
	.quad	_ZN9duthomhas6csprng9exceptionD0Ev
	.quad	_ZNKSt13runtime_error4whatEv
	.size	_ZTVN9duthomhas6csprng9exceptionE, 40

	.type	.L__const._Z13gen_rnd_arrayILi256EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array,@object # @__const._Z13gen_rnd_arrayILi256EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array
	.section	.rodata,"a",@progbits
.L__const._Z13gen_rnd_arrayILi256EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\177\200\201\202\203\204\205\206\207\210\211\212\213\214\215\216\217\220\221\222\223\224\225\226\227\230\231\232\233\234\235\236\237\240\241\242\243\244\245\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302\303\304\305\306\307\310\311\312\313\314\315\316\317\320\321\322\323\324\325\326\327\330\331\332\333\334\335\336\337\340\341\342\343\344\345\346\347\350\351\352\353\354\355\356\357\360\361\362\363\364\365\366\367\370\371\372\373\374\375\376\377"
	.size	.L__const._Z13gen_rnd_arrayILi256EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, 256

	.type	.L__const._Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array,@object # @__const._Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array
	.section	.rodata.cst16,"aM",@progbits,16
.L__const._Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017"
	.size	.L__const._Z13gen_rnd_arrayILi16EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, 16

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"duthomhas::CSPRNG: Failed to read the OS CSPRNG"
	.size	.L.str.1, 48

	.type	.L__const._Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array,@object # @__const._Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array
	.section	.rodata,"a",@progbits
.L__const._Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array:
	.ascii	"\000\001\002\003\004\005\006\007\b"
	.size	.L__const._Z13gen_rnd_arrayILi9EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, 9

	.type	.L__const._Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array,@object # @__const._Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array
.L__const._Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f"
	.size	.L__const._Z13gen_rnd_arrayILi13EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, 13

	.type	.L__const._Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array,@object # @__const._Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array
.L__const._Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020"
	.size	.L__const._Z13gen_rnd_arrayILi17EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, 17

	.type	.L__const._Z13gen_rnd_arrayILi21EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array,@object # @__const._Z13gen_rnd_arrayILi21EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array
.L__const._Z13gen_rnd_arrayILi21EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024"
	.size	.L__const._Z13gen_rnd_arrayILi21EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, 21

	.type	.L__const._Z13gen_rnd_arrayILi25EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array,@object # @__const._Z13gen_rnd_arrayILi25EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array
.L__const._Z13gen_rnd_arrayILi25EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030"
	.size	.L__const._Z13gen_rnd_arrayILi25EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, 25

	.type	.L__const._Z13gen_rnd_arrayILi29EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array,@object # @__const._Z13gen_rnd_arrayILi29EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array
.L__const._Z13gen_rnd_arrayILi29EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034"
	.size	.L__const._Z13gen_rnd_arrayILi29EESt5arrayIhXT_EE13XXH128_hash_t.swapped_array, 29

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_yao.cpp
	.section	".linker-options","e",@llvm_linker_options
	.globl	_ZN9YaoCipherC1Ev
	.type	_ZN9YaoCipherC1Ev,@function
.set _ZN9YaoCipherC1Ev, _ZN9YaoCipherC2Ev
	.globl	_ZN9YaoCipherC1E13XXH128_hash_t
	.type	_ZN9YaoCipherC1E13XXH128_hash_t,@function
.set _ZN9YaoCipherC1E13XXH128_hash_t, _ZN9YaoCipherC2E13XXH128_hash_t
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_yao.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSN9duthomhas6csprng9exceptionE
	.addrsig_sym _ZTISt13runtime_error
	.addrsig_sym _ZTIN9duthomhas6csprng9exceptionE
