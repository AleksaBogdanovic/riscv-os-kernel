#include "../h/syscall_c.hpp"

#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_codes.hpp"
#include "../h/TCB.hpp"



inline uint64 returnValue() {
    uint64 ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    return ret;
}

//asm volatile("csrr %0, sstatus" : "=r" (x));
void* mem_alloc(size_t size)
{
    size_t blocks = MemoryAllocator::bytesToBlocks(size);
    __asm__ volatile ("mv a1, %0" : : "r"(blocks));
    __asm__ volatile ("mv a0, %0" : : "r" (MEM_ALLOC));
    __asm__ volatile ("ecall");
    return (void*)returnValue();
}

int mem_free (void* ptr)
{
    __asm__ volatile ("mv a1, %0" : : "r"(ptr));
    __asm__ volatile ("mv a0, %0" : : "r" (MEM_FREE));
    __asm__ volatile ("ecall");

    return (int)returnValue();
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg)
{
    if (!handle) return -3;
    uint64* stack = nullptr;
    if (start_routine) stack = new uint64[DEFAULT_STACK_SIZE];

    __asm__ volatile ("mv a4, %0" : : "r"(stack));
    __asm__ volatile ("mv a3, %0" : : "r"(arg));
    __asm__ volatile ("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile ("mv a1, %0" : : "r"(handle));
    __asm__ volatile ("mv a0, %0" : : "r" (THREAD_CREATE));
    __asm__ volatile ("ecall");

    return (int)returnValue();
}

int thread_exit()
{
    __asm__ volatile ("mv a0, %0" : : "r"(THREAD_EXIT));
    __asm__ volatile ("ecall");

    return (int)returnValue();
}

void thread_dispatch()
{
    __asm__ volatile ("mv a0, %0" : : "r"(THREAD_DISPATCH));
    __asm__ volatile ("ecall");
}

int sem_open (sem_t* handle, unsigned init)
{
    if (!handle) return -3;
    __asm__ volatile ("mv a2, %0" : : "r"(init));
    __asm__ volatile ("mv a1, %0" : : "r"(handle));
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_OPEN));
    __asm__ volatile ("ecall");

    return (int)returnValue();
}

int sem_close (sem_t handle)
{
    if (!handle) return -3;
    __asm__ volatile ("mv a1, %0" : : "r"(handle));
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_CLOSE));
    __asm__ volatile ("ecall");

    return (int)returnValue();
}

int sem_wait (sem_t id)
{
    if (!id) return -3;
    __asm__ volatile ("mv a1, %0" : : "r"(id));
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_WAIT));
    __asm__ volatile ("ecall");

    return (int)returnValue();
}

int sem_signal (sem_t id)
{
    if (!id) return -3;
    __asm__ volatile ("mv a1, %0" : : "r"(id));
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_SIGNAL));
    __asm__ volatile ("ecall");

    return (int)returnValue();
}

int sem_wait_n(sem_t id, unsigned n)
{
    if (!id) return -3;
    __asm__ volatile ("mv a2, %0" : : "r"(n));
    __asm__ volatile ("mv a1, %0" : : "r"(id));
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_WAIT_N));
    __asm__ volatile ("ecall");

    return (int)returnValue();
}

int sem_signal_n(sem_t id, unsigned n)
{
    if (!id) return -3;
    __asm__ volatile ("mv a2, %0" : : "r"(n));
    __asm__ volatile ("mv a1, %0" : : "r"(id));
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_SIGNAL_N));
    __asm__ volatile ("ecall");

    return (int)returnValue();
}

int time_sleep(time_t time)
{
    if (time <= 0) return -3;
    __asm__ volatile ("mv a1, %0" : : "r"(time));
    __asm__ volatile ("mv a0, %0" : : "r" (TIME_SLEEP));
    __asm__ volatile ("ecall");

    return (int)returnValue();
}

char getc()
{
    __asm__ volatile ("mv a0, %0" : : "r" (GETC));
    __asm__ volatile ("ecall");

    return (char)returnValue();
}

void putc (char c)
{
    __asm__ volatile ("mv a1, %0" : : "r"(c));
    __asm__ volatile ("mv a0, %0" : : "r" (PUTC));
    __asm__ volatile ("ecall");
}



