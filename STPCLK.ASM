CODE SEGMENT
ASSUME CS:CODE

START:  MOV AL,80H
        MOV DX,0FFE6H
        OUT DX,AL
        MOV AL,88H

GO1:    MOV DX,0FFE4H
        OUT DX,AL
        CALL DELAY
        ROR AL,1
        JMP GO1
        INT 03H

DELAY:  NOP
        NOP
        MOV BX,0FFFFH

GO2:    DEC BX
        JNZ GO2
        RET
CODE ENDS
END START
