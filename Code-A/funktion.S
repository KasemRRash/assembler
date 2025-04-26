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

.GLOBAL aufgabe3a
.TYPE aufgabe3a, @function
aufgabe3a:

block_a_start:

  ldi R17,0
  ldi R16,46

Blockinnen:
  dec R16
  cp R16,R17
  brne Blockinnen

block_a_ende:

  ret
.SIZE aufgabe3a, .-aufgabe3a


