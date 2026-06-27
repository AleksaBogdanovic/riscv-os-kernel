#include "../h/ConsoleController.hpp"
#include "../h/TCB.hpp"

BoundedBuffer* ConsoleController::txBuffer = nullptr;
BoundedBuffer* ConsoleController::rxBuffer = nullptr;

void ConsoleController::init()
{
    txBuffer = new BoundedBuffer();
    rxBuffer = new BoundedBuffer();
    createTxThread();
}

void ConsoleController::deinit()
{
    delete txBuffer;
    delete rxBuffer;
}

void ConsoleController::putc(char c)
{
    txBuffer->append(c);
}

char ConsoleController::getc()
{
    return rxBuffer->take();
}

void ConsoleController::consoleHandler()
{
    int irq = plic_claim();
    if (irq == 0x0a) //keyboard interrupt
    {
        volatile char status = *((char *) CONSOLE_STATUS);
        while (status & 1)
        {
            char c = *((char*) CONSOLE_RX_DATA);
            if (!rxBuffer->isFull()) rxBuffer->append(c);
            status = *((char*) CONSOLE_STATUS);
        }
    }
    plic_complete(irq);

}
void ConsoleController::createTxThread()
{
    uint64* stack = new uint64[DEFAULT_STACK_SIZE];
    TCB::createThread(txThreadBody, nullptr, stack);
}
void ConsoleController::txThreadBody(void* arg)
{
    while (true) {
        char c = txBuffer->take(); // blokira dok ima znakova
        while (!(*((char*)CONSOLE_STATUS) & (1 << 5))); // čekaj TXRDY
        *((char*)CONSOLE_TX_DATA) = c;
    }
}
