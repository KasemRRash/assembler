# Mikrokontroller-Einstellungen
# Art
MCU := attiny2313
# Taktfrequenz
F_CPU := 1000000

# Programmeinstellungen, Programmname, Programmteile
OBJECT := main
INCLUDES := definition.S funktion.S betrieb.S

# Compiler-Einstellungen
CC := avr-gcc
AS := avr-gcc
CFLAGS := -mmcu=$(MCU) \
	  -I /usr/include/simavr/ \
	  -Wall
ASFLAGS := $(CFLAGS)

# Simulator-Einstellungen
SIMULATOR := simavr

all: clean $(OBJECT).hex

clean:
	rm -f *.elf
	rm -f *.hex
	rm -f *.ihex
	rm -f *-output.vcd

%-firm: %.hex
	sudo avrdude -p t2313 -c linuxgpio -v -U $< || true

%.hex: %.elf
	avr-objcopy -O ihex $< $@

%.elf: %.S $(INCLUDES)
	$(AS) $(ASFLAGS) -o $@ $<

%-sim: %-sim.elf
	$(SIMULATOR) -m $(MCU) -f $(F_CPU) $<

%-sim.elf: %-sim.S $(INCLUDES)
	$(AS) $(ASFLAGS) \
	  -Wl,--undefined=_mmcu,--section-start=.mmcu=0x910000 \
	  -o $@ $<

