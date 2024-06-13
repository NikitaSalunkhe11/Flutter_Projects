#include<stdio.h>
void fun(int x){
	if(x==0){
		return 0;
	}
		printf("%d\n",x);
		fun(--x);
}
void main(){
	fun(10);
}
