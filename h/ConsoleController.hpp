#ifndef PROJECT_BASE_CONSOLE_HPP
#define PROJECT_BASE_CONSOLE_HPP
#include "BoundedBuffer.hpp"

class ConsoleController
{
public:
    static void init();
    static void deinit();

    static void consoleHandler();

    static void putc(char c);
    static char getc();

private:
    static void txThreadBody(void* arg);
    static void createTxThread();


    static BoundedBuffer* txBuffer; //output buffer
    static BoundedBuffer* rxBuffer; //input buffer
};

#endif //PROJECT_BASE_CONSOLE_HPP
