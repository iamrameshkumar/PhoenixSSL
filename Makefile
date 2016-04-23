#Makefile for Linux and Cygwin
SRCS = sslscan.c
	
all:sslscan.o
	gcc -o sslscan sslscan.o -lssl -lcrypto

sslscan.o:
	gcc -g -c -Wall  $(SRCS)

clean:
	rm -f sslscan
	rm -f sslscan.o
