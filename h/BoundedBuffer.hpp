#ifndef PROJECT_BASE_BUFFER_HPP
#define PROJECT_BASE_BUFFER_HPP

#include "_semaphore.hpp"

class BoundedBuffer
{
public:
    friend class ConsoleController;

    BoundedBuffer();
    ~BoundedBuffer();

    void append(char c);
    char take();

    bool isFull() const{ return (sz == BUFFER_SIZE); }

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
private:
    _semaphore* itemAvailiable = nullptr;
    _semaphore* spaceAvailable = nullptr;


    static const size_t BUFFER_SIZE = 256;
    char data[BUFFER_SIZE];
    int head = 0;
    int tail = 0;
    int sz = 0;
};


#endif //PROJECT_BASE_BUFFER_HPP
