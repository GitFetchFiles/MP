DATA SEGMENT
        CR EQU 13
        LF EQU 10
        MSG1 DB CR,LF,"ENTER THE FIRST STRING:$"
        MSG2 DB CR,LF,LF,"ENTER THE SECOND STRING:$"
        STRING1 DB 0BH,12 DUP(?)
        STRING2 DB 0BH,12 DUP(?)
        SMSG DB CR,LF,LF,"BOTH ARE SAME$"
        FMSG DB CR,LF,LF,"BOTH ARE DIFFERENT$"
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
mov es,ax
LEA DX,MSG1
MOV AH,09H
INT 21H
MOV DX,OFFSET STRING1
MOV AH,0AH
INT 21H

LEA DX,MSG2
MOV AH,09H
INT 21H
MOV DX,OFFSET STRING2
MOV AH,0AH
INT 21H

MOV SI,OFFSET STRING1
MOV DI,OFFSET STRING2
CLD
MOV CX,6H
REPE CMPSB
JZ SUCCESS
LEA DX,FMSG
JMP DISPLAY1
SUCCESS:
LEA DX,SMSG
DISPLAY1:
MOV AH,09H
INT 21H
MOV AH,4CH
INT 21H
CODE ENDS
END START
