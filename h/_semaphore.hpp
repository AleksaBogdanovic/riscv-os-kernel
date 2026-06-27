#ifndef PROJECT_BASE__SEMAPHORE_HPP
#define PROJECT_BASE__SEMAPHORE_HPP

#include "TCB.hpp"
#include "MemoryAllocator.hpp"
#include "../lib/hw.h"


class _semaphore
{
public:

    int wait(); // da li treba odraditi neku vrstu lock i unlock za ove metode
    int signal();
    int close();
    int wait_n(int n);
    int signal_n(int n);

    int value() const { return val; }
    _semaphore(int init)
        :val(init)
    {}
    ~_semaphore() { this->close(); }

    
    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(MemoryAllocator::bytesToBlocks(size));
    }
    void operator delete(void* p) {
        MemoryAllocator::mem_free(p);
    }
    void* operator new[](size_t size) {
        return MemoryAllocator::mem_alloc(MemoryAllocator::bytesToBlocks(size));
    }
    void operator delete[](void* p) {
        MemoryAllocator::mem_free(p);
    }

protected:
    void block();
    void unblock();


private:

    void put();
    TCB* get();

    int volatile val;
    bool volatile closed = false;
    TCB* volatile blocked_head = nullptr;
    TCB* volatile blocked_tail = nullptr;

};

#endif //PROJECT_BASE__SEMAPHORE_HPP
