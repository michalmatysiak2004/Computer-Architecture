#include <stdio.h>

// Deklaracja funkcji w asemblerze
extern float srednia_harm(float* tablica, unsigned int n);

int main() {
    // Przykładowa tablica liczb zmiennoprzecinkowych
    float tablica[] = { 1.0f, 2.0f, 3.0f, 4.0f,5.0f,6.0f };
    unsigned int n = 6;

    // Wywołanie funkcji i przechwycenie wyniku
    float wynik = srednia_harm(tablica, n);

    // Wyświetlenie wyniku
    printf("Średnia harmoniczna tablicy: %f\n", wynik);

    return 0;
}
