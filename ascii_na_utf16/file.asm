.686
.model flat
public _ASCII_na_UTF16
extern _GetSystemInfo@4 : proc
extern _malloc : proc
.code
_ASCII_na_UTF16 PROC
	push ebp
	mov ebp, esp
	push esi
	push edi
	push ebx
	
	mov eax, [ebp+ 12] ; liczba n 
	mov esi, [ebp+8] ; tablica
	
	add eax,1 
	mov ebx, 2h
	mul ebx
	push eax
	call _malloc
	add esp, 4
	mov edi, eax ; adres pamieci w edi
	mov ecx, [ebp + 12]; liczbnik
	xor ebx, ebx

	petla:
	xor ax,ax
	mov al, [esi][ebx]
	mov [edi + 2*ebx], ax
	inc ebx
	loop petla
	mov [edi + 2*ebx], word ptr 0h

	mov eax, edi
	
	pop ebx
	pop edi
	pop esi
	pop ebp
ret
_ASCII_na_UTF16 ENDP
END

