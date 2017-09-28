.PHONY: main
main: main.o function.o
	gcc  main.o function.o -o Quard -lm

main.o: src/main.c src/function.h
	gcc -c src/main.c -o main.o -lm 

function.o: src/function.c src/function.h 
	gcc  -c src/function.c -o function.o
.PHONY: test	
test: test/maint.o test/function_test.o src/function.o
	gcc test/maint.o test/function_test.o src/function.o -o testik -lm -Ithirdparty 
	./testik
	
test/maint.o: test/main.c src/function.h
	gcc -Ithirdparty -c test/main.c -o test/maint.o -lm 

test/function_test.o: src/function.h test/function_test.c 
	gcc -Ithirdparty -c test/function_test.c -o test/function_test.o -lm 
src/function.o: src/function.c
	gcc -Ithirdparty -c src/function.c -o src/function.o -lm 

