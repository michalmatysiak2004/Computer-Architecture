
.686
.model flat, c
.stack 4096

.data

.code
; Funkcja: float srednia_harm(float *tablica, unsigned int n)
; Argumenty:
; - tablica: wskaźnik do tablicy floatów (na stosie: ESP+4)
; - n: liczba elementów (na stosie: ESP+8)
; Wynik:
; - Średnia harmoniczna zwracana w ST(0)

srednia_harm proc
    ; Prolog funkcji
    push ebp
    mov ebp, esp
   
    ; Pobierz argumenty
    mov eax, [ebp + 12] ; n
    mov ecx, [ebp + 8] ; wskaźnik do tablicy


    ; Przygotuj rejestry FPU
    finit
  
    ; Zainicjalizuj sumę: suma = 0.0
    fldz

    ; Pętla: iteracja przez elementy tablicy
    xor edx, edx ; Index tablicy (i = 0)
loop_start:
    cmp edx, eax ; Czy i < n?
    jge loop_end ; Jeśli nie, zakończ pętlę

    ; Załaduj tablica[i] do FPU
    fld DWORD PTR [ecx + edx * 4] ; Załaduj tablica[i]

    ; Oblicz 1 / tablica[i] i dodaj do sumy
    fld1 ; Załaduj 1.0
    fdivrp ST(1), ST(0) ; ST(0) = 1 / tablica[i]
    faddp ST(1), ST(0) ; ST(0) += 1 / tablica[i]

    ; Zwiększ indeks i
    inc edx
    jmp loop_start

loop_end:
    ; Oblicz średnią harmoniczną: n / suma
    mov eax, [ebp + 12] ; n
    push eax
    fild DWORD PTR [esp] ; Załaduj n jako liczbę zmiennoprzecinkową
    add esp, 4

    ; Podziel n przez sumę: wynik = n / suma
    fdivp ST(1), ST(0)

    ; Zwróć wynik w ST(0)
    jmp function_exit

division_by_zero:
    ; W przypadku błędu (n == 0), zwróć 0.0
    fldz

function_exit:
    ; Epilog funkcji
    pop ebp
    ret
srednia_harm endp

end
