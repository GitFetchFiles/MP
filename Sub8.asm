DATA SEGMENT 
        NO1 DB 88H
        NO2 DB 77H
        SUBI DB ?
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
	START:
		MOV AX, DATA
		MOV DS, AX
		MOV AX, 0000H
                MOV AL, NO1
                SUB AL, NO2
                MOV SUBI, AL
		INT 3H
	CODE ENDS
END START
