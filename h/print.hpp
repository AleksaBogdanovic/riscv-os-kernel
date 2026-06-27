#ifndef PROJECT_BASE_PRINT_HPP
#define PROJECT_BASE_PRINT_HPP

#include "../lib/hw.h"

extern void interruptPrintStr(const char *string); //ovo je print koji se za direktan pristup konroleru, samo unutar prekida

extern void interruptPrintInt(uint64 integer); //ovo je print koji se za direktan pristup konroleru, samo unutar prekida

extern void print_string(char const *string);

extern void print_integer(uint64 integer);

#endif //PROJECT_BASE_PRINT_HPP
