; Interrupção de hardware

;-------------------------------------------------

Start:
STI ; Ativa o flag de interrupção
MOV AL,11

Rep:
OUT 05 ; Envia o valor para motor der passo
ROR AL ; Realiza uma rotação a direita
JMP Rep
JMP Start

;-------------------------------------------------

ORG 50
PUSH AL
PUSH BL
PUSHF
JMP PastData

DB 84
DB c8
DB 30
DB 58
DB 57

PastData:
MOV BL,[5B]
MOV AL,[BL]
OUT 01
CMP AL,58
JZ Reset
INC BL
MOV [5B],BL
JMP Stop

Reset:
MOV BL,57
MOV [5B],BL

Stop:
POPF
POP BL
POP AL
IRET

; --------------------------------------------------------------

END
