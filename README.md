# OS1 Project: RISC-V Kernel

A small operating system kernel written specifically for the **RISC-V** architecture, running inside the **QEMU** emulator.

The kernel uses **no external libraries**, which means no system calls of the host operating system are used. Everything is implemented from scratch, including thread handling, memory allocation, semaphores and interrupts.

The full project specification, operating modes and call hierarchy are described in the course PDF, or can be inferred from the source code.

## Features

- **Threads**: thread control blocks (TCB), a scheduler and context switching
- **Memory allocator**: a custom allocator for kernel and user memory
- **Semaphores**: blocking synchronization primitives
- **Timed sleep**: threads can sleep for a given number of ticks
- **Console I/O**: buffered console input and output (bounded buffer + console controller)
- **Interrupts and traps**: supervisor trap handling, including system calls, timer and console interrupts
- **Two APIs**: a C API (`syscall_c`) and a C++ API (`syscall_cpp`) on top of the system call layer

## Project structure

```
.
├── src/
│   ├── main.cpp               # entry point
│   ├── riscv.cpp              # RISC-V specific helpers and trap handler
│   ├── supervisorTrap.S       # trap entry: saves/restores registers
│   ├── contextSwitch.S        # thread context switch
│   ├── registersUtil.S        # register access helpers
│   ├── TCB.cpp                # thread control block
│   ├── scheduler.cpp          # thread scheduler
│   ├── _semaphore.cpp         # semaphore implementation
│   ├── SleepList.cpp          # list of sleeping threads
│   ├── MemoryAllocator.cpp    # memory allocator
│   ├── BoundedBuffer.cpp      # bounded buffer
│   ├── ConsoleController.cpp  # console I/O handling
│   ├── print.cpp              # kernel printing helpers
│   ├── syscall_c.cpp          # C system call API
│   └── syscall_cpp.cpp        # C++ system call API
├── h/                         # headers
├── lib/                       # course-provided support files
├── test/                      # tests
├── LICENSE
└── Makefile
```

## Requirements

- RISC-V cross-compiler (`riscv64-linux-gnu-gcc` or similar)
- `make`
- `qemu-system-riscv64`

## Build and run

```bash
make          # build the kernel
make qemu     # run it in QEMU
make clean
```

Adjust the targets above to match your Makefile.

## Architecture overview

1. The kernel boots in supervisor mode on a QEMU RISC-V virtual machine.
2. User code calls the system call API (`syscall_c` / `syscall_cpp`), which executes an `ecall`.
3. `supervisorTrap.S` saves all registers and calls the C++ trap handler in `riscv.cpp`.
4. The handler dispatches the request (thread, semaphore, memory, sleep, console) or handles the timer/console interrupt.
5. Registers are restored and control returns with `sret`. Thread switches happen through `contextSwitch.S`.
