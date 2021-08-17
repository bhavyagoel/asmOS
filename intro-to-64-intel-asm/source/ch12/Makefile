PROGS = hello32 hello hello_functions open copy
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

hello: hello.o
	$(SCRIPTS)/yld -o hello hello.o

clean:
	rm -f $(PROGS) *.o *.lst *~ .*.gdb

tgz: clean
	(cd ..; tar cvzf  $(DIR).tgz $(DIR))
