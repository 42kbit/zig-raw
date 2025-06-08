#!/bin/sh
zig build-obj -target x86_64-freestanding src/main.zig
# --dynamic-linker sets a custom dynamic linked, cuz on my machine it changes it to /lib/ld64.so.1 for some reason
# we pass main.o with crt1.o files. crt1.o contains bootstrap code for libc
ld --dynamic-linker=/lib64/ld-linux-x86-64.so.2  main.o /usr/lib/x86_64-linux-gnu/crt1.o -lc