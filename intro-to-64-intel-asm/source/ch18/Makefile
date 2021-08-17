PROGS = testsobelc testsobelasm
all: $(PROGS) 

.SUFFIXES:
.SUFFIXES: .o .asm .c
.SECONDARY:

DIR = `basename $(PWD)`
SCRIPTS = ../scripts

CCFLAGS = -g

.asm.o:
	yasm -Worphan-labels -f elf64 -g dwarf2 -l $*.lst $<

.o:
	$(SCRIPTS)/ygcc -o $@ $<

testsobelc: testsobel.c sobel.c
	gcc -O3 -funroll-all-loops -o testsobelc testsobel.c sobel.c -lm

testsobelasm: testsobel.c sobel.asm
	yasm -Worphan-labels -f elf64 -g dwarf2 -l sobel.lst sobel.asm
	gcc -O3 -funroll-all-loops -o testsobelasm testsobel.c sobel.o -lm

clean:
	rm -f $(PROGS) *.o *.lst *~ .*.gdb

tgz: clean
	(cd ..; tar cvzf  $(DIR).tgz $(DIR))
