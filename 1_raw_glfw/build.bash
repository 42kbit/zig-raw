#!/bin/bash

# glfw requires libc to be loaded, otherwise you'll get a segfault
zig build-exe -lc -lglfw src/main.zig
