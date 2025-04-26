; Aufgabe: strukturgebendes Code-Muster für die Software-Entwicklung für
;          Mikrokontroller
; 
;          Dies ist der Funktionsteil.
;
; Autor: Henrik Lipskoch
; Version: 2022-05
;
; Hardware: ATtiny2313
  
; Der Funktionsteil ist in der ersten Stufe leer. Später im Verlauf
; des Semesters stehen hier Interrupt-Routinen und andere Funktionen.

.GLOBAL aufgabe3b
.TYPE aufgabe3b, @function
aufgabe3b:

block_a_start:

main2:
  ldi R16, 0x8
  ldi R17, 0x0
LoopLabel:
  .EQU cl, 255
  ldi R18, 0
  ldi R19, cl

LoopLabel_1:
  inc R18
  cp R18, R19
  brne LoopLabel_1
  dec R16
  cp R16, R17
  brne LoopLabel

  ldi R30, 0
  ldi R29, 47

LoopLabel_2:
  inc R30
  cp R30, R29
  brne LoopLabel_2
   
  ldi R20, 22

block_a_ende:  

ret  
.SIZE aufgabe3b, .-aufgabe3b


