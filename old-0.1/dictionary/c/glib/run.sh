brew install glib
gcc-14 -std=c23 `pkg-config --cflags --libs glib-2.0` main.c -o main
./main
