# asm-hello-world - Copyright (c) 2014 Gomez Guillaume.
#
# This software is provided 'as-is', without any express or implied warranty.
# In no event will the authors be held liable for any damages arising from
# the use of this software.
#
# Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it
# freely, subject to the following restrictions:
#
# 1. The origin of this software must not be misrepresented; you must not claim
#    that you wrote the original software. If you use this software in a product,
#    an acknowledgment in the product documentation would be appreciated but is
#    not required.
#
# 2. Altered source versions must be plainly marked as such, and must not be
#    misrepresented as being the original software.
#
# 3. This notice may not be removed or altered from any source distribution.

hello_world:
	nasm -f elf64 src/test.asm -o test.o
	ld test.o -o hello_world
	rm test.o

hello_world_x86:
	nasm -f elf src/test.asm -o test.o
	ld test.o -o hello_world
	rm test.o

clean:
	rm hello_world

re: clean hello_world

re_x86: clean hello_world_x86