.686
.model flat
public _liczba_pi
extern _malloc : proc

.code

_liczba_pi PROC
	
	push ebp
	mov ebp, esp

	mov ecx, [ebp+8] ; ładujemy n do ecx 
	cmp ecx, 0
	finit ; inicjumeny koprocesor
	
	mov eax, 2
	mov edx, 1 

	push eax

	fild dword ptr [esp] ; 2 nie ciag 
	fild dword ptr [esp]

	push edx
	fild dword ptr [esp]
	add esp, 8
	fdiv 
	fmul ; pierszy wyraz ciagu 
	

	ptl:
	add edx, 2
	push eax
	fild dword ptr [esp]

	push edx
	fild dword ptr [esp]
	add esp, 8
	fdiv
	fmul
	sub ecx, 1
	cmp ecx,0
	jle koniec

	add eax, 2
	push eax
	fild dword ptr [esp]

	push edx
	fild dword ptr [esp]
	add esp,8 
	fdiv
	fmul
	sub ecx, 1
	cmp ecx,0 
	jg ptl

	koniec:

	
	pop ebp
	ret
_liczba_pi ENDP
END
