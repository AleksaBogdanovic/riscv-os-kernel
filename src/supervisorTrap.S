/*
.extern riscvHandleSupervisorTrap
.align 4
.global riscvSupervisorTrap
.type riscvSupervisorTrap, @function

riscvSupervisorTrap:

addi sp, sp, -8
sd ra, 0(sp)


call riscvHandleSupervisorTrap

ld ra, 0(sp)
addi sp, sp, 8
li a3, 9
sret
*/

.extern riscvHandleSupervisorTrap
.align 4
.global riscvSupervisorTrap
.type riscvSupervisorTrap, @function
# JAKO BITNO , a0(x10) se iz nekog razloga unutar riscvHandleSupervisorTrap nalazi na ofsetu 12, a ne 10
riscvSupervisorTrap:
    addi sp, sp, -256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr

    call riscvHandleSupervisorTrap

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    addi sp, sp, 256

    sret