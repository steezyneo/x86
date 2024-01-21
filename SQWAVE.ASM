CODE SEGMENT
ASSUME CS:CODE
START:MOV AL,80H
      MOV DX,0FFE6H
      OUT DX,AL
      L1:MOV AL,0FFH
         MOV DX,0FFE2H
         OUT DX,AL
         CALL DELAY
         MOV AL,00H
         MOV DX,0FFE2H
         OUT DX,AL
         CALL DELAY
         JMP L1
         INT 3H
      DELAY:MOV CX,0FFFH
         GO:NOP
            LOOP GO
            RET
CODE ENDS
END START
        
