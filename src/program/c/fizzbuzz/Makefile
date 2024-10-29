SHELL = /usr/bin/env bash

SRCDIR = src
OBJDIR = obj
EXEDIR = exe

CC = gcc-14

CFLAGS = -std=c23 -Wall -Wextra

$(EXEDIR)/main: $(OBJDIR)/main.o $(EXEDIR)
	$(CC) $(CFLAGS) $(OBJDIR)/main.o -o $(EXEDIR)/main

$(OBJDIR):
	mkdir $(OBJDIR)

$(EXEDIR):
	mkdir $(EXEDIR)

$(OBJDIR)/main.o: $(SRCDIR)/main.c $(OBJDIR)
	$(CC) $(CFLAGS) -c $(SRCDIR)/main.c -o $(OBJDIR)/main.o

clean:
	rm $(EXEDIR)/main; \
	rmdir $(EXEDIR); \
	rm $(OBJDIR)/main.o; \
	rmdir $(OBJDIR)

.PHONY: clean
