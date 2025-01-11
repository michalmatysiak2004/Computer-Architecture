.686
.model flat
.XMM
public _dodajliczby 


.code

_dodajliczby PROC

push ebp
mov ebp,esp
push ebx
push esi
push edi
mov esi, [ebp+8]
mov edi, [ebp+12]
mov ebx, [ebp+16]

movdqu xmm5,[esi]
movdqu xmm6, [edi]

paddsb xmm5, xmm6

movdqu [ebx], xmm5

pop edi
pop esi
pop ebx
pop ebp
ret
_dodajliczby ENDP
end
