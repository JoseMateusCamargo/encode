// Factorial calculator

#include <stdio.h>
#include <math.h> // (abs)

int main()
{
	int n, i = 2, fat = 1;
	printf("\n Calcular fatorial de: ");
	scanf("%d", &n);
	n = abs(n); //módulo! converte para positivo
	
	while (i <= n){
		fat = fat * i;
		i = i + 1;
	}
	
	printf("\n Resultado= %d", fat);
	getchar();
	return 0;
}