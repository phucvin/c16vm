cd ..

gcc -o c16vm c16memory.c c16cpu.c c16memmap.c c16screen.c c16membank.c c16graphics.c c16vm.c c16main.c -Iinclude  -Wall -Werror -Wpedantic

./c16vm