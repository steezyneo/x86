ASSUME CS:CODE, DS:DATA
DATA SEGMENT
STR1 DB "STEEZY"
LEN DB ($-STR1)
DATA ENDS
CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX
MOV AX,0000H
MOV AL,LEN
INT 03H
CODE ENDS
END START



                
