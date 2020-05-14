/*
Calcular media do aluno com 4 notas, exibe a média do aluno, e a média geral.

Calculate student's average with 4 grades, displays the student's average, and the overall average. */

#include <stdio.h>

int main()
{
	float n1, n2, n3, n4;
	double ma, mg;
	int i;
	for (i = 1; i <= 3; i++)
	{
		ma = 0;
		printf("\nDigite as notas dos aluno %d\n", i);
		scanf("%f%f%f%f", &n1, &n2, &n3, &n4);
		ma = (n1 + n2 + n3 + n4) / 4;
		printf("\nMedia do aluno= %f", ma);
	}

	mg = ma;
	mg /= 3;
	printf("\nMedia geral= %1.4f", mg);
	fflush(stdin);
	getchar();
	return 0;
}