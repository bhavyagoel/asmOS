PROGS = thrashtlb
all: $(PROGS) 

.SUFFIXES:
.SUFFIXES: .o .asm -c
.SECONDARY:

DIR = `basename $(PWD)`
SCRIPTS = ../scripts

.asm.o:
	yasm -Worphan-labels -f elf64 -g dwarf2 -l $*.lst $<


thrashtlb.o: thrashtlb.c
	gcc -g -Wall -O3 -funroll-all-loops -c $<
	
thrashtlb: thrashtlb.o
	$(SCRIPTS)/ygcc -g -o thrashtlb thrashtlb.o

clean:
	rm -f $(PROGS) *.o *.lst *~ .*.gdb

tgz: clean
	(cd ..; tar cvzf  $(DIR).tgz $(DIR))
