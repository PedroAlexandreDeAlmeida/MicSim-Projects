; Interrupção de software

;-------------------------------------------

MOV BL, 90
JMP Start
DB 51
DB 71
Start:
INT 05 ; Executa a interrupção 02
INT 06 ; Executa a interrupção 03
JMP Start

;-------------------------------------------

; Código da interrupção 02

ORG 50
DB 0 ; Byte de dados
IN 00
MOV[BL], AL
INC BL
IRET

; Código da interrupção 03


ORG 70
DB 0 ; Byte de dados
MOV AL,[70] ; Copia os bits da RAM para AL
NOT AL ; Inverte os bits de AL
AND AL,FE ; o bit mais à direita para zero
MOV [70],AL ; Copia os bits invertidos de volta
OUT 02 ; Envia para o display de 7 seg.
IRET
END
