all:
	for dir in 01 02 03 04 05 06 08 09 10 11 12 13 14 15 16 17 18 19; \
	do			                 \
		(cd ch$$dir ; make clean; make)  \
	done


clean:
	for dir in 01 02 03 04 05 06 08 09 10 11 12 13 14 15 16 17 18 19; \
	do			           \
		(cd ch$$dir ; make clean)  \
	done
	rm -f *~
	rm -f *.tgz

tgz: clean
	(cd .. ; tar cvzf src.tgz src)
