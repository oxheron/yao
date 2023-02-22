	.text
	.file	"main.cpp"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$3288, %rsp             # imm = 0xCD8
	.cfi_def_cfa_offset 3328
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	leaq	16(%rsp), %rdi
	movl	$12093, %esi            # imm = 0x2F3D
	movl	$12398, %edx            # imm = 0x306E
	callq	_ZN9YaoCipherC1E13XXH128_hash_t
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 8(%rsp)
.Ltmp0:
	movl	$72, %edi
	callq	_Znwm
.Ltmp1:
# %bb.1:
	movq	%rax, %r14
	movq	.Lconstinit+64(%rip), %rax
	movq	%rax, 64(%r14)
	movups	.Lconstinit+48(%rip), %xmm0
	movups	%xmm0, 48(%r14)
	movups	.Lconstinit+32(%rip), %xmm0
	movups	%xmm0, 32(%r14)
	movups	.Lconstinit+16(%rip), %xmm0
	movups	%xmm0, 16(%r14)
	movups	.Lconstinit(%rip), %xmm0
	movups	%xmm0, (%r14)
.Ltmp3:
	leaq	16(%rsp), %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	_ZN9YaoCipher7encryptEPjm
.Ltmp4:
# %bb.2:
.Ltmp5:
	leaq	8(%rsp), %rdi
	callq	_ZN5Timer10print_timeEv
.Ltmp6:
# %bb.3:
.Ltmp7:
	leaq	16(%rsp), %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	_ZN9YaoCipher7decryptEPjm
.Ltmp8:
# %bb.4:
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	(%r14,%r12), %esi
.Ltmp10:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertImEERSoT_
.Ltmp11:
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_7
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=1
	cmpb	$0, 56(%rbx)
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	movzbl	67(%rbx), %eax
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
.Ltmp12:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp13:
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	movq	(%rbx), %rax
.Ltmp14:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp15:
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
.Ltmp16:
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc
.Ltmp17:
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=1
.Ltmp18:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp19:
# %bb.20:                               #   in Loop: Header=BB0_5 Depth=1
	addq	$4, %r12
	cmpq	$72, %r12
	jne	.LBB0_5
# %bb.8:
	movq	%r14, %rdi
	callq	_ZdlPv
	movq	3280(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_10
# %bb.9:
	callq	_ZdaPv
.LBB0_10:
	movq	3256(%rsp), %rdi
.Ltmp21:
	callq	csprng_destroy
.Ltmp22:
# %bb.11:
	xorl	%eax, %eax
	addq	$3288, %rsp             # imm = 0xCD8
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
.LBB0_7:
	.cfi_def_cfa_offset 3328
.Ltmp24:
	callq	_ZSt16__throw_bad_castv
.Ltmp25:
# %bb.13:
.LBB0_22:
.Ltmp26:
	jmp	.LBB0_23
.LBB0_29:
.Ltmp23:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_28:
.Ltmp2:
	movq	%rax, %rbx
	jmp	.LBB0_24
.LBB0_12:
.Ltmp9:
	jmp	.LBB0_23
.LBB0_21:
.Ltmp20:
.LBB0_23:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB0_24:
	movq	3280(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_26
# %bb.25:
	callq	_ZdaPv
.LBB0_26:
	movq	3256(%rsp), %rdi
.Ltmp27:
	callq	csprng_destroy
.Ltmp28:
# %bb.27:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB0_30:
.Ltmp29:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.uleb128 .Ltmp8-.Ltmp3          #   Call between .Ltmp3 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0   #     jumps to .Ltmp9
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0  # >> Call Site 4 <<
	.uleb128 .Ltmp19-.Ltmp10        #   Call between .Ltmp10 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0  #     jumps to .Ltmp20
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0  # >> Call Site 5 <<
	.uleb128 .Ltmp22-.Ltmp21        #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0  #     jumps to .Ltmp23
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp24-.Lfunc_begin0  # >> Call Site 6 <<
	.uleb128 .Ltmp25-.Ltmp24        #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0  #     jumps to .Ltmp26
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0  # >> Call Site 7 <<
	.uleb128 .Ltmp28-.Ltmp27        #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0  #     jumps to .Ltmp29
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp28-.Lfunc_begin0  # >> Call Site 8 <<
	.uleb128 .Lfunc_end0-.Ltmp28    #   Call between .Ltmp28 and .Lfunc_end0
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
	.section	.text._ZN5Timer10print_timeEv,"axG",@progbits,_ZN5Timer10print_timeEv,comdat
	.weak	_ZN5Timer10print_timeEv # -- Begin function _ZN5Timer10print_timeEv
	.p2align	4, 0x90
	.type	_ZN5Timer10print_timeEv,@function
_ZN5Timer10print_timeEv:                # @_ZN5Timer10print_timeEv
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
	movq	%rdi, %rbx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	(%rbx), %rax
	movl	$_ZSt4cout, %edi
	movq	%rax, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_5
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB1_3
# %bb.2:
	movb	67(%rbx), %al
	jmp	.LBB1_4
.LBB1_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB1_4:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB1_5:
	.cfi_def_cfa_offset 32
	callq	_ZSt16__throw_bad_castv
.Lfunc_end1:
	.size	_ZN5Timer10print_timeEv, .Lfunc_end1-_ZN5Timer10print_timeEv
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
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_main.cpp
	.type	_GLOBAL__sub_I_main.cpp,@function
_GLOBAL__sub_I_main.cpp:                # @_GLOBAL__sub_I_main.cpp
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
.Lfunc_end3:
	.size	_GLOBAL__sub_I_main.cpp, .Lfunc_end3-_GLOBAL__sub_I_main.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.Lconstinit,@object     # @constinit
	.section	.rodata,"a",@progbits
	.p2align	2
.Lconstinit:
	.long	23                      # 0x17
	.long	123                     # 0x7b
	.long	98                      # 0x62
	.long	28                      # 0x1c
	.long	123                     # 0x7b
	.long	89                      # 0x59
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	74                      # 0x4a
	.long	23                      # 0x17
	.long	123                     # 0x7b
	.long	98                      # 0x62
	.long	28                      # 0x1c
	.long	123                     # 0x7b
	.long	89                      # 0x59
	.long	23                      # 0x17
	.long	2                       # 0x2
	.long	74                      # 0x4a
	.size	.Lconstinit, 72

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_main.cpp
	.section	".linker-options","e",@llvm_linker_options
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_main.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
