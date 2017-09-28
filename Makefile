.PHONY: main

all: Calc

Calc: main.o function.o
	gcc  main.o function.o -o Quard -lm

main.o: src/main.c src/function.h
	gcc -c src/main.c -o main.o -lm 

function.o: src/function.c src/function.h 
	gcc  -c src/function.c -o function.o

.PHONY: test 
Calc_test: test/main.o test/function_test.o
	gcc test/main.o test/function_test.o function.o -o Calc_test -lm
	./Calc_test
	
test/main.o: test/main.c src/function.h
	gcc -I thirdparty -c test/main.c -o test/maint.o -lm 

test/function_test.o: src/function.h test/function_test.c
	gcc -I thirdparty -c test/function_test.c -o test/function_test.o -lm 


