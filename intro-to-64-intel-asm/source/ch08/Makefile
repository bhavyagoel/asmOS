PROGS = switch if if2 if3 countbitsc countbits findchar add_arrays \
	findcharright strlen memcmp

all: $(PROGS) 

.SUFFIXES:
.SUFFIXES: .o .asm
.SECONDARY:

DIR = `basename $(PWD)`
SCRIPTS = ../scripts

CCFLAGS = -g

.asm.o:
	yasm -Worphan-labels -f elf64 -g dwarf2 -l $*.lst $<

.o:
	$(SCRIPTS)/ygcc -o $@ $<

countbitsc: countbits.c
	gcc -O3 -o countbitsc countbits.c

clean:
	rm -f $(PROGS) *.o *.lst *~ .*.gdb *.s

tgz: clean
	(cd ..; tar cvzf  $(DIR).tgz $(DIR))
