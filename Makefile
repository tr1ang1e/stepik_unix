a.out: main.c libunit.so
	gcc main.c -L./lib/shared/ -lunit

libunit.so: ./source/c/unit.c ./include/c/header.h
	gcc -shared -fPIC ./source/c/unit.c -o ./lib/shared/libunit.so