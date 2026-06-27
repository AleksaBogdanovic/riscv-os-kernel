#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"


void *operator new(size_t size)
{
    return mem_alloc(size);
}

void *operator new[](size_t size)
{
    return mem_alloc(size);
}

void operator delete(void *p)
{
    mem_free(p);
}

void operator delete[](void *p)
{
    mem_free(p);
}

Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr),body(body),arg(arg) {}
Thread::Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}

Thread::~Thread() {}

int Thread::start() {
    if(body){
        return thread_create(&myHandle,body,arg);
    }
    return thread_create(&myHandle, wrapper, this);
}


void Thread::dispatch()
{
    thread_dispatch();
}

int Thread::sleep(time_t t)
{
    return time_sleep(t);
}

void Thread::wrapper(void *arg)
{
    if(arg)
    {
        ((Thread*)arg)->run();
    }
}


Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

void PeriodicThread::terminate() {
    period = 0;
}

PeriodicThread::PeriodicThread(time_t period) : period(period){}


void PeriodicThread::run() {
    while(period != 0){
        periodicActivation();
        time_sleep(period);
    }
    thread_exit();
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
