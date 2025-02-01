#include <stdio.h>
float liczba_pi(unsigned int n);
int main()
{
	float pi = liczba_pi(1000000);
	printf("%f", pi);
	return 0;
}
