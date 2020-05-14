/*
Verificar se um numero > 0 é primo.

Check if a number > 0 is prime. */

#include <stdio.h>

int main()
{
	int n, i = 2;
	char primo = 's';
	do
	{
		printf("\nDigite um numero: ");
		scanf("%d", &n);
		if (n < 0)
			printf("\nErro!");
	} while (n < 0);

	if (n < 2)
		primo = 'n';

	while (i <= n / 2 && primo == 's')
	{
		if (n % i == 0)
			primo = 'n';
		else
			i = i + 1;
	}

	if (primo == 's')
		printf("\n\n%d he um numero primo!!!", n);
	else
		printf("\n\n%d nao he um numero primo!!!", n);

	fflush(stdin);
	getchar();
	return 0;
}