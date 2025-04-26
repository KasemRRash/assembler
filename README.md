# assembler
Projekte mit Assembler &amp; Arduino

In diesem Projekt habe ich im Rahmen des Moduls Rechnerarchitektur an der Hochschule Bremerhaven Assembler-Programme entwickelt und auf einem Arduino (ATtiny-Mikrocontroller) getestet.
![image](https://github.com/user-attachments/assets/e4eb1454-2403-4f29-b48a-ad5bfcdd53e3)

**Was ich gemacht habe:**
Assembler-Programme geschrieben, die eine bestimmte Anzahl an Taktzyklen erreichen sollten.

Die Programme enthielten Schleifen, arithmetische Befehle und Port-Steuerungen (z.B. sbi, cbi), um Pins am Arduino zu schalten.

Mit make, Simulator (gtkwave) und Oszilloskop überprüfte ich die korrekte Taktanzahl.

Ich habe Funktionen erstellt (mit rcall und ret), um den Code besser zu strukturieren.

In einer späteren Aufgabe wurden Zero- und Carry-Bits gezielt erzeugt und verschachtelte Schleifen optimiert.

**Technologien und Tools:**

- AVR Assembler

- Arduino (ATtiny)

- make / Simulation (main-sim)
- 
![image](https://github.com/user-attachments/assets/064b101c-7834-4f97-8b76-53bebc746426)


- Oszilloskop-Messungen

![image](https://github.com/user-attachments/assets/3da362bf-d1ae-4737-b55d-e04e85908199)


**Ergebnisse:**

Der Code funktionierte korrekt und erreichte die gewünschten Taktzahlen.

Ich habe gelernt, Assembler präzise und taktsicher zu programmieren und Hardware-Signale zu kontrollieren.
