#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP
#include "../lib/hw.h"



struct FreeMem{
    FreeMem* next;
    FreeMem* prev;
    size_t size;   /*specified in MEM_BLOCK_SIZE*/
};


class MemoryAllocator{
public:
    static FreeMem* fmem_head;

    static void memInit();
    static void* mem_alloc(size_t size);
    static int mem_free(void* ptr);

    static size_t bytesToBlocks(size_t bytes);
};

inline size_t MemoryAllocator::bytesToBlocks(size_t bytes) //to given requested size it adds sizeof(FreeMem) for header
{
    bytes += sizeof(FreeMem);
    return (bytes % MEM_BLOCK_SIZE != 0) ? bytes / MEM_BLOCK_SIZE + 1: bytes / MEM_BLOCK_SIZE;
}

#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
