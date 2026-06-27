#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "../h/TCB.hpp"

class TCB;

class Scheduler
{
public:
    static TCB* get();

    static void put(TCB* tcb);

    static TCB* Running; //current running thread

private:

    static TCB* queue_head;

    static TCB* queue_tail;

};

#endif //PROJECT_BASE_SCHEDULER_HPP
