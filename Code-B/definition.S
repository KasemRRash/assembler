; 
; Aufgabe: strukturgebendes Code-Muster für die Software-Entwicklung für
;          Mikrokontroller
; 
;          Dies ist die Definitionsdatei, in der Konstanten wie Port- und
;          Pin-Bezeichnungen definiert werden.
;
; Autor: Henrik Lipskoch
; Version: 2022-05
;
; Hardware: ATtiny 2313
  
; Punkt-Befehle schreiben wir komplett groß
.EQU DDRB,0x17
.EQU PORTB,0x18
.EQU PB7,7
.EQU PB6,6
.EQU PB5,5
.EQU PB4,4
.EQU PB3,3
.EQU PB2,2
.EQU PB1,1
.EQU PB0,0
.EQU DDRD,0x11
.EQU PORTD,0x12
; .EQU PD7,7 -- Pin 7 gibt es im Port D auf dem ATtiny2313 nicht
.EQU PD6,6
.EQU PD5,5
.EQU PD4,4
.EQU PD3,3
.EQU PD2,2
.EQU PD1,1
.EQU PD0,0
