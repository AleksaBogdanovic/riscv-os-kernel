#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/ConsoleController.hpp"

void print_string(char const *string)
{
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    {

        ConsoleController::putc(*string);
        string++;
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}



void print_integer(uint64 integer)
{
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    static char digits[] = "0123456789";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (integer < 0)
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    }

    i = 0;
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { ConsoleController::putc(buf[i]); }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);

}


void interruptPrintStr(char const *string) {
    while (*string != '\0') {
        while (!(*((char*)CONSOLE_STATUS) & (1 << 5))); // čekaj TXRDY
        *((char*)CONSOLE_TX_DATA) = *string;
        string++;
    }
}

void interruptPrintInt(uint64 integer)
{
    static char digits[] = "0123456789";
    char buf[16];
    int i;
    uint x = integer;

    i = 0;
    do {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);

    while (--i >= 0) {
        while (!(*((char*)CONSOLE_STATUS) & (1 << 5))); // čekaj TXRDY
        *((char*)CONSOLE_TX_DATA) = buf[i];
    }
}
