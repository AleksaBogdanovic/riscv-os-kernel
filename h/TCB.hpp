#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP



#include "../lib/hw.h"
#include "scheduler.hpp"
#include "MemoryAllocator.hpp"

class Scheduler;

class TCB
{
    friend class Scheduler;
    friend class Riscv;
    friend class _semaphore;
    friend class SleepList;
public:
    using Body = void (*)(void*);

    static TCB* createThread(Body body, void* args, uint64* stack);
    static TCB* createUserThread(Body body, void* args, uint64* stack);


    static void yield();

    static TCB* createMainThread();
    static TCB* createIdleThread();
    static void idleThreadBody(void* args);

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }

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
    ~TCB() { delete[] stack; }

    enum State {
        READY,
        RUNNING,
        BLOCKED,
        FINISHED,
        SLEEPING,
        IDLE
    };

    State getState() const { return state; }
    void setState(State s) { state = s; }

    //static uint64 constexpr STACK_SIZE = 2048;

private:
    TCB (Body body, void* args, uint64 timeSlice, uint64* stack, bool isPrivileged);


    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64* stack;
    Context context;
    void* args;
    uint64 timeSlice;
    bool finished;
    bool isPrivileged; //u startu se postavlja true, posebna funkcija omotac za user niti

    //za ulancavanje liste
    TCB* next = nullptr; //Thread can be in one list (waiting, sleeping, scheduler...) at a time
    TCB* prev = nullptr;

    time_t sleepTime;   //relative sleeping time, used in class SleepList
    int waitForResources = 0; //used only while thread is in blocked queue
    State state;

    static TCB* main;
    static TCB* idle;

    static void threadWrapper();

    static void contextSwitch(Context* oldContext, Context* runningContext);

    static void dispatch();

    static uint64 timeSliceCounter;

    //static uint64 constexpr TIME_SLICE = 2;
    //static uint64 constexpr STACK_SIZE = 2048; //moved to public
};



#endif //PROJECT_BASE_TCB_HPP
