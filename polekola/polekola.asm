.686
.model flat
public _pole_kola

.code
_pole_kola PROC
	push ebp
	mov ebp, esp
	push esi
	push edi
	finit
	mov esi, [ebp+8]
	fld dword ptr [esi]
	fld dword ptr [esi]
	fmul
	fldpi
	fmul
	fstp dword ptr [esi]





	pop edi
	pop esi
	pop ebp
ret
_pole_kola ENDP
END

