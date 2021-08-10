# AsmOS - An Assembly Language Operating System


## Dependencies
- nasm 
- qemu
- fasm 
- i8086emu-git

```bash
sudo pacman -S qemu nasm fasm i8086emu-git
```

## Running ASM Code

- Linux 

```bash
nasm -f elf64 test.asm && ld test.0 && ./a.out
```
[elf64](https://0xax.gitbooks.io/linux-insides/content/Theory/linux-theory-2.html)









---
#### References
* https://0xax.gitbooks.io/linux-insides/content/
* https://cs.lmu.edu/~ray/notes/nasmtutorial/
* [nasm.us/doc/](https://www.nasm.us/doc/)
* https://software.intel.com/content/www/us/en/develop/articles/intel-sdm.html
* https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf
* http://mikeos.sourceforge.net/write-your-own-os.html#firstos
* http://mikeos.sourceforge.net/
* https://github.com/azarovalex/azOS