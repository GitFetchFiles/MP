#include<stdio.h>
void main(){
	int x, n, result;
	clrscr();
	printf("\nEnter the value of x : ");
	scanf("%d",&x);
	printf("\nEnter the value of n : ");
	scanf("%d",&n);
	n = n-1;
	asm MOV AX, x;
	asm MOV CX, n;
	asm MOV BX, x;
	label:
	asm MUL BX;
	asm DEC CX;
	asm JNZ label;
	asm MOV result, AX;
	printf("\nValue of x^n = %d",result);
	getch();
}
