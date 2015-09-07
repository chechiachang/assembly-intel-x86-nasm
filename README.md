# assembly-intel-x86-nasm

### About

I use this repository to upload file during my learning of assembly language.

### Detail
* use intel x86 style style
* run on linux
* use nasm assembler

## How to use
* Use helloworld as an example.
* Create a file named helloworld.asm. You can use any text-editor you like. (I use sublime-text)
* In terminal, go to the same directory with helloworld.asm file.
* Use following command to assemble helloworld.asm into helloworld.o : 
* `nasm -f elf helloworld.asm`
* Use following command to make file executable with a link:
* `ld -m elf_i386 -s -o helloworld helloworld.asm`
* Use following command to execute:
* `./helloworld`
* The file should run if everything is correct.
