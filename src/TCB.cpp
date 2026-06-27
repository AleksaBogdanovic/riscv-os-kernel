#include "../h/TCB.hpp"
#include "../h/scheduler.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_codes.hpp"
#include "../h/print.hpp"

uint64 TCB::timeSliceCounter = 0;
TCB* TCB::idle = nullptr;
TCB* TCB::main = nullptr;

TCB::TCB(Body body, void* args, uint64 timeSlice, uint64* stack, bool isPrivileged = true)
         :body(body),
         stack(stack),
         context(
             {body != nullptr ? (uint64) &threadWrapper : 0,
              body != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
         }),
         args(args),
         timeSlice(timeSlice),
         finished(false),
         isPrivileged(isPrivileged)
{
    if (body != nullptr)
    {
        this->setState(READY);
        Scheduler::put(this);
    }
    else{ this->setState(RUNNING);};
}

TCB* TCB::createThread(Body body, void* args, uint64* stack)
{
    return new TCB(body, args, DEFAULT_TIME_SLICE, stack, true);
}

TCB* TCB::createUserThread(Body body, void* args, uint64* stack)
{
    return new TCB(body, args, DEFAULT_TIME_SLICE, stack, false);
}

TCB* TCB::createMainThread()
{
    if (main) return main;
    main = createThread(nullptr, nullptr, nullptr);
    Scheduler::Running = main;
    return main;
}

void TCB::idleThreadBody(void* args)
{
    while (true) { TCB::yield(); }
}

TCB* TCB::createIdleThread()
{
    if (idle) return idle;
    uint64* stack = new uint64[DEFAULT_STACK_SIZE];
    idle = createThread((Body)TCB::idleThreadBody, nullptr, stack);
    idle->setState(TCB::IDLE);
    return idle;
}


void TCB::yield()
{
    __asm__ volatile ("mv a0, %0" : : "r" (THREAD_DISPATCH));
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    TCB *old = Scheduler::Running;
    State s = old->getState();
    if (!old->isFinished() && s != FINISHED && s != BLOCKED && s != SLEEPING && s != IDLE) //ovaj deo refaktorisi
    {
        old->setState(READY);
        Scheduler::put(old);
    }
    Scheduler::Running = Scheduler::get();
    Scheduler::Running->setState(RUNNING);

    TCB::contextSwitch(&old->context, &Scheduler::Running->context); //proveri da nije neka greska
}

void TCB::threadWrapper() // na ovom mestu bi u nekim slucajevima trebalo promena korisnickog moda ako za to ima potrebe
{
    if (Scheduler::Running->isPrivileged)
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    Riscv::popSppSpie();
    Scheduler::Running->body(Scheduler::Running->args); //proveri ovo, promenio si Body tako da ima void* arg
    Scheduler::Running->setFinished(true); //ovo trenutno stoji posle ga izbaci
    Scheduler::Running->setState(FINISHED);
    TCB::yield();
}



