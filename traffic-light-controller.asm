Start:  

MOV AL,30
CALL 30

MOV AL,15  
CALL 40

MOV AL,1  
CALL 50

MOV AL,30 
CALL 60

MOV AL,15  
CALL 70

MOV AL,1  
CALL 50

JMP Start  

ORG 30
MOV AL, 84  ; vermelho e verde  
OUT 01  
RET  

ORG 40
MOV AL, 88  ; vermelho e amarelo  
OUT 01  
RET  

ORG 50
MOV AL, 90  ; vermelho e vermelho  
OUT 01  
RET  

ORG 60
MOV AL, 30  ; verde e vermelho  
OUT 01  
RET  

ORG 70
MOV AL, 50  ; amarelo e vermelho  
OUT 01  
RET  

END
