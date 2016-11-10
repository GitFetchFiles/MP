DATA SEGMENT
        NO1 DW 2000H
        NO2 DW 6212H
        NO3 DW 4210H
        R DW ?
        Q DW ?
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
        START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,0000H
        MOV DX,NO1
        MOV AX,NO2
        MOV BX,NO3
        DIV BX
        MOV Q,AX
        MOV R,DX
        INT 3H
        CODE ENDS
END START
