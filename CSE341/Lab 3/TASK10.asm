ORG 100H

.DATA

A DB 'ENTER 3 NUMBERS BETWEEN(0-9): $'
B DB 'MAXIMUM NUMBER IS: $'
C DB 'MINIMUM NUMBER IS: $'

.CODE

MOV AH, 9
LEA DX, A
INT 21H

MOV AH, 1
INT 21H
MOV BL, AL

MOV AH, 1
INT 21H
MOV CL, AL

MOV AH, 1
INT 21H
MOV CH, AL


CMP BL, CL
JG BLB

BLB:
CMP BL, CH
JG BLM

BLM:
MOV AH, 9
LEA DX, B
INT 21H

MOV AH, 2
MOV DL, BL
INT 21H

