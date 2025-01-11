#include <stdio.h>
#include <windows.h>
#include <fileapi.h>
long long rozmiar(wchar_t* nazwa, FILETIME* czas);

int main() {
	/FILETIME czasutworzenia;
	long long wynik;
	wchar_t* name = L"C:/Users/polsk/OneDrive/Pulpit/STUDIA/semestr3/Bazy Danych/plik.txt";
	wynik = rozmiar(name, &czasutworzenia);
    // Konwersja FILETIME na SYSTEMTIME
    SYSTEMTIME stUTC, stLocal;
    FileTimeToSystemTime(&czasutworzenia, &stUTC);       // Konwersja do SYSTEMTIME
    SystemTimeToTzSpecificLocalTime(NULL, &stUTC, &stLocal);  // Czas lokalny

    // Wyświetlenie wyników
    printf("Rozmiar pliku: %lld bajtów\n", wynik);
    printf("Data utworzenia: %02d-%02d-%d %02d:%02d:%02d\n",
        stLocal.wDay, stLocal.wMonth, stLocal.wYear,
        stLocal.wHour, stLocal.wMinute, stLocal.wSecond);

    return 0;
}
