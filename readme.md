# AsmOS - An Assembly Language Operating System


- [AsmOS - An Assembly Language Operating System](#asmos---an-assembly-language-operating-system)
  - [Dependencies](#dependencies)
  - [Running ASM Code](#running-asm-code)
      - [References](#references)
      - [Side Refernces](#side-refernces)

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
* [elf64](https://0xax.gitbooks.io/linux-insides/content/Theory/linux-theory-2.html)
* ld - linker editor or binder [TutorialsPoint](https://www.tutorialspoint.com/unix_commands/ld.htm)


---
#### References
* https://github.com/Nicolasipr/ASMOS
* https://github.com/philTornquist/asmOS
* https://github.com/ju34/asmos
* https://0xax.gitbooks.io/linux-insides/content/
* https://cs.lmu.edu/~ray/notes/nasmtutorial/
* [nasm.us/doc/](https://www.nasm.us/doc/)
* https://software.intel.com/content/www/us/en/develop/articles/intel-sdm.html
* https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf
* http://mikeos.sourceforge.net/write-your-own-os.html#firstos
* http://mikeos.sourceforge.net/
* https://github.com/azarovalex/azOS
* [System Call table](https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md)
* [system calls](https://filippo.io/linux-syscall-table/)
* [Linux NASM cheatsheet](https://gist.github.com/justinian/385c70347db8aca7ba93e87db90fc9a6#file-linux-x64-nasm-cheatsheet-md)
* [ASCII Table](https://www.cs.cmu.edu/~pattis/15-1XX/common/handouts/ascii.html)

#### Side Refernces
* https://dev.to/itzsudhan/better-github-commit-message-h0l