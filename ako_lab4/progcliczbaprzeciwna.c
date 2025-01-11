#include <stdio.h>
void plus_jeden(int* a);
void liczba_przeciwna(int* a);
int main()
{
	int m;
	m = -500000;
	liczba_przeciwna(&m);
	printf("\n m = %d\n", m);
	return 0;
}
