# Makefile for PngMinus (png2pnm and pnm2png)
# Linux / Unix

#CC = cc
CC = gcc
LD = $(CC)

RM = rm -f

PNGINC = -I../..
PNGLIB_STATIC = ../../libpng.a
PNGLIB_SHARED = -L../.. -lpng

ZINC = -I../../../zlib
ZLIB_STATIC = ../../../zlib/libz.a
ZLIB_SHARED = -L../../../zlib -lz

CPPFLAGS = $(PNGINC) $(ZINC)
CFLAGS =
LDFLAGS =
LIBS_STATIC = $(PNGLIB_STATIC) $(ZLIB_STATIC)
LIBS_SHARED = $(PNGLIB_SHARED) $(ZLIB_SHARED)

EXEEXT =
#EXEEXT = .exe

# dependencies

all: png2pnm-static$(EXEEXT) png2pnm-shared$(EXEEXT) pnm2png-static$(EXEEXT) pnm2png-shared$(EXEEXT)

png2pnm.o: png2pnm.c
	$(CC) -c $(CPPFLAGS) $(CFLAGS) png2pnm.c

png2pnm-static$(EXEEXT): png2pnm.o
	$(LD) $(LDFLAGS) -o png2pnm-static$(EXEEXT) png2pnm.o $(LIBS_STATIC) -lm

png2pnm-shared$(EXEEXT): png2pnm.o
	$(LD) $(LDFLAGS) -o png2pnm-shared$(EXEEXT) png2pnm.o $(LIBS_SHARED) -lm

pnm2png.o: pnm2png.c
	$(CC) -c $(CPPFLAGS) $(CFLAGS) pnm2png.c

pnm2png-static$(EXEEXT): pnm2png.o
	$(LD) $(LDFLAGS) -o pnm2png-static$(EXEEXT) pnm2png.o $(LIBS_STATIC) -lm

pnm2png-shared$(EXEEXT): pnm2png.o
	$(LD) $(LDFLAGS) -o pnm2png-shared$(EXEEXT) pnm2png.o $(LIBS_SHARED) -lm

clean:
	$(RM) png2pnm.o png2pnm-static$(EXEEXT) png2pnm-shared$(EXEEXT)
	$(RM) pnm2png.o pnm2png-static$(EXEEXT) pnm2png-shared$(EXEEXT)

# End of makefile for png2pnm / pnm2png
