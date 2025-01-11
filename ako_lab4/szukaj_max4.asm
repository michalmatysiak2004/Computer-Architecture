.686
.model flat
public _szukaj_max

.code 
_szukaj_max PROC
			push ebp			; zapisanie zawartości EBP na stosie
			mov ebp, esp		; kopiowanie zawartości ESP do EBP
			mov eax, [ebp+8]		; liczba x
			cmp eax, [ebp+12] ; porownanie liczb x i y
			jge x_wieksza ; skok, gdy x >= y
	; przypadek x < y
			mov eax, [ebp+12] ; liczba y
			cmp eax, [ebp+16] ; porownanie liczb y i z
			jge y_wieksza ; skok, gdy y >= z
			jmp z_wieksza
; przypadek y < z
; zatem z jest liczbą najwiekszą
			wpisz_w: mov eax, [ebp+20] ; liczba z
			zakoncz:
					pop ebp
					ret
			x_wieksza:
					cmp eax, [ebp+16] ; porownanie x i z
					jge x_wieksza_2; skok, gdy x >= z
					jmp z_wieksza  ; z > x >= y
			
			x_wieksza_2:
					cmp eax, [ebp+20] ; porownywanie x i w
					jge zakoncz		; x najwieksza
					jmp wpisz_w		; w najwieksza
			
			z_wieksza: ; wiemy ze ani x ani y nie jest najwieksze 
					mov eax, [ebp+16] ; wpisanie do eax z
					cmp eax, [ebp+20] ; porownanie z i w 
					jge zakoncz       ; z najwieksza 
					jmp wpisz_w		  

			y_wieksza:
					mov eax, [ebp+12] ; liczba y
					cmp eax, [ebp + 20]
					jge zakoncz
					jmp wpisz_w


_szukaj_max ENDP
END

