#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer()
{
    spaceAvailable = new _semaphore(BUFFER_SIZE);
    itemAvailiable = new _semaphore(0);
}

BoundedBuffer::~BoundedBuffer()
{
    if (spaceAvailable) delete spaceAvailable;
    if (itemAvailiable) delete itemAvailiable;
}

void BoundedBuffer::append(char c)
{
    spaceAvailable->wait();
    data[tail] = c;
    tail = (tail + 1) % BUFFER_SIZE;
    this->sz++;
    itemAvailiable->signal();
}

char BoundedBuffer::take()
{
    itemAvailiable->wait();
    char c = data[head];
    head = (head + 1) % BUFFER_SIZE;
    this->sz--;
    spaceAvailable->signal();
    return c;
}
