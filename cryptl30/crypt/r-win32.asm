	; Don't even think of reading this code
	; It was automatically generated by rc4-586.pl
	; Which is a perl program used to generate the x86 assember for
	; any of elf, a.out, BSDI,Win32, or Solaris
	; eric <eay@cryptsoft.com>
	; 
	TITLE	rc4-586.asm
        .486
.model FLAT
_TEXT	SEGMENT
PUBLIC	_RC4

_RC4 PROC NEAR
	; 
	push	ebp
	push	ebx
	mov	ebp,		DWORD PTR 12[esp]
	mov	ebx,		DWORD PTR 16[esp]
	push	esi
	push	edi
	mov	ecx,		DWORD PTR [ebp]
	mov	edx,		DWORD PTR 4[ebp]
	mov	esi,		DWORD PTR 28[esp]
	inc	ecx
	sub	esp,		12
	add	ebp,		8
	and	ecx,		255
	lea	ebx,		DWORD PTR [esi+ebx-8]
	mov	edi,		DWORD PTR 44[esp]
	mov	DWORD PTR 8[esp],ebx
	mov	eax,		DWORD PTR [ecx*4+ebp]
	cmp	ebx,		esi
	jl	$L000end
L001start:
	add	esi,		8
	; Round 0
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	BYTE PTR [esp],	bl
	; Round 1
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	BYTE PTR 1[esp],bl
	; Round 2
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	BYTE PTR 2[esp],bl
	; Round 3
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	BYTE PTR 3[esp],bl
	; Round 4
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	BYTE PTR 4[esp],bl
	; Round 5
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	BYTE PTR 5[esp],bl
	; Round 6
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	BYTE PTR 6[esp],bl
	; Round 7
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	add	edi,		8
	mov	BYTE PTR 7[esp],bl
	; apply the cipher text
	mov	eax,		DWORD PTR [esp]
	mov	ebx,		DWORD PTR [esi-8]
	xor	eax,		ebx
	mov	ebx,		DWORD PTR [esi-4]
	mov	DWORD PTR [edi-8],eax
	mov	eax,		DWORD PTR 4[esp]
	xor	eax,		ebx
	mov	ebx,		DWORD PTR 8[esp]
	mov	DWORD PTR [edi-4],eax
	mov	eax,		DWORD PTR [ecx*4+ebp]
	cmp	esi,		ebx
	jle	L001start
$L000end:
	; Round 0
	add	ebx,		8
	inc	esi
	cmp	ebx,		esi
	jl	$L002finished
	mov	DWORD PTR 8[esp],ebx
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	bh,		BYTE PTR [esi-1]
	xor	bl,		bh
	mov	BYTE PTR [edi],	bl
	; Round 1
	mov	ebx,		DWORD PTR 8[esp]
	cmp	ebx,		esi
	jle	$L002finished
	inc	esi
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	bh,		BYTE PTR [esi-1]
	xor	bl,		bh
	mov	BYTE PTR 1[edi],bl
	; Round 2
	mov	ebx,		DWORD PTR 8[esp]
	cmp	ebx,		esi
	jle	$L002finished
	inc	esi
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	bh,		BYTE PTR [esi-1]
	xor	bl,		bh
	mov	BYTE PTR 2[edi],bl
	; Round 3
	mov	ebx,		DWORD PTR 8[esp]
	cmp	ebx,		esi
	jle	$L002finished
	inc	esi
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	bh,		BYTE PTR [esi-1]
	xor	bl,		bh
	mov	BYTE PTR 3[edi],bl
	; Round 4
	mov	ebx,		DWORD PTR 8[esp]
	cmp	ebx,		esi
	jle	$L002finished
	inc	esi
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	bh,		BYTE PTR [esi-1]
	xor	bl,		bh
	mov	BYTE PTR 4[edi],bl
	; Round 5
	mov	ebx,		DWORD PTR 8[esp]
	cmp	ebx,		esi
	jle	$L002finished
	inc	esi
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	eax,		DWORD PTR [ecx*4+ebp]
	mov	bh,		BYTE PTR [esi-1]
	xor	bl,		bh
	mov	BYTE PTR 5[edi],bl
	; Round 6
	mov	ebx,		DWORD PTR 8[esp]
	cmp	ebx,		esi
	jle	$L002finished
	inc	esi
	add	edx,		eax
	and	edx,		255
	inc	ecx
	mov	ebx,		DWORD PTR [edx*4+ebp]
	mov	DWORD PTR [ecx*4+ebp-4],ebx
	add	ebx,		eax
	and	ecx,		255
	and	ebx,		255
	mov	DWORD PTR [edx*4+ebp],eax
	nop
	mov	ebx,		DWORD PTR [ebx*4+ebp]
	mov	bh,		BYTE PTR [esi-1]
	xor	bl,		bh
	mov	BYTE PTR 6[edi],bl
$L002finished:
	dec	ecx
	add	esp,		12
	mov	DWORD PTR [ebp-4],edx
	mov	BYTE PTR [ebp-8],cl
	pop	edi
	pop	esi
	pop	ebx
	pop	ebp
	ret
_RC4 ENDP
_TEXT	ENDS
END
