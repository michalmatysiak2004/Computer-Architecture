.686
.model flat
public _roznica 


.code 
_roznica PROC 
		push ebp
		mov ebp,esp
		push ebx

		; wpysywanie liczby a do eax ktora jest podana przez wskaznik
		mov eax, [ebp+8]
		mov eax, [eax] 
		
		; wpisywanie liczby b do ebx ktora jest podana przez podwójny wskaznik
		mov ebx, [ebp+12]
		mov ebx,[ebx]
		mov ebx,[ebx]

		sub eax, ebx
		pop ebx
		pop ebp
		ret

_roznica ENDP
END

