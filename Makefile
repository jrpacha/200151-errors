FC=gfortran

all: epsilon\
	sumshg\
	fibonacci\
	fibonacciFTN\
	recursion\
	 mcLaurinExp\
	 expM2\
	rounding

# epsilon.cc
epsilon: epsilon.o
	$(CXX) epsilon.o -O2 -std=c++11 -o epsilon

epsilon.o: epsilon.cc
	$(CXX) -c -O2 -std=c++11 epsilon.cc

# sumshg.cc
sumshg: sumshg.o errors.o
	$(CXX) -O2 -std=c++11 sumshg.o errors.o -o sumshg

sumshg.o: sumshg.cc errors.h
	$(CXX) -c -O2 -std=c++11 sumshg.cc

# fibonacci.cc
fibonacci: fibonacci.o
	$(CXX) -O2 -std=c++11 fibonacci.o -o fibonacci

fibonacci.o: fibonacci.cc
	$(CXX) -c -O2 -std=c++11 fibonacci.cc

# fibonacci.f90
fibonacciFTN: fibonacciFTN.o
	$(FC) -O2 fibonacciFTN.o -o fibonacciFTN

fibonacciFTN.o: fibonacci.f90
	$(FC) -c -O2 fibonacci.f90 -o fibonacciFTN.o

# recursion.cc
recursion: recursion.o
	$(CXX) -O2 -std=c++11 recursion.o -o recursion

recursion.o: recursion.cc 
	$(CXX) -c -O2 -std=c++11 recursion.cc

# rounding.cc
rounding: rounding.o errors.o
	$(CXX) rounding.o  errors.o -std=c++11 -o rounding

rounding.o: rounding.cc
	$(CXX) -c -O2 -std=c++11 rounding.cc

# mcLaurinExp.cc
mcLaurinExp.o: mcLaurinExp.cc
	$(CXX) -c -O2 -std=c++11 mcLaurinExp.cc

mcLaurinExp: mcLaurinExp.o
	$(CXX) mcLaurinExp.o -std=c++11 -o mcLaurinExp

# expM2.cc
expM2.o: expM2.cc
	$(CXX) -c -O2 -std=c++11 expM2.cc

expM2: expM2.o
	$(CXX) expM2.o -std=c++11 -o expM2

errors.o: errors.cc errors.h
	$(CXX) -c -O2 -std=c++11 errors.cc

clean:
	rm -f *.o

mrproper: clean
	rm -f epsilon epsilon.exe\
	       	sumshg sumshg.exe\
		fibonacci fibonacci.exe\
	        fibonacciFTN fibonacciFTN.exe\
	       	rounding rounding.exe\
		recursion recursion.exe\
		mcLaurinExp mcLaurinExp.exe\
		expM2 expM2.exe\
		rounding rounding.exe

.PHONY: all clean mrproper
