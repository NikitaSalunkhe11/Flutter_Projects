//#include<stdio.h>
int printf(const char*,...);
void main()
{
	int age=20;
	float petrol=10.11;
	double gold=10.11;
	char wing='N';
//	void v=12;
    printf("I am a programmer\n");
	printf("%d\n",age);
    printf("%f\n",petrol);
    printf("%lf\n",gold);
	printf("%c\n",wing);
	 
	printf("%ld\n",sizeof(age));//int
	printf("%ld\n",sizeof(petrol));//float
 	printf("%ld\n",sizeof(gold));//double
	printf("%ld\n",sizeof(wing));	 	//char
 
		
}

