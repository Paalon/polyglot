gcc-14 -std=c23 (pkg-config --cflags --libs glib-2.0 | string split " ") main.c -o main
./main
