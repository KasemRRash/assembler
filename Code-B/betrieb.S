; 
; Aufgabe: strukturgebendes Code-Muster für die Software-Entwicklung für
;          Mikrokontroller
; 
;          Dies ist der Programmteil, der mit der Initialisierung beginnt
;          und dann im Hauptteil in eine Endlosschleife übergeht.
;
; Autor: Henrik Lipskoch
; Version: 2022-05
;
; Hardware: ATtiny2313

; Labels stehen immer ganz links

; Initialisierung der Ausgabe: Beginn
  sbi DDRD,PD3
  sbi DDRD,PD4
  sbi DDRD,PD5
  sbi DDRD,PD6
; Initialisierung der Ausgabe: Ende

;;; Ihr Code ....

StartB:

  rcall aufgabe3b
  sbi PORTD,PD4
  cbi PORTD,PD3
  cbi PORTD,PD2
  sbi PORTD,PD3
  sbi PORTD,PD2
  nop
  cbi PORTD,PD4
  rjmp StartB
