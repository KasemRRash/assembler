; 
; Aufgabe: strukturgebendes Code-Muster für die Software-Entwicklung für
;          Mikrokontroller
; 
;          Dies ist die Hauptdatei, von der auf die anderen Dateien
;          verwiesen wird.
;
; Autor: Henrik Lipskoch
; Version: 2022-05
;
; Hardware: ATtiny 2313

; Definitionen: Start
.INCLUDE "definition.S"
; Definitionen: Ende

; Code: Start
.TEXT

; Funktionscode: Start
.INCLUDE "funktion.S"
; Funktions-Code: Ende

; Betriebscode: Start
.GLOBAL main
.TYPE main, @function
main:

; Importiere den Betriebscode
.INCLUDE "betrieb.S"

  ret
.SIZE main, .-main
; Betriebscode: Ende
; Code: Ende

