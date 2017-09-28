#include "function.h"
#include <stdio.h>
#include <math.h>

int main() 
{
	int a,b,c,D,i;
	float x, x1, x2;
	printf("a*(x*x)+b*x+c=0\n");
	printf("Input a=");
	scanf("%d",&a);
	printf("Input b=");
	scanf("%d",&b);
	printf("Input c=");
	scanf("%d",&c);
	D = Discr(a, b, c);
	i = Check(D);

	switch (i) {
		case 0:
			x = ((-1) * b) / (2 * a);
			printf ("%.2f", x);
			break;
		case 1:
			printf ("Has no roots");
			break;
		case 2:
			x1 = ((-1) * b + sqrt(D)) / (2 * a);			
			x2 = ((-1) * b - sqrt(D)) / (2 * a);
			printf("First roots:%.2f.\nSecond roots:%.2f.\n",x1, x2);
			break;
	}
	return 0;
}
