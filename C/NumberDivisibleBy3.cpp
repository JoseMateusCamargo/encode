/*
Programa para contar e mostrar todos os numeros divisiveis por 3
entre 2 inteiros positivos n e m (0<n<m). Ao final, exibir quantidade encontrada. 

Program to count and show all numbers divisible by 3
between 2 positive integers n and m (0 <n <m). At the end, display quantity found. */

#include <stdio.h>

int main()
{
	int n, m, i, qut = 0;
	do
	{
		printf("\nLimite inferior: ");
		scanf("%d", &n);
		printf("\nLimite Superior: ");
		scanf("%d", &m);
	} while (n > m || n <= 0);

	for (i = n; i <= m; i++)
		if (i / 3 == 0)
			qut++;

	printf("\n\nQts de numeros divisiveis por 3= %d", qut);
	fflush(stdin);
	getchar();
	return 0;
}