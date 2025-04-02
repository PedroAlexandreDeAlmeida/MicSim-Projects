CLO 
ADD DL, C0

Rep:  

IN 00  

MOV [DL], AL
INC DL

CMP AL,0D
JNZ Rep  

END  
