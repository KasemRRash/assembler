; 
; Aufgabe: strukturgebendes Code-Muster für die Software-Entwicklung für
;          Mikrokontroller
; 
;          Dies ist die Hauptdatei, von der auf die anderen Dateien
;          verwiesen wird.
;
;          Und diese Variante ist die Grundlage für die Simulation. Es wird
;          PORT D mitgeschnitten, so dass Pin-Änderungen auf PORT D in der Datei
;          test-output.vcd aufgezeichnet werden.
;
; Autor: Henrik Lipskoch
; Version: 2022-05
;
; Hardware: ATtiny2313
  
.NOLIST
;; Prolog zur Simulation: Start
.GLOBAL _AVR_MMCU_TAG_NAME
.SECTION .mmcu,"a",@progbits
.TYPE _AVR_MMCU_TAG_NAME, @object
.SIZE _AVR_MMCU_TAG_NAME, 66
_AVR_MMCU_TAG_NAME:
.BYTE 1
.BYTE 64
.STRING "attiny2313"

.ZERO 53

.GLOBAL _AVR_MMCU_TAG_FREQUENCY19
.TYPE _AVR_MMCU_TAG_FREQUENCY19, @object
.SIZE _AVR_MMCU_TAG_FREQUENCY19, 6
_AVR_MMCU_TAG_FREQUENCY19:
.BYTE 2
.BYTE 4
.BYTE 0
.BYTE 18
.BYTE 122
.BYTE 0
.GLOBAL _mmcu
.TYPE _mmcu, @object
.SIZE _mmcu, 2
_mmcu:
.ZERO 2
.GLOBAL _AVR_MMCU_TAG_VCD_FILENAME
.TYPE _AVR_MMCU_TAG_VCD_FILENAME, @object
.SIZE _AVR_MMCU_TAG_VCD_FILENAME, 66
_AVR_MMCU_TAG_VCD_FILENAME:
.BYTE 12
.BYTE 64
.STRING "test-output.vcd"

.ZERO 48


.GLOBAL _AVR_MMCU_TAG_VCD_PERIOD23
.TYPE _AVR_MMCU_TAG_VCD_PERIOD23, @object
.SIZE _AVR_MMCU_TAG_VCD_PERIOD23, 6
_AVR_MMCU_TAG_VCD_PERIOD23:
.BYTE 13
.BYTE 4
.BYTE 16
.BYTE 39
.BYTE 0
.BYTE 0
.GLOBAL _mytrace
.TYPE _mytrace, @object
.SIZE _mytrace, 37
_mytrace:
.BYTE 14
.BYTE 35
.ZERO 1
.WORD 50
.STRING "PORT_D"

.ZERO 25
;; Prolog zur Simulation: Ende

; Definitionen: Start
.INCLUDE "definition.S"
; Definitionen: Ende

; Code: Start
.LIST
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

;; Epilog zur Simulation: Start

  sleep
 
  ret
.SIZE main, .-main
;; Epilog zur Simulation: Ende

; Betriebscode: Ende
; Code: Ende

