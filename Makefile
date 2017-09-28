.PHONY: clean all test
CFLAGS = -Wall -Werror -MP -MMD 

all: Calc

Calc: main.o function.o
	@echo "Make is 100%" 
	@gcc $(CFLAGS) main.o function.o -o Quard -lm

main.o: src/main.c src/function.h
	@gcc $(CFLAGS) -c src/main.c -o main.o -lm 

function.o: src/function.c src/function.h 
	@gcc $(CFLAGS) -c src/function.c -o function.o

test: 
	make Calc_test
	Calc_test 

Calc_test: test/main.o test/function_test.o
	@gcc $(CFLAGS) test/main.o test/function_test.o function.o -o Calc_test -lm
	
test/main.o: test/main.c src/function.h
	@gcc $(CFLAGS) -I thirdparty -c test/main.c -o test/maint.o -lm 

test/function_test.o: src/function.h test/function_test.c
	@gcc $(CFlAGS) -I thirdparty -c test/function_test.c -o test/function_test.o -lm 


