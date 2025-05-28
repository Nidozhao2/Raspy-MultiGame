all:
	@echo "Building with Makefile!"

	gcc -Wall -Wextra -Werror -pedantic -g -O2 -c main.c -o main.o
	gcc -Wall -Wextra -Werror -pedantic -g -O2 -c formitas.c -o formitas.o


	gcc -Wall -Wextra -pedantic -std=c99 -O2 -g main.o formitas.o -o main
	gcc main.o formitas.o -g -O2 -o main


run:
clean:
	rm -f main.exe main.o formitas.o


#test_CelsiusFahrenheit.elf : build/test_CelsiusFahrenheit.o build/CelsiusFahrenheit_s.o libE9M22.a
#	arm-none-eabi-ld $(LDFLAGS) build/test_CelsiusFahrenheit.o build/CelsiusFahrenheit_s.o p_lib/startup.o \
#					libE9M22.a p_lib/libfoncompus.a -o test_CelsiusFahrenheit.elf
#
#build/test_CelsiusFahrenheit.o : tests/test_CelsiusFahrenheit.c include/E9M22.h include/CelsiusFahrenheit.h
#	arm-none-eabi-gcc $(CCFLAGS) -c tests/test_CelsiusFahrenheit.c -o build/test_CelsiusFahrenheit.o
