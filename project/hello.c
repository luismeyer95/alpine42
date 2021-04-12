#include <stdio.h>
#include <stdlib.h>

int main()
{
	printf("Hello leak\n");
	char *leak = malloc(3);
	(void)leak;
}