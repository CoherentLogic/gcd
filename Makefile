
EXE=gcd-basic gcd-c GCD.class gcd-cobol gcd-fortran gcd-pascal gcd-ada gcd-pli gcd-go gcd-rust

all: $(EXE)

gcd-basic: gcd-basic.bas
	fbc -x gcd-basic gcd-basic.bas

gcd-c: gcd.c
	cc -o gcd-c gcd.c

GCD.class: GCD.java
	javac GCD.java

gcd-cobol: gcd.cob
	cobc -x -o gcd-cobol gcd.cob

gcd-fortran: gcd.f90
	gfortran -o gcd-fortran gcd.f90

gcd-pascal: gcd.pas
	fpc -ogcd-pascal gcd.pas

gcd-ada: gcd-ada.adb
	gnat make -o gcd-ada gcd-ada.adb

gcd-go: gcd-go.go
	go build gcd-go.go

gcd-rust: gcd-rust.rs
	rustc gcd-rust.rs

gcd-pli: gcd.pli
	plic -lsiaxgo -ew "-cn(^) -i/usr/local/include" -C gcd.pli -o gcd-pli.o
	ld -z muldefs -Bstatic -M -e main -t -o gcd-pli gcd-pli.o -lprf --oformat=elf32-i386 -melf_i386

clean:
	rm -f $(EXE)
	rm -f *.ads *.ali *.o

.PHONY: all clean
