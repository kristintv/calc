.PHONY: main

all: Calc Calc_test

Calc: main.o function.o
	gcc  main.o function.o -o Quard -lm

main.o: src/main.c src/function.h
	gcc -c src/main.c -o main.o -lm 

function.o: src/function.c src/function.h 
	gcc  -c src/function.c -o function.o
	
Calc_test: test/maint.o test/function_test.o
	gcc test/maint.o test/function_test.o  -o testik -lm -I thirdparty
	./testik
	
test/maint.o: test/main.c src/function.h
	gcc -I thirdparty -c test/main.c -o test/maint.o -lm 

test/function_test.o: src/function.h test/function_test.c
	gcc -I thirdparty -c test/function_test.c -o test/function_test.o -lm 


