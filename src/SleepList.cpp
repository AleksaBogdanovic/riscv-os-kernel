#include "../h/SleepList.hpp"

TCB* SleepList::sleeping_head = nullptr;

int SleepList::sleep(TCB* tcb, time_t time)
{
    insert(tcb, time);
    TCB::dispatch();
    return 0;
}


void SleepList::insert(TCB* tcb, time_t time)
{
    if (!tcb) return;
    tcb->setState(TCB::SLEEPING); //tcb ce sigurno biti ubacen u sleepList

    TCB* cur = sleeping_head;
    if (!cur)
    {
        sleeping_head = tcb;
        tcb->sleepTime = time;
        return;
    }
    TCB* prev = nullptr;
    while (cur && time > cur->sleepTime)
    {
        time -= cur->sleepTime;
        prev = cur;
        cur = cur->next;
    }

    if (!prev) sleeping_head = tcb;
    else prev->next = tcb;

    tcb->next = cur;
    tcb->sleepTime = time;
    if (cur != nullptr)  cur->sleepTime -= time;
}

void SleepList::tick()
{
    if (!sleeping_head) return;

    sleeping_head->sleepTime--;


    if (sleeping_head->sleepTime > 0) return;


    while (sleeping_head && sleeping_head->sleepTime == 0)
    {
        wake();
    }
}


void SleepList::wake()
{
    if (!sleeping_head) return;

    TCB* toWake = sleeping_head;
    sleeping_head = sleeping_head->next;
    toWake->next = nullptr;
    toWake->setState(TCB::READY);
    toWake->sleepTime = 0;
    Scheduler::put(toWake);
}
