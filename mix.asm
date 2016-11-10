#include<stdio.h>
void main(){
	int num;
	clrscr();
	printf("\nEnter the number to find out the factorial :");
	scanf("%d", &num);
	asm MOV AX, 1;
	asm MOV BX, 1;
	asm MOV CX, num;
	label:
	asm MUL BX;
	asm INC BX;
	asm DEC CX;
	asm JNZ label;
	asm MOV num, AX;
	printf("\nFactorial is : %d", num);
	getch();
}
