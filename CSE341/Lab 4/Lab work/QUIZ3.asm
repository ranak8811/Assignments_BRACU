ORG 100H

.DATA

A DB "-->2 NUMBERS ARE SAME$"
B DB "-->3 NUMBERS ARE SAME$"
C DB "-->ALL DIFFERENT$"


.CODE

MOV AH, 1
INT 21H
MOV BL, AL
INT 21H
MOV CL, AL
INT 21H
MOV CH, AL

CMP BL, CL
JE L1

CMP CL, CH
JE L4

CMP BL, CH
JE L4

MOV AH, 9
LEA DX, C
INT 21H

JMP END

L1:
CMP CL, CH
JE L2

MOV AH, 9
LEA DX, A
INT 21H

JMP END

L2:
MOV AH, 9
LEA DX, B
INT 21H

JMP END

L4:
MOV AH, 9
LEA DX, A
INT 21H

END:
RET