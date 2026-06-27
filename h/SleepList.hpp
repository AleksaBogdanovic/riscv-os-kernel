#ifndef PROJECT_BASE_SLEEPLIST_HPP
#define PROJECT_BASE_SLEEPLIST_HPP

#include "TCB.hpp"

class SleepList
//using TCB::next and TCB::relativeSleepingTime
{
public:
    static int sleep(TCB* tcb, time_t time);
    static void insert(TCB* tcb, time_t time);
    static void tick();

private:
    static TCB* sleeping_head;

    static void wake(); //budi trenutni sleeping_head, i azurira pokazivac
};

#endif //PROJECT_BASE_SLEEPLIST_HPP
