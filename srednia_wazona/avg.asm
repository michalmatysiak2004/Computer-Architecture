.686
.model flat
public _avg_wd

.code
_avg_wd PROC
	push ebp
	mov ebp, esp
	push esi
	push edi
	push ebx
	mov edi, [ebp+16] ; tablica wag
	mov esi, [ebp+12] ; tablica liczb
	mov ecx, [ebp+8] ; rozmiar tablic
	finit
	xor edx,edx ; iterator tablic 
	xor eax,eax
	fldz
	petla:
	
	fld dword ptr [edi][edx]
	fld dword ptr [esi][edx]
	fmul
	fadd
	add edx, 4
	loop petla


	xor edx, edx
	mov ecx, [ebp+8]
	fldz

	ptl2:
	fld dword ptr [edi][edx]
	fadd
	add edx, 4 
	loop ptl2
	fdiv
	pop ebx
	pop edi
	pop esi
	pop ebp
ret
_avg_wd ENDP
END

