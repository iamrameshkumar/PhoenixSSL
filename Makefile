#Makefile for Linux and Cygwin
SRCS = main.c
	
all:phoenixSSL.o
	gcc -o phoenixSSL phoenixSSL.o -lssl -lcrypto

phoenixSSL.o:
	gcc -g -c -Wall  $(SRCS)

clean:
	rm -f phoenixSSL
	rm -f phoenixSSL.o
