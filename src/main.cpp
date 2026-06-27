#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/TCB.hpp"
#include "../h/print.hpp"
#include "../h/ConsoleController.hpp"

extern void userMain();

void user_wrapper(void *arg)
{
    putc('S');
    putc('\n');
    userMain();
    putc('E');
    putc('\n');
}

int main(){


    //-----------------INIT BLOCK----------------------------------------------------------------------------
    MemoryAllocator::memInit();
    Riscv::w_stvec((uint64) &riscvSupervisorTrap);
    ConsoleController::init();
    //-------------------------------------------------------------------------------------------------------

    TCB::createMainThread();

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    TCB* UMain;
    thread_create(&UMain,user_wrapper, nullptr);
    while(!UMain->isFinished()){
        thread_dispatch();
    }


    TCB::yield(); //cisto da thread za ispis odradi svoje

    ConsoleController::deinit();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    //Riscv::HALT();
    return 0;
}
