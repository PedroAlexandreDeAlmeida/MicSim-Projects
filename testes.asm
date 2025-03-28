; -------------------- INCREMENTE - DECREMENTO - MULTIPLICAÇÃO --------------------
MOV CL, 00
MOV BL, 00
MOV DL, 1 
REP:
ADD CL, 3
DEC BL
MUL DL, 2
JMP Rep
END

; -------------------- DECREMENTO --------------------
MOV CL, 00
MOV BL, 00
MOV DL, 1 
REP:
ADD CL, 3
DEC BL
MUL DL, 2
JMP Rep
END

; -------------------- IMPRIMIR NO VDU --------------------
MOV AL, 74  ; 't'
MOV [C0], AL
MOV AL, 65  ; 'e'
MOV [C1], AL
MOV AL, 73  ; 's'
MOV [C2], AL
MOV AL, 74  ; 't'
MOV [C3], AL
MOV AL, 65  ; 'e'
MOV [C4], AL
MOV AL, 20  ; ' ' (espaço)
MOV [C6], AL
MOV AL, 76  ; 'v'
MOV [C7], AL
MOV AL, 64  ; 'd'
MOV [C8], AL
MOV AL, 75  ; 'u'
MOV [C9], AL
