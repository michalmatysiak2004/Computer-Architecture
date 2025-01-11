.686
.model flat
public _odejmij_jeden
.code
_odejmij_jeden PROC
push ebp ; zapisanie zawartości EBP na stosie
mov ebp,esp ; kopiowanie zawartości ESP do EBP
push edx ; przechowanie zawartości rejestru EBX
; wpisanie do rejestru EBX adresu zmiennej zdefiniowanej
; w kodzie w języku C
; Załaduj adres wskaźnika do wskaźnika do rejestru EAX
    mov eax, [ebp + 8]

    ; Załaduj adres liczby do EAX
    mov eax, [eax]

    ; Załaduj wartość liczby do EDX
    mov edx, [eax]

    ; Zmniejsz liczbę o 1
    dec edx

    ; Zapisz nową wartość z powrotem pod adres liczby
    mov [eax], edx
    

pop edx
pop ebp
ret
_odejmij_jeden ENDP
 END
