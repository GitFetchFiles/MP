DATA SEGMENT
        NO1 DW 1111H
        NO2 DW 2222H
        MULTI DW ?
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
        START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,0000H
        MOV AX,NO1
        MUL NO2
        MOV MULTI,DX
        MOV MULTI+2,AX
        INT 3H
        CODE ENDS
END START
