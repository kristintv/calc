#include "function.h"
#include <stdio.h>
#include <math.h>

int main() 
{
	int a,b,c,D,i;
	float x;
	printf("a*(x*x)+b*x+c=0\n");
	scanf("%d%d%d",&a, &b, %c);

	D = Discr(a, b, c);
	i = Check(D);

	switch (i) {
		case 0:
			x = ((-1) * b) / (2 * a);
			printf ("%f", x);
			break;
		case 1:
			printf ("Has no roots");
			break;
		case 2:
			x1 = ((-1) * b + sqrt(D)) / (2 * a);
			printf("%f",x);			
			x = ((-1) * b - sqrt(D)) / (2 * a);
			printf("%f",x);
			break;
	}
	return 0;
}
