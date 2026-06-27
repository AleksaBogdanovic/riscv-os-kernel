#include "../h/scheduler.hpp"

TCB* Scheduler::Running = nullptr;
TCB* Scheduler::queue_head = nullptr;
TCB* Scheduler::queue_tail = nullptr;

TCB* Scheduler::get()
{
    if (!queue_head) return TCB::createIdleThread();
    TCB* tcb = queue_head;
    queue_head = queue_head->next;
    tcb->next = nullptr;
    return tcb;
}

void Scheduler::put(TCB* tcb)
{
    if (!queue_head)
    {
        queue_head = tcb;
        queue_tail = tcb;
    }
    else
    {
        queue_tail->next = tcb;
        queue_tail = queue_tail->next;
    }
}

