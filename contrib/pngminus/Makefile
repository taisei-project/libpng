# Makefile for PngMinus (png2pnm and pnm2png)
# Linux / Unix

# dependencies

all: png2pnm-static png2pnm-shared pnm2png-static pnm2png-shared

png2pnm.o: png2pnm.c
	gcc -c -I../.. -I../../../zlib png2pnm.c

png2pnm-static: png2pnm.o
	gcc -o png2pnm-static png2pnm.o ../../libpng.a ../../../zlib/libz.a -lm

png2pnm-shared: png2pnm.o
	gcc -o png2pnm-shared png2pnm.o -L../.. -L../../../zlib -lpng -lz -lm

pnm2png.o: pnm2png.c
	gcc -c -I../.. -I../../../zlib pnm2png.c

pnm2png-static: pnm2png.o
	gcc -o pnm2png-static pnm2png.o ../../libpng.a ../../../zlib/libz.a -lm

pnm2png-shared: pnm2png.o
	gcc -o pnm2png-shared pnm2png.o -L../.. -L../../../zlib -lpng -lz -lm

clean:
	rm -f png2pnm.o
	rm -f pnm2png.o
	rm -f png2pnm-static
	rm -f png2pnm-shared
	rm -f pnm2png-static
	rm -f pnm2png-shared

# End of makefile for png2pnm / pnm2png
