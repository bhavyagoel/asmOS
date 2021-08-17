PROGS = array copy_array min argsc args
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
	$(SCRIPTS)/ygcc -g -o $@ $<

args:   args.o
	$(SCRIPTS)/ygcc -g -o $@ $<

argsc: args.c
	$(SCRIPTS)/ygcc -O1 -g -o argsc args.c

clean:
	rm -f $(PROGS) *.o *.lst *~ .*.gdb

tgz: clean
	(cd ..; tar cvzf  $(DIR).tgz $(DIR))
