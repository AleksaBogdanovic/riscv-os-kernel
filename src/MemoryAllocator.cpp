#include "../h/MemoryAllocator.hpp"

FreeMem* MemoryAllocator::fmem_head = nullptr;

void MemoryAllocator::memInit(){
    fmem_head = (FreeMem*) HEAP_START_ADDR;
    fmem_head->size = ((char*) HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    fmem_head->next = nullptr;
    fmem_head->prev = nullptr;
}

//mozda lose ako se zada tacno MEM_BLOCK_SIZE
void* MemoryAllocator::mem_alloc(size_t size){

    size_t blcksSize = size; //ponovljeno zato sto sam prvo ovde konvertovao u blokove

    FreeMem* bestFit = nullptr;
    for (FreeMem* cur = MemoryAllocator::fmem_head; cur != nullptr; cur = cur->next)
    {
        if (cur->size < blcksSize) continue;
        if (bestFit == nullptr || bestFit->size > cur->size){
            bestFit = cur;
        }
    }

    if (!bestFit) return nullptr;

    if (bestFit->size > blcksSize)
    {
        FreeMem* newSeg = (FreeMem*) ((char*) bestFit + blcksSize * MEM_BLOCK_SIZE);
        newSeg->size = bestFit->size - blcksSize;
        bestFit->size = blcksSize;

        newSeg->next = bestFit->next;
        newSeg->prev = bestFit->prev;
        if (bestFit->prev) bestFit->prev->next = newSeg;
        else MemoryAllocator::fmem_head = newSeg;
        if (bestFit->next) bestFit->next->prev = newSeg;
        
        // //azuriranje USED liste
        //     if(used == nullptr) {
        //         used = cur;
        //         cur->next = nullptr;
        //         cur->prev = nullptr;
        //     }
        //     else if((char*) cur < (char*)used) {
        //         //treba da ide pre trenutnog used
        //         used->prev = cur;
        //         cur->prev = nullptr;
        //         cur->next = used;
        //         used = cur;
        //     }
        //     else {
        //         //Find place in list
        //         FreeMem* curUsed = used;
        //         for(; curUsed->next && (char*)(curUsed->next) < (char*) cur; curUsed = curUsed->next);
        //
        //         cur->next = curUsed->next;
        //         cur->prev = curUsed;
        //         if(cur->next) cur->next->prev = cur;
        //         curUsed->next = cur;
        //     }

    }
    else
    {
        if (bestFit->prev) bestFit->prev->next = bestFit->next;
        else MemoryAllocator::fmem_head = bestFit->next;
        if (bestFit->next) bestFit->next->prev = bestFit->prev;

        //Update USED list
        // if(used == nullptr) {
        //     used = cur;
        //     cur->next = nullptr;
        //     cur->prev = nullptr;
        // }
        // else if((char*) cur < (char*)used) {
        //     //Goes before curent used
        //     used->prev = cur;
        //     cur->prev = nullptr;
        //     cur->next = used;
        //     used = cur;
        // }
        // else {
        //     //Find place in list
        //     FreeMem* curUsed = used;
        //     for(; curUsed->next && (char*)(curUsed->next) < (char*) cur; curUsed = curUsed->next);
        //
        //     cur->next = curUsed->next;
        //     cur->prev = curUsed;
        //     if(cur->next) cur->next->prev = cur;
        //     curUsed->next = cur;
        // }

    }

    bestFit->prev = nullptr;
    bestFit->next = nullptr;

    return (char*)bestFit + sizeof(FreeMem);
}


int MemoryAllocator::mem_free(void* ptr){

    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -1;
    if ((uint64)ptr % MEM_BLOCK_SIZE == 0 ) return -2;

    FreeMem* fptr = (FreeMem*) ((char*)ptr - sizeof(FreeMem)); // struct of memory segment
    FreeMem* cur;
    if (!MemoryAllocator::fmem_head || fptr < MemoryAllocator::fmem_head)
    {
        cur = nullptr;
    }
    else
    {
        for (cur = MemoryAllocator::fmem_head; cur->next != nullptr && fptr > cur->next; cur = cur->next);
    }

    //Try appending it to the previous free segment cur
    if (cur && (char*)cur + cur->size * MEM_BLOCK_SIZE == (char*)fptr)
    {
        cur->size += fptr->size;
        //try to join it with the next free segment
        if (cur->next && (char*)cur+cur->size * MEM_BLOCK_SIZE == (char*)cur->next)
        {
            //Remove cur->next from list
            cur->size += cur->next->size;
            cur->next = cur->next->next;
            if (cur->next) cur->next->prev = cur;
        }
        return 0;
    }
    else
    {
        //Try appending it to the previous free segment cur
        FreeMem* nextSeg = cur?cur->next:MemoryAllocator::fmem_head;
        if (nextSeg && (char*) fptr + fptr->size * MEM_BLOCK_SIZE == (char*) nextSeg){
            //fptr becomes new segment
            fptr->size += nextSeg->size;
            fptr->next = nextSeg->next;
            fptr->prev = nextSeg->prev;
            if (nextSeg->next) nextSeg->next->prev = fptr;
            if (nextSeg->prev) nextSeg->prev->next = fptr;
            else MemoryAllocator::fmem_head = fptr;
            return 0;
        }
        else
        {
            //no join insert new segment, insert fptr in free list
            fptr->prev = cur;
            if (cur) fptr->next = cur->next;
            else fptr->next = MemoryAllocator::fmem_head;
            if (fptr->next) fptr->next->prev = fptr;
            if (cur) cur->next = fptr;
            else MemoryAllocator::fmem_head = fptr;
        }
    }
    return 0;
}







