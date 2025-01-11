#include <stdio.h>
int szukaj_max(int a, int b, int c, int d);
int main()
{
	int x, y, z, w, wynik;
	printf("\nProszę podać cztery liczby całkowite ze znakiem: ");
	scanf_s("%d %d %d %d", &x, &y, &z, &w, 32);
	wynik = szukaj_max(x, y, z,w);
	printf("\nSpośród podanych liczb %d, %d, %d, \
 liczba %d jest największa\n", x, y, z, wynik);
	return 0;
}
