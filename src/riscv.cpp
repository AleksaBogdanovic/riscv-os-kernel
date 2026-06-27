#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/syscall_codes.hpp"
#include "../h/TCB.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/print.hpp"
#include "../h/SleepList.hpp"
#include "../h/_semaphore.hpp"
#include "../h/ConsoleController.hpp"
#include "../h/syscall_c.hpp"

extern "C" void riscvHandleSupervisorTrap(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4)
{
    Riscv::handleSupervisorTrap(a0, a1, a2, a3, a4);
}

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}


// void Riscv::handleSupervisorTrap(uint64 a0, uint64 a1)//TRENUTNO SAMO SOFTVERSKI PREKID USLED ecall
// {
//     uint64 sepc = Riscv::r_sepc() + 4; //ecall writes its own adress to sepc, skip to next instruction
//     w_sepc(sepc);
//     __putc('I');
//
//     //!VAZNO!
//     //oslanjam se na to da ce svaki poziv funkcije upisati u a0 povratnu vrednost koja nece biti cuvana nigde
//     //prilikom cuvanja registra za sistemski poziv ne treba cuvati a0, da se vrednost ne bi unustila prilikom restora
//     //mislim da ako odvojim deo za prekide i exception u posebnu funkciju da cu moci da zadrzim ovaj princip
//     switch (a0) //a0 - syscall code
//     {
//     case MEM_ALLOC:
//             MemoryAllocator::mem_alloc(a1);
//             break;
//         case MEM_FREE:
//             MemoryAllocator::mem_free((void*)a1);
//         break;
//     }
//
//
//
// }

void Riscv::handleSupervisorTrap(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4)
//should be called only from superVisorTrap.s
{
    uint64 volatile scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        //interrupt 0, caouse code: environment call from S-mode(9) or U-mode(8)
        /*uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
        ovo je kada bi radio ecall samo za yield
        */
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus(); //mislim da ove dve naredbe trebaju samo za dispacth, ali ne skodi nista
        uint64 ret = 0x0;
        switch (a0) //a0 - syscall code
        {
         case MEM_ALLOC:
            ret =(uint64) MemoryAllocator::mem_alloc(a1);
            __asm__ volatile("sd %0, 12 * 8(s0) ": : "r"(ret));
            break;
         case MEM_FREE:
             MemoryAllocator::mem_free((void*)a1);
            __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
             break;
        case THREAD_CREATE:
            {
                TCB** handle = (TCB**) a1;
                *handle = TCB::createUserThread((TCB::Body) a2, (void*) a3, (uint64*) a4);
                if(*handle != nullptr)
                    asm volatile("sd %0, 12 * 8(s0) ": : "r"(0));
                else
                    asm volatile("sd %0, 12 * 8(s0) ": : "r"(-17));
                break;
            }
        case THREAD_EXIT:
            Scheduler::Running->setFinished(true);
            Scheduler::Running->setState(TCB::FINISHED);
            TCB::dispatch();
            __asm__ volatile("sd %0, 12 * 8(s0) ": : "r"(ret));
        case THREAD_DISPATCH:
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            break;
        case SEM_OPEN:
            {
                _semaphore** handle = (_semaphore**) a1;
                *handle = new _semaphore((int)a2);
                if(*handle != nullptr)
                    asm volatile("sd %0, 12 * 8(s0) ": : "r"(0));
                else
                    asm volatile("sd %0, 12 * 8(s0) ": : "r"(-33));
                break;
            }
        case SEM_CLOSE:
            {
                _semaphore* handle = (_semaphore*) a1;
                handle->close();
               __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
                break;
            }
        case SEM_WAIT:
            {
                _semaphore* handle = (_semaphore*) a1;
                handle->wait();
                __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
                break;
            }
        case SEM_SIGNAL:
            {
                _semaphore* handle = (_semaphore*) a1;
                handle->signal();
                __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
                break;
            }
        case SEM_WAIT_N:
            {
                _semaphore* handle = (_semaphore*) a1;
                handle->wait_n((int) a2);
                __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
                break;
            }
        case SEM_SIGNAL_N:
            {
                _semaphore* handle = (_semaphore*) a1;
                handle->signal_n((int) a2);
                __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
                break;
            }
        case TIME_SLEEP:
            SleepList::sleep(Scheduler::Running, (time_t) a1);
            __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
            break;
        case GETC:
            {
                ConsoleController::getc();
                __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
                break;
            }
        case PUTC:

            ConsoleController::putc((char) a1);
            break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    {
        //interrupt 1, case code: supervisor software interrupt(timer)
        mc_sip(SIP_SSIP);

        TCB::timeSliceCounter++;
        SleepList::tick();

        if (TCB::timeSliceCounter >= Scheduler::Running->getTimeSlice())
        {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: 1, cause code: supervisor external interrupt (PLIC, keyboard)
        //printString("Usao u prekid tast\n");
        ConsoleController::consoleHandler();

    }
    else
    {
        //unexpected cause(exception)
        interruptPrintStr("scause: ");
        interruptPrintInt(r_scause());
        interruptPrintStr("  sepc:");
        interruptPrintInt(r_sepc());
        interruptPrintStr("     stval: ");
        interruptPrintInt(r_stval());
        interruptPrintStr("     sstatus: ");
        interruptPrintInt(r_sstatus());


        while(1);
    }
}


