# MIPSium

> a tiny OS written in MIPS Assembly

MIPSium is a small OS project I'm building from scratch in MIPS Assembly.

The goal is mostly to understand how the low-level stuff actually works instead of just reading about it.

It's probably going to get messy. That's part of the project.

## Current status

**very early development**

Right now MIPSium can:

* boot the kernel
* print a boot message
* load code from multiple Assembly files
* build through a small Makefile

Current output:

```text
Booting MIPSium...
```

## Roadmap

The plan is to slowly build an actual small OS:

* [x] basic project structure
* [x] build system
* [x] kernel entry point
* [x] basic printing
* [ ] kernel initialization
* [ ] memory management
* [ ] heap allocator
* [ ] interrupts & exceptions
* [ ] timer
* [ ] processes
* [ ] context switching
* [ ] scheduler
* [ ] syscalls
* [ ] user programs
* [ ] filesystem
* [ ] shell
* [ ] debugging tools
* [ ] tests
* [ ] benchmarks

## Project structure

```text
mipsium/
├── src/
│   ├── kernel.asm
│   └── lib/
│       └── print.asm
│
│
│ 
│
├── build/
├── Makefile
└── README.md
```

This will probably change a lot as the project grows.

## Building

You'll need:

* QtSPIM
* `make`
* `git`

Build:

```bash
make
```

Clean:

```bash
make clean
```

The generated kernel is placed in:

```text
build/kernel.asm
```

Load that file in QtSPIM and run it.

