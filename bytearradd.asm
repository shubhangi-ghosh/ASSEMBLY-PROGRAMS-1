  DATA SEGMENT
    A DB 01H,02H,03H,04H
    SUM DB ?
  DATA ENDS
  CODE SEGMENT
    ASSUME:CS: CODE DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV CX,4
    MOV AL,0
    MOV SI,0
    LABEL1: ADD AL,A[SI]
           INC SI
           LOOP LABEL1
           MOV SUM,AL 
    CODE ENDS
  END START
