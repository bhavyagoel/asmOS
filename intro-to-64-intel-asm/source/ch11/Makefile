PROGS = mov mov_packed add add_packed sub sub_packed \
	convert convert2 compare compare2 minmax distance \
	dot_product horner
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

clean:
	rm -f $(PROGS) *.o *.lst *~ .*.gdb

tgz: clean
	(cd ..; tar cvzf  $(DIR).tgz $(DIR))
