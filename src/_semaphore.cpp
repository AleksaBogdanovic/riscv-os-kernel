#include "../h/_semaphore.hpp"

int _semaphore::wait()
{
    if(closed) return -1;
    if (--val < 0)
    {
        Scheduler::Running->waitForResources = 1;
        block();
        if (closed) return -1;
    }
    return 0;
}


int _semaphore::signal()
{
    if(closed) return -1;
    if (++val <= 0) unblock();
    return 0;
}

int _semaphore::wait_n(int n)
{
    if (closed) return -1;

    if (val < n)
    {
        Scheduler::Running->waitForResources = n;
        block();
        if (closed) return -1;
    }

    val -= n;
    return 0;
}

int _semaphore::signal_n(int n)
{
    if (closed) return -1;

    val += n;
    if (val > 0)
    {
        TCB* cur = blocked_head;
        while (cur && val > 0)
        {
            TCB* next = cur->next;

            if (val >= cur->waitForResources)
            {
                val -= cur->waitForResources;
                cur->waitForResources = 0;

                if(cur->prev) cur->prev->next = cur->next;
                else blocked_head = cur->next;

                if(cur->next) cur->next->prev = cur->prev;
                else blocked_tail = cur->prev;

                cur->setState(TCB::READY);
                Scheduler::put(cur);
            }
            cur = next;
        }
    }
    return 0;
}

int _semaphore::close()
{
    if (closed) return -1;
    closed = true;

    TCB* cur = blocked_head;
    while (cur)
    {
        TCB* next = cur->next;
        cur->setState(TCB::READY);
        cur->next = nullptr;
        cur->prev = nullptr;
        Scheduler::put(cur);

        cur = next;
    }
    blocked_head = nullptr;
    blocked_tail = nullptr;

    return 0;
}

void _semaphore::block()
{
    TCB* running = Scheduler::Running;
    running->setState(TCB::BLOCKED);

    this->put();
    TCB::yield();
}

void _semaphore::unblock()
{
    TCB* tcb = this->get();
    if(tcb)
    {
        tcb->setState(TCB::READY);
        Scheduler::put(tcb);
    }
}


TCB* _semaphore::get()
{
    if (!blocked_head) return nullptr; // ne bi trebalo da se desi nikada
    TCB* tcb = blocked_head;
    blocked_head = blocked_head->next;
    if (!blocked_head) blocked_tail = nullptr;
    tcb->next = nullptr;
    tcb->prev = nullptr;
    return tcb;
}

void _semaphore::put()
{
    TCB* toBlock = Scheduler::Running;
    toBlock->next = nullptr;
    toBlock->prev = nullptr;

    if (blocked_tail)
    {
        toBlock->prev = blocked_tail;
        blocked_tail->next = toBlock;
        blocked_tail = toBlock;
    }
    else
    {
        blocked_head = toBlock;
        blocked_tail = toBlock;
        toBlock->prev = nullptr;
    }
    toBlock->next = nullptr;
}

