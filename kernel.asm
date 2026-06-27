
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ab813103          	ld	sp,-1352(sp) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	195060ef          	jal	ra,800069b0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <riscvSupervisorTrap>:
.align 4
.global riscvSupervisorTrap
.type riscvSupervisorTrap, @function
# JAKO BITNO , a0(x10) se iz nekog razloga unutar riscvHandleSupervisorTrap nalazi na ofsetu 12, a ne 10
riscvSupervisorTrap:
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call riscvHandleSupervisorTrap
    80001184:	7c4010ef          	jal	ra,80002948 <riscvHandleSupervisorTrap>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256

    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:

#a0 &oldContext
#a1 &runningConetext
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
    return ret;
}

//asm volatile("csrr %0, sstatus" : "=r" (x));
void* mem_alloc(size_t size)
{
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    static size_t bytesToBlocks(size_t bytes);
};

inline size_t MemoryAllocator::bytesToBlocks(size_t bytes) //to given requested size it adds sizeof(FreeMem) for header
{
    bytes += sizeof(FreeMem);
    80001250:	01850513          	addi	a0,a0,24
    return (bytes % MEM_BLOCK_SIZE != 0) ? bytes / MEM_BLOCK_SIZE + 1: bytes / MEM_BLOCK_SIZE;
    80001254:	03f57793          	andi	a5,a0,63
    80001258:	02078663          	beqz	a5,80001284 <_Z9mem_allocm+0x40>
    8000125c:	00655513          	srli	a0,a0,0x6
    80001260:	00150513          	addi	a0,a0,1
    size_t blocks = MemoryAllocator::bytesToBlocks(size);
    __asm__ volatile ("mv a1, %0" : : "r"(blocks));
    80001264:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (MEM_ALLOC));
    80001268:	00100793          	li	a5,1
    8000126c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001270:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001274:	00050513          	mv	a0,a0
    return (void*)returnValue();
}
    80001278:	00813403          	ld	s0,8(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret
    80001284:	00655513          	srli	a0,a0,0x6
    80001288:	fddff06f          	j	80001264 <_Z9mem_allocm+0x20>

000000008000128c <_Z8mem_freePv>:

int mem_free (void* ptr)
{
    8000128c:	ff010113          	addi	sp,sp,-16
    80001290:	00813423          	sd	s0,8(sp)
    80001294:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r"(ptr));
    80001298:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (MEM_FREE));
    8000129c:	00200793          	li	a5,2
    800012a0:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800012a4:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    800012a8:	00050513          	mv	a0,a0

    return (int)returnValue();
}
    800012ac:	0005051b          	sext.w	a0,a0
    800012b0:	00813403          	ld	s0,8(sp)
    800012b4:	01010113          	addi	sp,sp,16
    800012b8:	00008067          	ret

00000000800012bc <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg)
{
    if (!handle) return -3;
    800012bc:	08050263          	beqz	a0,80001340 <_Z13thread_createPP3TCBPFvPvES2_+0x84>
{
    800012c0:	fd010113          	addi	sp,sp,-48
    800012c4:	02113423          	sd	ra,40(sp)
    800012c8:	02813023          	sd	s0,32(sp)
    800012cc:	00913c23          	sd	s1,24(sp)
    800012d0:	01213823          	sd	s2,16(sp)
    800012d4:	01313423          	sd	s3,8(sp)
    800012d8:	03010413          	addi	s0,sp,48
    800012dc:	00050493          	mv	s1,a0
    800012e0:	00058913          	mv	s2,a1
    800012e4:	00060993          	mv	s3,a2
    uint64* stack = nullptr;
    if (start_routine) stack = new uint64[DEFAULT_STACK_SIZE];
    800012e8:	04058863          	beqz	a1,80001338 <_Z13thread_createPP3TCBPFvPvES2_+0x7c>
    800012ec:	00008537          	lui	a0,0x8
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	d18080e7          	jalr	-744(ra) # 80002008 <_Znam>

    __asm__ volatile ("mv a4, %0" : : "r"(stack));
    800012f8:	00050713          	mv	a4,a0
    __asm__ volatile ("mv a3, %0" : : "r"(arg));
    800012fc:	00098693          	mv	a3,s3
    __asm__ volatile ("mv a2, %0" : : "r"(start_routine));
    80001300:	00090613          	mv	a2,s2
    __asm__ volatile ("mv a1, %0" : : "r"(handle));
    80001304:	00048593          	mv	a1,s1
    __asm__ volatile ("mv a0, %0" : : "r" (THREAD_CREATE));
    80001308:	01100793          	li	a5,17
    8000130c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001310:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001314:	00050513          	mv	a0,a0

    return (int)returnValue();
    80001318:	0005051b          	sext.w	a0,a0
}
    8000131c:	02813083          	ld	ra,40(sp)
    80001320:	02013403          	ld	s0,32(sp)
    80001324:	01813483          	ld	s1,24(sp)
    80001328:	01013903          	ld	s2,16(sp)
    8000132c:	00813983          	ld	s3,8(sp)
    80001330:	03010113          	addi	sp,sp,48
    80001334:	00008067          	ret
    uint64* stack = nullptr;
    80001338:	00000513          	li	a0,0
    8000133c:	fbdff06f          	j	800012f8 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>
    if (!handle) return -3;
    80001340:	ffd00513          	li	a0,-3
}
    80001344:	00008067          	ret

0000000080001348 <_Z11thread_exitv>:

int thread_exit()
{
    80001348:	ff010113          	addi	sp,sp,-16
    8000134c:	00813423          	sd	s0,8(sp)
    80001350:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(THREAD_EXIT));
    80001354:	01200793          	li	a5,18
    80001358:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000135c:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001360:	00050513          	mv	a0,a0

    return (int)returnValue();
}
    80001364:	0005051b          	sext.w	a0,a0
    80001368:	00813403          	ld	s0,8(sp)
    8000136c:	01010113          	addi	sp,sp,16
    80001370:	00008067          	ret

0000000080001374 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80001374:	ff010113          	addi	sp,sp,-16
    80001378:	00813423          	sd	s0,8(sp)
    8000137c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(THREAD_DISPATCH));
    80001380:	01300793          	li	a5,19
    80001384:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001388:	00000073          	ecall
}
    8000138c:	00813403          	ld	s0,8(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_Z8sem_openPP10_semaphorej>:

int sem_open (sem_t* handle, unsigned init)
{
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00813423          	sd	s0,8(sp)
    800013a0:	01010413          	addi	s0,sp,16
    if (!handle) return -3;
    800013a4:	02050663          	beqz	a0,800013d0 <_Z8sem_openPP10_semaphorej+0x38>
    __asm__ volatile ("mv a2, %0" : : "r"(init));
    800013a8:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r"(handle));
    800013ac:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_OPEN));
    800013b0:	02100793          	li	a5,33
    800013b4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013b8:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    800013bc:	00050513          	mv	a0,a0

    return (int)returnValue();
    800013c0:	0005051b          	sext.w	a0,a0
}
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret
    if (!handle) return -3;
    800013d0:	ffd00513          	li	a0,-3
    800013d4:	ff1ff06f          	j	800013c4 <_Z8sem_openPP10_semaphorej+0x2c>

00000000800013d8 <_Z9sem_closeP10_semaphore>:

int sem_close (sem_t handle)
{
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00813423          	sd	s0,8(sp)
    800013e0:	01010413          	addi	s0,sp,16
    if (!handle) return -3;
    800013e4:	02050463          	beqz	a0,8000140c <_Z9sem_closeP10_semaphore+0x34>
    __asm__ volatile ("mv a1, %0" : : "r"(handle));
    800013e8:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_CLOSE));
    800013ec:	02200793          	li	a5,34
    800013f0:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013f4:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    800013f8:	00050513          	mv	a0,a0

    return (int)returnValue();
    800013fc:	0005051b          	sext.w	a0,a0
}
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret
    if (!handle) return -3;
    8000140c:	ffd00513          	li	a0,-3
    80001410:	ff1ff06f          	j	80001400 <_Z9sem_closeP10_semaphore+0x28>

0000000080001414 <_Z8sem_waitP10_semaphore>:

int sem_wait (sem_t id)
{
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00813423          	sd	s0,8(sp)
    8000141c:	01010413          	addi	s0,sp,16
    if (!id) return -3;
    80001420:	02050463          	beqz	a0,80001448 <_Z8sem_waitP10_semaphore+0x34>
    __asm__ volatile ("mv a1, %0" : : "r"(id));
    80001424:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_WAIT));
    80001428:	02300793          	li	a5,35
    8000142c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001430:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001434:	00050513          	mv	a0,a0

    return (int)returnValue();
    80001438:	0005051b          	sext.w	a0,a0
}
    8000143c:	00813403          	ld	s0,8(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret
    if (!id) return -3;
    80001448:	ffd00513          	li	a0,-3
    8000144c:	ff1ff06f          	j	8000143c <_Z8sem_waitP10_semaphore+0x28>

0000000080001450 <_Z10sem_signalP10_semaphore>:

int sem_signal (sem_t id)
{
    80001450:	ff010113          	addi	sp,sp,-16
    80001454:	00813423          	sd	s0,8(sp)
    80001458:	01010413          	addi	s0,sp,16
    if (!id) return -3;
    8000145c:	02050463          	beqz	a0,80001484 <_Z10sem_signalP10_semaphore+0x34>
    __asm__ volatile ("mv a1, %0" : : "r"(id));
    80001460:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_SIGNAL));
    80001464:	02400793          	li	a5,36
    80001468:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000146c:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001470:	00050513          	mv	a0,a0

    return (int)returnValue();
    80001474:	0005051b          	sext.w	a0,a0
}
    80001478:	00813403          	ld	s0,8(sp)
    8000147c:	01010113          	addi	sp,sp,16
    80001480:	00008067          	ret
    if (!id) return -3;
    80001484:	ffd00513          	li	a0,-3
    80001488:	ff1ff06f          	j	80001478 <_Z10sem_signalP10_semaphore+0x28>

000000008000148c <_Z10sem_wait_nP10_semaphorej>:

int sem_wait_n(sem_t id, unsigned n)
{
    8000148c:	ff010113          	addi	sp,sp,-16
    80001490:	00813423          	sd	s0,8(sp)
    80001494:	01010413          	addi	s0,sp,16
    if (!id) return -3;
    80001498:	02050663          	beqz	a0,800014c4 <_Z10sem_wait_nP10_semaphorej+0x38>
    __asm__ volatile ("mv a2, %0" : : "r"(n));
    8000149c:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r"(id));
    800014a0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_WAIT_N));
    800014a4:	02500793          	li	a5,37
    800014a8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800014ac:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    800014b0:	00050513          	mv	a0,a0

    return (int)returnValue();
    800014b4:	0005051b          	sext.w	a0,a0
}
    800014b8:	00813403          	ld	s0,8(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret
    if (!id) return -3;
    800014c4:	ffd00513          	li	a0,-3
    800014c8:	ff1ff06f          	j	800014b8 <_Z10sem_wait_nP10_semaphorej+0x2c>

00000000800014cc <_Z12sem_signal_nP10_semaphorej>:

int sem_signal_n(sem_t id, unsigned n)
{
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00813423          	sd	s0,8(sp)
    800014d4:	01010413          	addi	s0,sp,16
    if (!id) return -3;
    800014d8:	02050663          	beqz	a0,80001504 <_Z12sem_signal_nP10_semaphorej+0x38>
    __asm__ volatile ("mv a2, %0" : : "r"(n));
    800014dc:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r"(id));
    800014e0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (SEM_SIGNAL_N));
    800014e4:	02600793          	li	a5,38
    800014e8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800014ec:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    800014f0:	00050513          	mv	a0,a0

    return (int)returnValue();
    800014f4:	0005051b          	sext.w	a0,a0
}
    800014f8:	00813403          	ld	s0,8(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret
    if (!id) return -3;
    80001504:	ffd00513          	li	a0,-3
    80001508:	ff1ff06f          	j	800014f8 <_Z12sem_signal_nP10_semaphorej+0x2c>

000000008000150c <_Z10time_sleepm>:

int time_sleep(time_t time)
{
    8000150c:	ff010113          	addi	sp,sp,-16
    80001510:	00813423          	sd	s0,8(sp)
    80001514:	01010413          	addi	s0,sp,16
    if (time <= 0) return -3;
    80001518:	02050463          	beqz	a0,80001540 <_Z10time_sleepm+0x34>
    __asm__ volatile ("mv a1, %0" : : "r"(time));
    8000151c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (TIME_SLEEP));
    80001520:	03100793          	li	a5,49
    80001524:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001528:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    8000152c:	00050513          	mv	a0,a0

    return (int)returnValue();
    80001530:	0005051b          	sext.w	a0,a0
}
    80001534:	00813403          	ld	s0,8(sp)
    80001538:	01010113          	addi	sp,sp,16
    8000153c:	00008067          	ret
    if (time <= 0) return -3;
    80001540:	ffd00513          	li	a0,-3
    80001544:	ff1ff06f          	j	80001534 <_Z10time_sleepm+0x28>

0000000080001548 <_Z4getcv>:

char getc()
{
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00813423          	sd	s0,8(sp)
    80001550:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r" (GETC));
    80001554:	04100793          	li	a5,65
    80001558:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000155c:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001560:	00050513          	mv	a0,a0

    return (char)returnValue();
}
    80001564:	0ff57513          	andi	a0,a0,255
    80001568:	00813403          	ld	s0,8(sp)
    8000156c:	01010113          	addi	sp,sp,16
    80001570:	00008067          	ret

0000000080001574 <_Z4putcc>:

void putc (char c)
{
    80001574:	ff010113          	addi	sp,sp,-16
    80001578:	00813423          	sd	s0,8(sp)
    8000157c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r"(c));
    80001580:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r" (PUTC));
    80001584:	04200793          	li	a5,66
    80001588:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000158c:	00000073          	ecall
}
    80001590:	00813403          	ld	s0,8(sp)
    80001594:	01010113          	addi	sp,sp,16
    80001598:	00008067          	ret

000000008000159c <_ZN10_semaphore8signal_nEi>:
    return 0;
}

int _semaphore::signal_n(int n)
{
    if (closed) return -1;
    8000159c:	00454783          	lbu	a5,4(a0) # 8004 <_entry-0x7fff7ffc>
    800015a0:	0ff7f793          	andi	a5,a5,255
    800015a4:	0a079e63          	bnez	a5,80001660 <_ZN10_semaphore8signal_nEi+0xc4>
{
    800015a8:	fe010113          	addi	sp,sp,-32
    800015ac:	00113c23          	sd	ra,24(sp)
    800015b0:	00813823          	sd	s0,16(sp)
    800015b4:	00913423          	sd	s1,8(sp)
    800015b8:	01213023          	sd	s2,0(sp)
    800015bc:	02010413          	addi	s0,sp,32
    800015c0:	00050493          	mv	s1,a0

    val += n;
    800015c4:	00052783          	lw	a5,0(a0)
    800015c8:	00b785bb          	addw	a1,a5,a1
    800015cc:	00b52023          	sw	a1,0(a0)
    if (val > 0)
    800015d0:	00052783          	lw	a5,0(a0)
    800015d4:	0007879b          	sext.w	a5,a5
    800015d8:	08f05863          	blez	a5,80001668 <_ZN10_semaphore8signal_nEi+0xcc>
    {
        TCB* cur = blocked_head;
    800015dc:	00853503          	ld	a0,8(a0)
    800015e0:	0280006f          	j	80001608 <_ZN10_semaphore8signal_nEi+0x6c>
            {
                val -= cur->waitForResources;
                cur->waitForResources = 0;

                if(cur->prev) cur->prev->next = cur->next;
                else blocked_head = cur->next;
    800015e4:	03853783          	ld	a5,56(a0)
    800015e8:	00f4b423          	sd	a5,8(s1)
    800015ec:	0600006f          	j	8000164c <_ZN10_semaphore8signal_nEi+0xb0>

                if(cur->next) cur->next->prev = cur->prev;
                else blocked_tail = cur->prev;
    800015f0:	04053783          	ld	a5,64(a0)
    800015f4:	00f4b823          	sd	a5,16(s1)
        SLEEPING,
        IDLE
    };

    State getState() const { return state; }
    void setState(State s) { state = s; }
    800015f8:	04052a23          	sw	zero,84(a0)

                cur->setState(TCB::READY);
                Scheduler::put(cur);
    800015fc:	00001097          	auipc	ra,0x1
    80001600:	7a8080e7          	jalr	1960(ra) # 80002da4 <_ZN9Scheduler3putEP3TCB>
{
    80001604:	00090513          	mv	a0,s2
        while (cur && val > 0)
    80001608:	06050e63          	beqz	a0,80001684 <_ZN10_semaphore8signal_nEi+0xe8>
    8000160c:	0004a783          	lw	a5,0(s1)
    80001610:	0007879b          	sext.w	a5,a5
    80001614:	06f05c63          	blez	a5,8000168c <_ZN10_semaphore8signal_nEi+0xf0>
            TCB* next = cur->next;
    80001618:	03853903          	ld	s2,56(a0)
            if (val >= cur->waitForResources)
    8000161c:	0004a783          	lw	a5,0(s1)
    80001620:	0007879b          	sext.w	a5,a5
    80001624:	05052703          	lw	a4,80(a0)
    80001628:	fce7cee3          	blt	a5,a4,80001604 <_ZN10_semaphore8signal_nEi+0x68>
                val -= cur->waitForResources;
    8000162c:	0004a783          	lw	a5,0(s1)
    80001630:	40e7873b          	subw	a4,a5,a4
    80001634:	00e4a023          	sw	a4,0(s1)
                cur->waitForResources = 0;
    80001638:	04052823          	sw	zero,80(a0)
                if(cur->prev) cur->prev->next = cur->next;
    8000163c:	04053783          	ld	a5,64(a0)
    80001640:	fa0782e3          	beqz	a5,800015e4 <_ZN10_semaphore8signal_nEi+0x48>
    80001644:	03853703          	ld	a4,56(a0)
    80001648:	02e7bc23          	sd	a4,56(a5)
                if(cur->next) cur->next->prev = cur->prev;
    8000164c:	03853783          	ld	a5,56(a0)
    80001650:	fa0780e3          	beqz	a5,800015f0 <_ZN10_semaphore8signal_nEi+0x54>
    80001654:	04053703          	ld	a4,64(a0)
    80001658:	04e7b023          	sd	a4,64(a5)
    8000165c:	f9dff06f          	j	800015f8 <_ZN10_semaphore8signal_nEi+0x5c>
    if (closed) return -1;
    80001660:	fff00513          	li	a0,-1
            }
            cur = next;
        }
    }
    return 0;
}
    80001664:	00008067          	ret
    return 0;
    80001668:	00000513          	li	a0,0
}
    8000166c:	01813083          	ld	ra,24(sp)
    80001670:	01013403          	ld	s0,16(sp)
    80001674:	00813483          	ld	s1,8(sp)
    80001678:	00013903          	ld	s2,0(sp)
    8000167c:	02010113          	addi	sp,sp,32
    80001680:	00008067          	ret
    return 0;
    80001684:	00000513          	li	a0,0
    80001688:	fe5ff06f          	j	8000166c <_ZN10_semaphore8signal_nEi+0xd0>
    8000168c:	00000513          	li	a0,0
    80001690:	fddff06f          	j	8000166c <_ZN10_semaphore8signal_nEi+0xd0>

0000000080001694 <_ZN10_semaphore5closeEv>:

int _semaphore::close()
{
    if (closed) return -1;
    80001694:	00454783          	lbu	a5,4(a0)
    80001698:	0ff7f793          	andi	a5,a5,255
    8000169c:	06079a63          	bnez	a5,80001710 <_ZN10_semaphore5closeEv+0x7c>
{
    800016a0:	fe010113          	addi	sp,sp,-32
    800016a4:	00113c23          	sd	ra,24(sp)
    800016a8:	00813823          	sd	s0,16(sp)
    800016ac:	00913423          	sd	s1,8(sp)
    800016b0:	01213023          	sd	s2,0(sp)
    800016b4:	02010413          	addi	s0,sp,32
    800016b8:	00050913          	mv	s2,a0
    closed = true;
    800016bc:	00100793          	li	a5,1
    800016c0:	00f50223          	sb	a5,4(a0)

    TCB* cur = blocked_head;
    800016c4:	00853503          	ld	a0,8(a0)
    800016c8:	0200006f          	j	800016e8 <_ZN10_semaphore5closeEv+0x54>
    while (cur)
    {
        TCB* next = cur->next;
    800016cc:	03853483          	ld	s1,56(a0)
    800016d0:	04052a23          	sw	zero,84(a0)
        cur->setState(TCB::READY);
        cur->next = nullptr;
    800016d4:	02053c23          	sd	zero,56(a0)
        cur->prev = nullptr;
    800016d8:	04053023          	sd	zero,64(a0)
        Scheduler::put(cur);
    800016dc:	00001097          	auipc	ra,0x1
    800016e0:	6c8080e7          	jalr	1736(ra) # 80002da4 <_ZN9Scheduler3putEP3TCB>

        cur = next;
    800016e4:	00048513          	mv	a0,s1
    while (cur)
    800016e8:	fe0512e3          	bnez	a0,800016cc <_ZN10_semaphore5closeEv+0x38>
    }
    blocked_head = nullptr;
    800016ec:	00093423          	sd	zero,8(s2)
    blocked_tail = nullptr;
    800016f0:	00093823          	sd	zero,16(s2)

    return 0;
    800016f4:	00000513          	li	a0,0
}
    800016f8:	01813083          	ld	ra,24(sp)
    800016fc:	01013403          	ld	s0,16(sp)
    80001700:	00813483          	ld	s1,8(sp)
    80001704:	00013903          	ld	s2,0(sp)
    80001708:	02010113          	addi	sp,sp,32
    8000170c:	00008067          	ret
    if (closed) return -1;
    80001710:	fff00513          	li	a0,-1
}
    80001714:	00008067          	ret

0000000080001718 <_ZN10_semaphore3getEv>:
    }
}


TCB* _semaphore::get()
{
    80001718:	ff010113          	addi	sp,sp,-16
    8000171c:	00813423          	sd	s0,8(sp)
    80001720:	01010413          	addi	s0,sp,16
    80001724:	00050793          	mv	a5,a0
    if (!blocked_head) return nullptr; // ne bi trebalo da se desi nikada
    80001728:	00853503          	ld	a0,8(a0)
    8000172c:	02050263          	beqz	a0,80001750 <_ZN10_semaphore3getEv+0x38>
    TCB* tcb = blocked_head;
    80001730:	0087b503          	ld	a0,8(a5)
    blocked_head = blocked_head->next;
    80001734:	0087b703          	ld	a4,8(a5)
    80001738:	03873703          	ld	a4,56(a4)
    8000173c:	00e7b423          	sd	a4,8(a5)
    if (!blocked_head) blocked_tail = nullptr;
    80001740:	0087b703          	ld	a4,8(a5)
    80001744:	00070c63          	beqz	a4,8000175c <_ZN10_semaphore3getEv+0x44>
    tcb->next = nullptr;
    80001748:	02053c23          	sd	zero,56(a0)
    tcb->prev = nullptr;
    8000174c:	04053023          	sd	zero,64(a0)
    return tcb;
}
    80001750:	00813403          	ld	s0,8(sp)
    80001754:	01010113          	addi	sp,sp,16
    80001758:	00008067          	ret
    if (!blocked_head) blocked_tail = nullptr;
    8000175c:	0007b823          	sd	zero,16(a5)
    80001760:	fe9ff06f          	j	80001748 <_ZN10_semaphore3getEv+0x30>

0000000080001764 <_ZN10_semaphore7unblockEv>:
{
    80001764:	ff010113          	addi	sp,sp,-16
    80001768:	00113423          	sd	ra,8(sp)
    8000176c:	00813023          	sd	s0,0(sp)
    80001770:	01010413          	addi	s0,sp,16
    TCB* tcb = this->get();
    80001774:	00000097          	auipc	ra,0x0
    80001778:	fa4080e7          	jalr	-92(ra) # 80001718 <_ZN10_semaphore3getEv>
    if(tcb)
    8000177c:	00050863          	beqz	a0,8000178c <_ZN10_semaphore7unblockEv+0x28>
    80001780:	04052a23          	sw	zero,84(a0)
        Scheduler::put(tcb);
    80001784:	00001097          	auipc	ra,0x1
    80001788:	620080e7          	jalr	1568(ra) # 80002da4 <_ZN9Scheduler3putEP3TCB>
}
    8000178c:	00813083          	ld	ra,8(sp)
    80001790:	00013403          	ld	s0,0(sp)
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <_ZN10_semaphore6signalEv>:
    if(closed) return -1;
    8000179c:	00454783          	lbu	a5,4(a0)
    800017a0:	0ff7f793          	andi	a5,a5,255
    800017a4:	04079663          	bnez	a5,800017f0 <_ZN10_semaphore6signalEv+0x54>
    if (++val <= 0) unblock();
    800017a8:	00052783          	lw	a5,0(a0)
    800017ac:	0017879b          	addiw	a5,a5,1
    800017b0:	0007871b          	sext.w	a4,a5
    800017b4:	00f52023          	sw	a5,0(a0)
    800017b8:	00e05663          	blez	a4,800017c4 <_ZN10_semaphore6signalEv+0x28>
    return 0;
    800017bc:	00000513          	li	a0,0
}
    800017c0:	00008067          	ret
{
    800017c4:	ff010113          	addi	sp,sp,-16
    800017c8:	00113423          	sd	ra,8(sp)
    800017cc:	00813023          	sd	s0,0(sp)
    800017d0:	01010413          	addi	s0,sp,16
    if (++val <= 0) unblock();
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	f90080e7          	jalr	-112(ra) # 80001764 <_ZN10_semaphore7unblockEv>
    return 0;
    800017dc:	00000513          	li	a0,0
}
    800017e0:	00813083          	ld	ra,8(sp)
    800017e4:	00013403          	ld	s0,0(sp)
    800017e8:	01010113          	addi	sp,sp,16
    800017ec:	00008067          	ret
    if(closed) return -1;
    800017f0:	fff00513          	li	a0,-1
    800017f4:	00008067          	ret

00000000800017f8 <_ZN10_semaphore3putEv>:

void _semaphore::put()
{
    800017f8:	ff010113          	addi	sp,sp,-16
    800017fc:	00813423          	sd	s0,8(sp)
    80001800:	01010413          	addi	s0,sp,16
    TCB* toBlock = Scheduler::Running;
    80001804:	0000a797          	auipc	a5,0xa
    80001808:	2bc7b783          	ld	a5,700(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000180c:	0007b783          	ld	a5,0(a5)
    toBlock->next = nullptr;
    80001810:	0207bc23          	sd	zero,56(a5)
    toBlock->prev = nullptr;
    80001814:	0407b023          	sd	zero,64(a5)

    if (blocked_tail)
    80001818:	01053703          	ld	a4,16(a0)
    8000181c:	02070463          	beqz	a4,80001844 <_ZN10_semaphore3putEv+0x4c>
    {
        toBlock->prev = blocked_tail;
    80001820:	01053703          	ld	a4,16(a0)
    80001824:	04e7b023          	sd	a4,64(a5)
        blocked_tail->next = toBlock;
    80001828:	01053703          	ld	a4,16(a0)
    8000182c:	02f73c23          	sd	a5,56(a4)
        blocked_tail = toBlock;
    80001830:	00f53823          	sd	a5,16(a0)
    {
        blocked_head = toBlock;
        blocked_tail = toBlock;
        toBlock->prev = nullptr;
    }
    toBlock->next = nullptr;
    80001834:	0207bc23          	sd	zero,56(a5)
}
    80001838:	00813403          	ld	s0,8(sp)
    8000183c:	01010113          	addi	sp,sp,16
    80001840:	00008067          	ret
        blocked_head = toBlock;
    80001844:	00f53423          	sd	a5,8(a0)
        blocked_tail = toBlock;
    80001848:	00f53823          	sd	a5,16(a0)
        toBlock->prev = nullptr;
    8000184c:	0407b023          	sd	zero,64(a5)
    80001850:	fe5ff06f          	j	80001834 <_ZN10_semaphore3putEv+0x3c>

0000000080001854 <_ZN10_semaphore5blockEv>:
{
    80001854:	ff010113          	addi	sp,sp,-16
    80001858:	00113423          	sd	ra,8(sp)
    8000185c:	00813023          	sd	s0,0(sp)
    80001860:	01010413          	addi	s0,sp,16
    TCB* running = Scheduler::Running;
    80001864:	0000a797          	auipc	a5,0xa
    80001868:	25c7b783          	ld	a5,604(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000186c:	0007b783          	ld	a5,0(a5)
    80001870:	00200713          	li	a4,2
    80001874:	04e7aa23          	sw	a4,84(a5)
    this->put();
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	f80080e7          	jalr	-128(ra) # 800017f8 <_ZN10_semaphore3putEv>
    TCB::yield();
    80001880:	00001097          	auipc	ra,0x1
    80001884:	370080e7          	jalr	880(ra) # 80002bf0 <_ZN3TCB5yieldEv>
}
    80001888:	00813083          	ld	ra,8(sp)
    8000188c:	00013403          	ld	s0,0(sp)
    80001890:	01010113          	addi	sp,sp,16
    80001894:	00008067          	ret

0000000080001898 <_ZN10_semaphore4waitEv>:
    if(closed) return -1;
    80001898:	00454783          	lbu	a5,4(a0)
    8000189c:	0ff7f793          	andi	a5,a5,255
    800018a0:	06079c63          	bnez	a5,80001918 <_ZN10_semaphore4waitEv+0x80>
{
    800018a4:	fe010113          	addi	sp,sp,-32
    800018a8:	00113c23          	sd	ra,24(sp)
    800018ac:	00813823          	sd	s0,16(sp)
    800018b0:	00913423          	sd	s1,8(sp)
    800018b4:	02010413          	addi	s0,sp,32
    800018b8:	00050493          	mv	s1,a0
    if (--val < 0)
    800018bc:	00052783          	lw	a5,0(a0)
    800018c0:	fff7879b          	addiw	a5,a5,-1
    800018c4:	00f52023          	sw	a5,0(a0)
    800018c8:	02079713          	slli	a4,a5,0x20
    800018cc:	00074e63          	bltz	a4,800018e8 <_ZN10_semaphore4waitEv+0x50>
    return 0;
    800018d0:	00000513          	li	a0,0
}
    800018d4:	01813083          	ld	ra,24(sp)
    800018d8:	01013403          	ld	s0,16(sp)
    800018dc:	00813483          	ld	s1,8(sp)
    800018e0:	02010113          	addi	sp,sp,32
    800018e4:	00008067          	ret
        Scheduler::Running->waitForResources = 1;
    800018e8:	0000a797          	auipc	a5,0xa
    800018ec:	1d87b783          	ld	a5,472(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800018f0:	0007b783          	ld	a5,0(a5)
    800018f4:	00100713          	li	a4,1
    800018f8:	04e7a823          	sw	a4,80(a5)
        block();
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	f58080e7          	jalr	-168(ra) # 80001854 <_ZN10_semaphore5blockEv>
        if (closed) return -1;
    80001904:	0044c783          	lbu	a5,4(s1)
    80001908:	0ff7f793          	andi	a5,a5,255
    8000190c:	00079a63          	bnez	a5,80001920 <_ZN10_semaphore4waitEv+0x88>
    return 0;
    80001910:	00000513          	li	a0,0
    80001914:	fc1ff06f          	j	800018d4 <_ZN10_semaphore4waitEv+0x3c>
    if(closed) return -1;
    80001918:	fff00513          	li	a0,-1
}
    8000191c:	00008067          	ret
        if (closed) return -1;
    80001920:	fff00513          	li	a0,-1
    80001924:	fb1ff06f          	j	800018d4 <_ZN10_semaphore4waitEv+0x3c>

0000000080001928 <_ZN10_semaphore6wait_nEi>:
    if (closed) return -1;
    80001928:	00454783          	lbu	a5,4(a0)
    8000192c:	0ff7f793          	andi	a5,a5,255
    80001930:	08079263          	bnez	a5,800019b4 <_ZN10_semaphore6wait_nEi+0x8c>
{
    80001934:	fe010113          	addi	sp,sp,-32
    80001938:	00113c23          	sd	ra,24(sp)
    8000193c:	00813823          	sd	s0,16(sp)
    80001940:	00913423          	sd	s1,8(sp)
    80001944:	01213023          	sd	s2,0(sp)
    80001948:	02010413          	addi	s0,sp,32
    8000194c:	00050493          	mv	s1,a0
    80001950:	00058913          	mv	s2,a1
    if (val < n)
    80001954:	00052783          	lw	a5,0(a0)
    80001958:	0007879b          	sext.w	a5,a5
    8000195c:	02b7c663          	blt	a5,a1,80001988 <_ZN10_semaphore6wait_nEi+0x60>
    val -= n;
    80001960:	0004a583          	lw	a1,0(s1)
    80001964:	4125893b          	subw	s2,a1,s2
    80001968:	0124a023          	sw	s2,0(s1)
    return 0;
    8000196c:	00000513          	li	a0,0
}
    80001970:	01813083          	ld	ra,24(sp)
    80001974:	01013403          	ld	s0,16(sp)
    80001978:	00813483          	ld	s1,8(sp)
    8000197c:	00013903          	ld	s2,0(sp)
    80001980:	02010113          	addi	sp,sp,32
    80001984:	00008067          	ret
        Scheduler::Running->waitForResources = n;
    80001988:	0000a797          	auipc	a5,0xa
    8000198c:	1387b783          	ld	a5,312(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001990:	0007b783          	ld	a5,0(a5)
    80001994:	04b7a823          	sw	a1,80(a5)
        block();
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	ebc080e7          	jalr	-324(ra) # 80001854 <_ZN10_semaphore5blockEv>
        if (closed) return -1;
    800019a0:	0044c783          	lbu	a5,4(s1)
    800019a4:	0ff7f793          	andi	a5,a5,255
    800019a8:	fa078ce3          	beqz	a5,80001960 <_ZN10_semaphore6wait_nEi+0x38>
    800019ac:	fff00513          	li	a0,-1
    800019b0:	fc1ff06f          	j	80001970 <_ZN10_semaphore6wait_nEi+0x48>
    if (closed) return -1;
    800019b4:	fff00513          	li	a0,-1
}
    800019b8:	00008067          	ret

00000000800019bc <_ZN17ConsoleController12txThreadBodyEPv>:
{
    uint64* stack = new uint64[DEFAULT_STACK_SIZE];
    TCB::createThread(txThreadBody, nullptr, stack);
}
void ConsoleController::txThreadBody(void* arg)
{
    800019bc:	ff010113          	addi	sp,sp,-16
    800019c0:	00113423          	sd	ra,8(sp)
    800019c4:	00813023          	sd	s0,0(sp)
    800019c8:	01010413          	addi	s0,sp,16
    800019cc:	0140006f          	j	800019e0 <_ZN17ConsoleController12txThreadBodyEPv+0x24>
    while (true) {
        char c = txBuffer->take(); // blokira dok ima znakova
        while (!(*((char*)CONSOLE_STATUS) & (1 << 5))); // čekaj TXRDY
        *((char*)CONSOLE_TX_DATA) = c;
    800019d0:	0000a797          	auipc	a5,0xa
    800019d4:	0e07b783          	ld	a5,224(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019d8:	0007b783          	ld	a5,0(a5)
    800019dc:	00a78023          	sb	a0,0(a5)
        char c = txBuffer->take(); // blokira dok ima znakova
    800019e0:	0000a517          	auipc	a0,0xa
    800019e4:	14053503          	ld	a0,320(a0) # 8000bb20 <_ZN17ConsoleController8txBufferE>
    800019e8:	00001097          	auipc	ra,0x1
    800019ec:	b44080e7          	jalr	-1212(ra) # 8000252c <_ZN13BoundedBuffer4takeEv>
        while (!(*((char*)CONSOLE_STATUS) & (1 << 5))); // čekaj TXRDY
    800019f0:	0000a797          	auipc	a5,0xa
    800019f4:	0a87b783          	ld	a5,168(a5) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019f8:	0007b783          	ld	a5,0(a5)
    800019fc:	0007c783          	lbu	a5,0(a5)
    80001a00:	0207f793          	andi	a5,a5,32
    80001a04:	fe0786e3          	beqz	a5,800019f0 <_ZN17ConsoleController12txThreadBodyEPv+0x34>
    80001a08:	fc9ff06f          	j	800019d0 <_ZN17ConsoleController12txThreadBodyEPv+0x14>

0000000080001a0c <_ZN17ConsoleController6deinitEv>:
{
    80001a0c:	fe010113          	addi	sp,sp,-32
    80001a10:	00113c23          	sd	ra,24(sp)
    80001a14:	00813823          	sd	s0,16(sp)
    80001a18:	00913423          	sd	s1,8(sp)
    80001a1c:	02010413          	addi	s0,sp,32
    delete txBuffer;
    80001a20:	0000a497          	auipc	s1,0xa
    80001a24:	1004b483          	ld	s1,256(s1) # 8000bb20 <_ZN17ConsoleController8txBufferE>
    80001a28:	00048e63          	beqz	s1,80001a44 <_ZN17ConsoleController6deinitEv+0x38>
    80001a2c:	00048513          	mv	a0,s1
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	a14080e7          	jalr	-1516(ra) # 80002444 <_ZN13BoundedBufferD1Ev>

    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(MemoryAllocator::bytesToBlocks(size));
    }
    void operator delete(void* p) {
        MemoryAllocator::mem_free(p);
    80001a38:	00048513          	mv	a0,s1
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	4ec080e7          	jalr	1260(ra) # 80002f28 <_ZN15MemoryAllocator8mem_freeEPv>
    delete rxBuffer;
    80001a44:	0000a497          	auipc	s1,0xa
    80001a48:	0e44b483          	ld	s1,228(s1) # 8000bb28 <_ZN17ConsoleController8rxBufferE>
    80001a4c:	00048e63          	beqz	s1,80001a68 <_ZN17ConsoleController6deinitEv+0x5c>
    80001a50:	00048513          	mv	a0,s1
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	9f0080e7          	jalr	-1552(ra) # 80002444 <_ZN13BoundedBufferD1Ev>
    80001a5c:	00048513          	mv	a0,s1
    80001a60:	00001097          	auipc	ra,0x1
    80001a64:	4c8080e7          	jalr	1224(ra) # 80002f28 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001a68:	01813083          	ld	ra,24(sp)
    80001a6c:	01013403          	ld	s0,16(sp)
    80001a70:	00813483          	ld	s1,8(sp)
    80001a74:	02010113          	addi	sp,sp,32
    80001a78:	00008067          	ret

0000000080001a7c <_ZN17ConsoleController4putcEc>:
{
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00113423          	sd	ra,8(sp)
    80001a84:	00813023          	sd	s0,0(sp)
    80001a88:	01010413          	addi	s0,sp,16
    80001a8c:	00050593          	mv	a1,a0
    txBuffer->append(c);
    80001a90:	0000a517          	auipc	a0,0xa
    80001a94:	09053503          	ld	a0,144(a0) # 8000bb20 <_ZN17ConsoleController8txBufferE>
    80001a98:	00001097          	auipc	ra,0x1
    80001a9c:	a20080e7          	jalr	-1504(ra) # 800024b8 <_ZN13BoundedBuffer6appendEc>
}
    80001aa0:	00813083          	ld	ra,8(sp)
    80001aa4:	00013403          	ld	s0,0(sp)
    80001aa8:	01010113          	addi	sp,sp,16
    80001aac:	00008067          	ret

0000000080001ab0 <_ZN17ConsoleController4getcEv>:
{
    80001ab0:	ff010113          	addi	sp,sp,-16
    80001ab4:	00113423          	sd	ra,8(sp)
    80001ab8:	00813023          	sd	s0,0(sp)
    80001abc:	01010413          	addi	s0,sp,16
    return rxBuffer->take();
    80001ac0:	0000a517          	auipc	a0,0xa
    80001ac4:	06853503          	ld	a0,104(a0) # 8000bb28 <_ZN17ConsoleController8rxBufferE>
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	a64080e7          	jalr	-1436(ra) # 8000252c <_ZN13BoundedBuffer4takeEv>
}
    80001ad0:	00813083          	ld	ra,8(sp)
    80001ad4:	00013403          	ld	s0,0(sp)
    80001ad8:	01010113          	addi	sp,sp,16
    80001adc:	00008067          	ret

0000000080001ae0 <_ZN17ConsoleController14consoleHandlerEv>:
{
    80001ae0:	fd010113          	addi	sp,sp,-48
    80001ae4:	02113423          	sd	ra,40(sp)
    80001ae8:	02813023          	sd	s0,32(sp)
    80001aec:	00913c23          	sd	s1,24(sp)
    80001af0:	01213823          	sd	s2,16(sp)
    80001af4:	03010413          	addi	s0,sp,48
    int irq = plic_claim();
    80001af8:	00005097          	auipc	ra,0x5
    80001afc:	70c080e7          	jalr	1804(ra) # 80007204 <plic_claim>
    80001b00:	00050493          	mv	s1,a0
    if (irq == 0x0a) //keyboard interrupt
    80001b04:	00a00793          	li	a5,10
    80001b08:	02f50463          	beq	a0,a5,80001b30 <_ZN17ConsoleController14consoleHandlerEv+0x50>
    plic_complete(irq);
    80001b0c:	00048513          	mv	a0,s1
    80001b10:	00005097          	auipc	ra,0x5
    80001b14:	72c080e7          	jalr	1836(ra) # 8000723c <plic_complete>
}
    80001b18:	02813083          	ld	ra,40(sp)
    80001b1c:	02013403          	ld	s0,32(sp)
    80001b20:	01813483          	ld	s1,24(sp)
    80001b24:	01013903          	ld	s2,16(sp)
    80001b28:	03010113          	addi	sp,sp,48
    80001b2c:	00008067          	ret
        volatile char status = *((char *) CONSOLE_STATUS);
    80001b30:	0000a797          	auipc	a5,0xa
    80001b34:	f687b783          	ld	a5,-152(a5) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b38:	0007b903          	ld	s2,0(a5)
    80001b3c:	00094783          	lbu	a5,0(s2)
    80001b40:	fcf40fa3          	sb	a5,-33(s0)
    80001b44:	0140006f          	j	80001b58 <_ZN17ConsoleController14consoleHandlerEv+0x78>
            if (!rxBuffer->isFull()) rxBuffer->append(c);
    80001b48:	00001097          	auipc	ra,0x1
    80001b4c:	970080e7          	jalr	-1680(ra) # 800024b8 <_ZN13BoundedBuffer6appendEc>
            status = *((char*) CONSOLE_STATUS);
    80001b50:	00094783          	lbu	a5,0(s2)
    80001b54:	fcf40fa3          	sb	a5,-33(s0)
        while (status & 1)
    80001b58:	fdf44783          	lbu	a5,-33(s0)
    80001b5c:	0017f793          	andi	a5,a5,1
    80001b60:	fa0786e3          	beqz	a5,80001b0c <_ZN17ConsoleController14consoleHandlerEv+0x2c>
            char c = *((char*) CONSOLE_RX_DATA);
    80001b64:	0000a797          	auipc	a5,0xa
    80001b68:	f2c7b783          	ld	a5,-212(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b6c:	0007b783          	ld	a5,0(a5)
    80001b70:	0007c583          	lbu	a1,0(a5)
            if (!rxBuffer->isFull()) rxBuffer->append(c);
    80001b74:	0000a517          	auipc	a0,0xa
    80001b78:	fb453503          	ld	a0,-76(a0) # 8000bb28 <_ZN17ConsoleController8rxBufferE>
    bool isFull() const{ return (sz == BUFFER_SIZE); }
    80001b7c:	11852703          	lw	a4,280(a0)
    80001b80:	10000793          	li	a5,256
    80001b84:	fcf706e3          	beq	a4,a5,80001b50 <_ZN17ConsoleController14consoleHandlerEv+0x70>
    80001b88:	fc1ff06f          	j	80001b48 <_ZN17ConsoleController14consoleHandlerEv+0x68>

0000000080001b8c <_ZN17ConsoleController14createTxThreadEv>:
{
    80001b8c:	ff010113          	addi	sp,sp,-16
    80001b90:	00113423          	sd	ra,8(sp)
    80001b94:	00813023          	sd	s0,0(sp)
    80001b98:	01010413          	addi	s0,sp,16
    uint64* stack = new uint64[DEFAULT_STACK_SIZE];
    80001b9c:	00008537          	lui	a0,0x8
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	468080e7          	jalr	1128(ra) # 80002008 <_Znam>
    80001ba8:	00050613          	mv	a2,a0
    TCB::createThread(txThreadBody, nullptr, stack);
    80001bac:	00000593          	li	a1,0
    80001bb0:	00000517          	auipc	a0,0x0
    80001bb4:	e0c50513          	addi	a0,a0,-500 # 800019bc <_ZN17ConsoleController12txThreadBodyEPv>
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	e48080e7          	jalr	-440(ra) # 80002a00 <_ZN3TCB12createThreadEPFvPvES0_Pm>
}
    80001bc0:	00813083          	ld	ra,8(sp)
    80001bc4:	00013403          	ld	s0,0(sp)
    80001bc8:	01010113          	addi	sp,sp,16
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN17ConsoleController4initEv>:
{
    80001bd0:	fe010113          	addi	sp,sp,-32
    80001bd4:	00113c23          	sd	ra,24(sp)
    80001bd8:	00813823          	sd	s0,16(sp)
    80001bdc:	00913423          	sd	s1,8(sp)
    80001be0:	01213023          	sd	s2,0(sp)
    80001be4:	02010413          	addi	s0,sp,32
        return MemoryAllocator::mem_alloc(MemoryAllocator::bytesToBlocks(size));
    80001be8:	00500513          	li	a0,5
    80001bec:	00001097          	auipc	ra,0x1
    80001bf0:	258080e7          	jalr	600(ra) # 80002e44 <_ZN15MemoryAllocator9mem_allocEm>
    80001bf4:	00050493          	mv	s1,a0
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	7c8080e7          	jalr	1992(ra) # 800023c0 <_ZN13BoundedBufferC1Ev>
    txBuffer = new BoundedBuffer();
    80001c00:	0000a797          	auipc	a5,0xa
    80001c04:	f297b023          	sd	s1,-224(a5) # 8000bb20 <_ZN17ConsoleController8txBufferE>
    80001c08:	00500513          	li	a0,5
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	238080e7          	jalr	568(ra) # 80002e44 <_ZN15MemoryAllocator9mem_allocEm>
    80001c14:	00050493          	mv	s1,a0
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	7a8080e7          	jalr	1960(ra) # 800023c0 <_ZN13BoundedBufferC1Ev>
    rxBuffer = new BoundedBuffer();
    80001c20:	0000a797          	auipc	a5,0xa
    80001c24:	f097b423          	sd	s1,-248(a5) # 8000bb28 <_ZN17ConsoleController8rxBufferE>
    createTxThread();
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	f64080e7          	jalr	-156(ra) # 80001b8c <_ZN17ConsoleController14createTxThreadEv>
}
    80001c30:	01813083          	ld	ra,24(sp)
    80001c34:	01013403          	ld	s0,16(sp)
    80001c38:	00813483          	ld	s1,8(sp)
    80001c3c:	00013903          	ld	s2,0(sp)
    80001c40:	02010113          	addi	sp,sp,32
    80001c44:	00008067          	ret
    80001c48:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(p);
    80001c4c:	00048513          	mv	a0,s1
    80001c50:	00001097          	auipc	ra,0x1
    80001c54:	2d8080e7          	jalr	728(ra) # 80002f28 <_ZN15MemoryAllocator8mem_freeEPv>
    80001c58:	00090513          	mv	a0,s2
    80001c5c:	0000b097          	auipc	ra,0xb
    80001c60:	02c080e7          	jalr	44(ra) # 8000cc88 <_Unwind_Resume>
    80001c64:	00050913          	mv	s2,a0
    80001c68:	00048513          	mv	a0,s1
    80001c6c:	00001097          	auipc	ra,0x1
    80001c70:	2bc080e7          	jalr	700(ra) # 80002f28 <_ZN15MemoryAllocator8mem_freeEPv>
    80001c74:	00090513          	mv	a0,s2
    80001c78:	0000b097          	auipc	ra,0xb
    80001c7c:	010080e7          	jalr	16(ra) # 8000cc88 <_Unwind_Resume>

0000000080001c80 <_ZN9SleepList6insertEP3TCBm>:
    return 0;
}


void SleepList::insert(TCB* tcb, time_t time)
{
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00813423          	sd	s0,8(sp)
    80001c88:	01010413          	addi	s0,sp,16
    if (!tcb) return;
    80001c8c:	06050463          	beqz	a0,80001cf4 <_ZN9SleepList6insertEP3TCBm+0x74>
    80001c90:	00400793          	li	a5,4
    80001c94:	04f52a23          	sw	a5,84(a0)
    tcb->setState(TCB::SLEEPING); //tcb ce sigurno biti ubacen u sleepList

    TCB* cur = sleeping_head;
    80001c98:	0000a797          	auipc	a5,0xa
    80001c9c:	e987b783          	ld	a5,-360(a5) # 8000bb30 <_ZN9SleepList13sleeping_headE>
    if (!cur)
    80001ca0:	02078263          	beqz	a5,80001cc4 <_ZN9SleepList6insertEP3TCBm+0x44>
    {
        sleeping_head = tcb;
        tcb->sleepTime = time;
        return;
    }
    TCB* prev = nullptr;
    80001ca4:	00000693          	li	a3,0
    while (cur && time > cur->sleepTime)
    80001ca8:	02078663          	beqz	a5,80001cd4 <_ZN9SleepList6insertEP3TCBm+0x54>
    80001cac:	0487b703          	ld	a4,72(a5)
    80001cb0:	02b77263          	bgeu	a4,a1,80001cd4 <_ZN9SleepList6insertEP3TCBm+0x54>
    {
        time -= cur->sleepTime;
    80001cb4:	40e585b3          	sub	a1,a1,a4
        prev = cur;
    80001cb8:	00078693          	mv	a3,a5
        cur = cur->next;
    80001cbc:	0387b783          	ld	a5,56(a5)
    while (cur && time > cur->sleepTime)
    80001cc0:	fe9ff06f          	j	80001ca8 <_ZN9SleepList6insertEP3TCBm+0x28>
        sleeping_head = tcb;
    80001cc4:	0000a797          	auipc	a5,0xa
    80001cc8:	e6a7b623          	sd	a0,-404(a5) # 8000bb30 <_ZN9SleepList13sleeping_headE>
        tcb->sleepTime = time;
    80001ccc:	04b53423          	sd	a1,72(a0)
        return;
    80001cd0:	0240006f          	j	80001cf4 <_ZN9SleepList6insertEP3TCBm+0x74>
    }

    if (!prev) sleeping_head = tcb;
    80001cd4:	02068663          	beqz	a3,80001d00 <_ZN9SleepList6insertEP3TCBm+0x80>
    else prev->next = tcb;
    80001cd8:	02a6bc23          	sd	a0,56(a3)

    tcb->next = cur;
    80001cdc:	02f53c23          	sd	a5,56(a0)
    tcb->sleepTime = time;
    80001ce0:	04b53423          	sd	a1,72(a0)
    if (cur != nullptr)  cur->sleepTime -= time;
    80001ce4:	00078863          	beqz	a5,80001cf4 <_ZN9SleepList6insertEP3TCBm+0x74>
    80001ce8:	0487b703          	ld	a4,72(a5)
    80001cec:	40b705b3          	sub	a1,a4,a1
    80001cf0:	04b7b423          	sd	a1,72(a5)
}
    80001cf4:	00813403          	ld	s0,8(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret
    if (!prev) sleeping_head = tcb;
    80001d00:	0000a717          	auipc	a4,0xa
    80001d04:	e2a73823          	sd	a0,-464(a4) # 8000bb30 <_ZN9SleepList13sleeping_headE>
    80001d08:	fd5ff06f          	j	80001cdc <_ZN9SleepList6insertEP3TCBm+0x5c>

0000000080001d0c <_ZN9SleepList5sleepEP3TCBm>:
{
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00113423          	sd	ra,8(sp)
    80001d14:	00813023          	sd	s0,0(sp)
    80001d18:	01010413          	addi	s0,sp,16
    insert(tcb, time);
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	f64080e7          	jalr	-156(ra) # 80001c80 <_ZN9SleepList6insertEP3TCBm>
    TCB::dispatch();
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	f98080e7          	jalr	-104(ra) # 80002cbc <_ZN3TCB8dispatchEv>
}
    80001d2c:	00000513          	li	a0,0
    80001d30:	00813083          	ld	ra,8(sp)
    80001d34:	00013403          	ld	s0,0(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret

0000000080001d40 <_ZN9SleepList4wakeEv>:
}


void SleepList::wake()
{
    if (!sleeping_head) return;
    80001d40:	0000a517          	auipc	a0,0xa
    80001d44:	df053503          	ld	a0,-528(a0) # 8000bb30 <_ZN9SleepList13sleeping_headE>
    80001d48:	04050263          	beqz	a0,80001d8c <_ZN9SleepList4wakeEv+0x4c>
{
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00113423          	sd	ra,8(sp)
    80001d54:	00813023          	sd	s0,0(sp)
    80001d58:	01010413          	addi	s0,sp,16

    TCB* toWake = sleeping_head;
    sleeping_head = sleeping_head->next;
    80001d5c:	03853783          	ld	a5,56(a0)
    80001d60:	0000a717          	auipc	a4,0xa
    80001d64:	dcf73823          	sd	a5,-560(a4) # 8000bb30 <_ZN9SleepList13sleeping_headE>
    toWake->next = nullptr;
    80001d68:	02053c23          	sd	zero,56(a0)
    80001d6c:	04052a23          	sw	zero,84(a0)
    toWake->setState(TCB::READY);
    toWake->sleepTime = 0;
    80001d70:	04053423          	sd	zero,72(a0)
    Scheduler::put(toWake);
    80001d74:	00001097          	auipc	ra,0x1
    80001d78:	030080e7          	jalr	48(ra) # 80002da4 <_ZN9Scheduler3putEP3TCB>
}
    80001d7c:	00813083          	ld	ra,8(sp)
    80001d80:	00013403          	ld	s0,0(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret
    80001d8c:	00008067          	ret

0000000080001d90 <_ZN9SleepList4tickEv>:
    if (!sleeping_head) return;
    80001d90:	0000a717          	auipc	a4,0xa
    80001d94:	da073703          	ld	a4,-608(a4) # 8000bb30 <_ZN9SleepList13sleeping_headE>
    80001d98:	06070263          	beqz	a4,80001dfc <_ZN9SleepList4tickEv+0x6c>
    sleeping_head->sleepTime--;
    80001d9c:	04873783          	ld	a5,72(a4)
    80001da0:	fff78793          	addi	a5,a5,-1
    80001da4:	04f73423          	sd	a5,72(a4)
    if (sleeping_head->sleepTime > 0) return;
    80001da8:	04079a63          	bnez	a5,80001dfc <_ZN9SleepList4tickEv+0x6c>
    while (sleeping_head && sleeping_head->sleepTime == 0)
    80001dac:	0000a797          	auipc	a5,0xa
    80001db0:	d847b783          	ld	a5,-636(a5) # 8000bb30 <_ZN9SleepList13sleeping_headE>
    80001db4:	04078463          	beqz	a5,80001dfc <_ZN9SleepList4tickEv+0x6c>
    80001db8:	0487b783          	ld	a5,72(a5)
    80001dbc:	04079063          	bnez	a5,80001dfc <_ZN9SleepList4tickEv+0x6c>
{
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
        wake();
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	f70080e7          	jalr	-144(ra) # 80001d40 <_ZN9SleepList4wakeEv>
    while (sleeping_head && sleeping_head->sleepTime == 0)
    80001dd8:	0000a797          	auipc	a5,0xa
    80001ddc:	d587b783          	ld	a5,-680(a5) # 8000bb30 <_ZN9SleepList13sleeping_headE>
    80001de0:	00078663          	beqz	a5,80001dec <_ZN9SleepList4tickEv+0x5c>
    80001de4:	0487b783          	ld	a5,72(a5)
    80001de8:	fe0784e3          	beqz	a5,80001dd0 <_ZN9SleepList4tickEv+0x40>
}
    80001dec:	00813083          	ld	ra,8(sp)
    80001df0:	00013403          	ld	s0,0(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret
    80001dfc:	00008067          	ret

0000000080001e00 <_Z12user_wrapperPv>:
#include "../h/ConsoleController.hpp"

extern void userMain();

void user_wrapper(void *arg)
{
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00113423          	sd	ra,8(sp)
    80001e08:	00813023          	sd	s0,0(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    putc('S');
    80001e10:	05300513          	li	a0,83
    80001e14:	fffff097          	auipc	ra,0xfffff
    80001e18:	760080e7          	jalr	1888(ra) # 80001574 <_Z4putcc>
    putc('\n');
    80001e1c:	00a00513          	li	a0,10
    80001e20:	fffff097          	auipc	ra,0xfffff
    80001e24:	754080e7          	jalr	1876(ra) # 80001574 <_Z4putcc>
    userMain();
    80001e28:	00004097          	auipc	ra,0x4
    80001e2c:	000080e7          	jalr	ra # 80005e28 <_Z8userMainv>
    putc('E');
    80001e30:	04500513          	li	a0,69
    80001e34:	fffff097          	auipc	ra,0xfffff
    80001e38:	740080e7          	jalr	1856(ra) # 80001574 <_Z4putcc>
    putc('\n');
    80001e3c:	00a00513          	li	a0,10
    80001e40:	fffff097          	auipc	ra,0xfffff
    80001e44:	734080e7          	jalr	1844(ra) # 80001574 <_Z4putcc>
}
    80001e48:	00813083          	ld	ra,8(sp)
    80001e4c:	00013403          	ld	s0,0(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret

0000000080001e58 <main>:

int main(){
    80001e58:	fe010113          	addi	sp,sp,-32
    80001e5c:	00113c23          	sd	ra,24(sp)
    80001e60:	00813823          	sd	s0,16(sp)
    80001e64:	02010413          	addi	s0,sp,32


    //-----------------INIT BLOCK----------------------------------------------------------------------------
    MemoryAllocator::memInit();
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	f88080e7          	jalr	-120(ra) # 80002df0 <_ZN15MemoryAllocator7memInitEv>
    Riscv::w_stvec((uint64) &riscvSupervisorTrap);
    80001e70:	0000a797          	auipc	a5,0xa
    80001e74:	c587b783          	ld	a5,-936(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x40>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001e78:	10579073          	csrw	stvec,a5
    ConsoleController::init();
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	d54080e7          	jalr	-684(ra) # 80001bd0 <_ZN17ConsoleController4initEv>
    //-------------------------------------------------------------------------------------------------------

    TCB::createMainThread();
    80001e84:	00001097          	auipc	ra,0x1
    80001e88:	cb4080e7          	jalr	-844(ra) # 80002b38 <_ZN3TCB16createMainThreadEv>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e8c:	00200793          	li	a5,2
    80001e90:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    TCB* UMain;
    thread_create(&UMain,user_wrapper, nullptr);
    80001e94:	00000613          	li	a2,0
    80001e98:	00000597          	auipc	a1,0x0
    80001e9c:	f6858593          	addi	a1,a1,-152 # 80001e00 <_Z12user_wrapperPv>
    80001ea0:	fe840513          	addi	a0,s0,-24
    80001ea4:	fffff097          	auipc	ra,0xfffff
    80001ea8:	418080e7          	jalr	1048(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    while(!UMain->isFinished()){
    80001eac:	fe843783          	ld	a5,-24(s0)
    bool isFinished() const { return finished; }
    80001eb0:	0307c783          	lbu	a5,48(a5)
    80001eb4:	00079863          	bnez	a5,80001ec4 <main+0x6c>
        thread_dispatch();
    80001eb8:	fffff097          	auipc	ra,0xfffff
    80001ebc:	4bc080e7          	jalr	1212(ra) # 80001374 <_Z15thread_dispatchv>
    80001ec0:	fedff06f          	j	80001eac <main+0x54>
    }


    TCB::yield(); //cisto da thread za ispis odradi svoje
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	d2c080e7          	jalr	-724(ra) # 80002bf0 <_ZN3TCB5yieldEv>

    ConsoleController::deinit();
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	b40080e7          	jalr	-1216(ra) # 80001a0c <_ZN17ConsoleController6deinitEv>
    return sstatus;
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ed4:	00200793          	li	a5,2
    80001ed8:	1007b073          	csrc	sstatus,a5
        asm volatile("li t0, 0x5555");
    80001edc:	000052b7          	lui	t0,0x5
    80001ee0:	5552829b          	addiw	t0,t0,1365
        asm volatile("li t1, 0x100000");
    80001ee4:	00100337          	lui	t1,0x100
        asm volatile("sw t0, 0(t1)");
    80001ee8:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    Riscv::HALT();
    return 0;
}
    80001eec:	00000513          	li	a0,0
    80001ef0:	01813083          	ld	ra,24(sp)
    80001ef4:	01013403          	ld	s0,16(sp)
    80001ef8:	02010113          	addi	sp,sp,32
    80001efc:	00008067          	ret

0000000080001f00 <_ZN6ThreadD1Ev>:
}

Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr),body(body),arg(arg) {}
Thread::Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}

Thread::~Thread() {}
    80001f00:	ff010113          	addi	sp,sp,-16
    80001f04:	00813423          	sd	s0,8(sp)
    80001f08:	01010413          	addi	s0,sp,16
    80001f0c:	00813403          	ld	s0,8(sp)
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret

0000000080001f18 <_ZN6Thread7wrapperEPv>:
    return time_sleep(t);
}

void Thread::wrapper(void *arg)
{
    if(arg)
    80001f18:	02050863          	beqz	a0,80001f48 <_ZN6Thread7wrapperEPv+0x30>
{
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00113423          	sd	ra,8(sp)
    80001f24:	00813023          	sd	s0,0(sp)
    80001f28:	01010413          	addi	s0,sp,16
    {
        ((Thread*)arg)->run();
    80001f2c:	00053783          	ld	a5,0(a0)
    80001f30:	0107b783          	ld	a5,16(a5)
    80001f34:	000780e7          	jalr	a5
    }
}
    80001f38:	00813083          	ld	ra,8(sp)
    80001f3c:	00013403          	ld	s0,0(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret
    80001f48:	00008067          	ret

0000000080001f4c <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80001f4c:	ff010113          	addi	sp,sp,-16
    80001f50:	00113423          	sd	ra,8(sp)
    80001f54:	00813023          	sd	s0,0(sp)
    80001f58:	01010413          	addi	s0,sp,16
    80001f5c:	0000a797          	auipc	a5,0xa
    80001f60:	94478793          	addi	a5,a5,-1724 # 8000b8a0 <_ZTV9Semaphore+0x10>
    80001f64:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001f68:	00853503          	ld	a0,8(a0)
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	46c080e7          	jalr	1132(ra) # 800013d8 <_Z9sem_closeP10_semaphore>
}
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_ZN14PeriodicThread3runEv>:
}

PeriodicThread::PeriodicThread(time_t period) : period(period){}


void PeriodicThread::run() {
    80001f84:	fe010113          	addi	sp,sp,-32
    80001f88:	00113c23          	sd	ra,24(sp)
    80001f8c:	00813823          	sd	s0,16(sp)
    80001f90:	00913423          	sd	s1,8(sp)
    80001f94:	02010413          	addi	s0,sp,32
    80001f98:	00050493          	mv	s1,a0
    while(period != 0){
    80001f9c:	0204b783          	ld	a5,32(s1)
    80001fa0:	02078263          	beqz	a5,80001fc4 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001fa4:	0004b783          	ld	a5,0(s1)
    80001fa8:	0187b783          	ld	a5,24(a5)
    80001fac:	00048513          	mv	a0,s1
    80001fb0:	000780e7          	jalr	a5
        time_sleep(period);
    80001fb4:	0204b503          	ld	a0,32(s1)
    80001fb8:	fffff097          	auipc	ra,0xfffff
    80001fbc:	554080e7          	jalr	1364(ra) # 8000150c <_Z10time_sleepm>
    while(period != 0){
    80001fc0:	fddff06f          	j	80001f9c <_ZN14PeriodicThread3runEv+0x18>
    }
    thread_exit();
    80001fc4:	fffff097          	auipc	ra,0xfffff
    80001fc8:	384080e7          	jalr	900(ra) # 80001348 <_Z11thread_exitv>
}
    80001fcc:	01813083          	ld	ra,24(sp)
    80001fd0:	01013403          	ld	s0,16(sp)
    80001fd4:	00813483          	ld	s1,8(sp)
    80001fd8:	02010113          	addi	sp,sp,32
    80001fdc:	00008067          	ret

0000000080001fe0 <_Znwm>:
{
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00113423          	sd	ra,8(sp)
    80001fe8:	00813023          	sd	s0,0(sp)
    80001fec:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	254080e7          	jalr	596(ra) # 80001244 <_Z9mem_allocm>
}
    80001ff8:	00813083          	ld	ra,8(sp)
    80001ffc:	00013403          	ld	s0,0(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <_Znam>:
{
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00113423          	sd	ra,8(sp)
    80002010:	00813023          	sd	s0,0(sp)
    80002014:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002018:	fffff097          	auipc	ra,0xfffff
    8000201c:	22c080e7          	jalr	556(ra) # 80001244 <_Z9mem_allocm>
}
    80002020:	00813083          	ld	ra,8(sp)
    80002024:	00013403          	ld	s0,0(sp)
    80002028:	01010113          	addi	sp,sp,16
    8000202c:	00008067          	ret

0000000080002030 <_ZdlPv>:
{
    80002030:	ff010113          	addi	sp,sp,-16
    80002034:	00113423          	sd	ra,8(sp)
    80002038:	00813023          	sd	s0,0(sp)
    8000203c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	24c080e7          	jalr	588(ra) # 8000128c <_Z8mem_freePv>
}
    80002048:	00813083          	ld	ra,8(sp)
    8000204c:	00013403          	ld	s0,0(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00113423          	sd	ra,8(sp)
    80002060:	00813023          	sd	s0,0(sp)
    80002064:	01010413          	addi	s0,sp,16
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	fc8080e7          	jalr	-56(ra) # 80002030 <_ZdlPv>
    80002070:	00813083          	ld	ra,8(sp)
    80002074:	00013403          	ld	s0,0(sp)
    80002078:	01010113          	addi	sp,sp,16
    8000207c:	00008067          	ret

0000000080002080 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002080:	fe010113          	addi	sp,sp,-32
    80002084:	00113c23          	sd	ra,24(sp)
    80002088:	00813823          	sd	s0,16(sp)
    8000208c:	00913423          	sd	s1,8(sp)
    80002090:	02010413          	addi	s0,sp,32
    80002094:	00050493          	mv	s1,a0
}
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	eb4080e7          	jalr	-332(ra) # 80001f4c <_ZN9SemaphoreD1Ev>
    800020a0:	00048513          	mv	a0,s1
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	f8c080e7          	jalr	-116(ra) # 80002030 <_ZdlPv>
    800020ac:	01813083          	ld	ra,24(sp)
    800020b0:	01013403          	ld	s0,16(sp)
    800020b4:	00813483          	ld	s1,8(sp)
    800020b8:	02010113          	addi	sp,sp,32
    800020bc:	00008067          	ret

00000000800020c0 <_ZdaPv>:
{
    800020c0:	ff010113          	addi	sp,sp,-16
    800020c4:	00113423          	sd	ra,8(sp)
    800020c8:	00813023          	sd	s0,0(sp)
    800020cc:	01010413          	addi	s0,sp,16
    mem_free(p);
    800020d0:	fffff097          	auipc	ra,0xfffff
    800020d4:	1bc080e7          	jalr	444(ra) # 8000128c <_Z8mem_freePv>
}
    800020d8:	00813083          	ld	ra,8(sp)
    800020dc:	00013403          	ld	s0,0(sp)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret

00000000800020e8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr),body(body),arg(arg) {}
    800020e8:	ff010113          	addi	sp,sp,-16
    800020ec:	00813423          	sd	s0,8(sp)
    800020f0:	01010413          	addi	s0,sp,16
    800020f4:	00009797          	auipc	a5,0x9
    800020f8:	78478793          	addi	a5,a5,1924 # 8000b878 <_ZTV6Thread+0x10>
    800020fc:	00f53023          	sd	a5,0(a0)
    80002100:	00053423          	sd	zero,8(a0)
    80002104:	00b53823          	sd	a1,16(a0)
    80002108:	00c53c23          	sd	a2,24(a0)
    8000210c:	00813403          	ld	s0,8(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813423          	sd	s0,8(sp)
    80002120:	01010413          	addi	s0,sp,16
    80002124:	00009797          	auipc	a5,0x9
    80002128:	75478793          	addi	a5,a5,1876 # 8000b878 <_ZTV6Thread+0x10>
    8000212c:	00f53023          	sd	a5,0(a0)
    80002130:	00053423          	sd	zero,8(a0)
    80002134:	00053823          	sd	zero,16(a0)
    80002138:	00053c23          	sd	zero,24(a0)
    8000213c:	00813403          	ld	s0,8(sp)
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret

0000000080002148 <_ZN6Thread5startEv>:
int Thread::start() {
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00113423          	sd	ra,8(sp)
    80002150:	00813023          	sd	s0,0(sp)
    80002154:	01010413          	addi	s0,sp,16
    if(body){
    80002158:	01053583          	ld	a1,16(a0)
    8000215c:	02058263          	beqz	a1,80002180 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle,body,arg);
    80002160:	01853603          	ld	a2,24(a0)
    80002164:	00850513          	addi	a0,a0,8
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	154080e7          	jalr	340(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002170:	00813083          	ld	ra,8(sp)
    80002174:	00013403          	ld	s0,0(sp)
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00008067          	ret
    return thread_create(&myHandle, wrapper, this);
    80002180:	00050613          	mv	a2,a0
    80002184:	00000597          	auipc	a1,0x0
    80002188:	d9458593          	addi	a1,a1,-620 # 80001f18 <_ZN6Thread7wrapperEPv>
    8000218c:	00850513          	addi	a0,a0,8
    80002190:	fffff097          	auipc	ra,0xfffff
    80002194:	12c080e7          	jalr	300(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    80002198:	fd9ff06f          	j	80002170 <_ZN6Thread5startEv+0x28>

000000008000219c <_ZN6Thread8dispatchEv>:
{
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00113423          	sd	ra,8(sp)
    800021a4:	00813023          	sd	s0,0(sp)
    800021a8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	1c8080e7          	jalr	456(ra) # 80001374 <_Z15thread_dispatchv>
}
    800021b4:	00813083          	ld	ra,8(sp)
    800021b8:	00013403          	ld	s0,0(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_ZN6Thread5sleepEm>:
{
    800021c4:	ff010113          	addi	sp,sp,-16
    800021c8:	00113423          	sd	ra,8(sp)
    800021cc:	00813023          	sd	s0,0(sp)
    800021d0:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    800021d4:	fffff097          	auipc	ra,0xfffff
    800021d8:	338080e7          	jalr	824(ra) # 8000150c <_Z10time_sleepm>
}
    800021dc:	00813083          	ld	ra,8(sp)
    800021e0:	00013403          	ld	s0,0(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00113423          	sd	ra,8(sp)
    800021f4:	00813023          	sd	s0,0(sp)
    800021f8:	01010413          	addi	s0,sp,16
    800021fc:	00009797          	auipc	a5,0x9
    80002200:	6a478793          	addi	a5,a5,1700 # 8000b8a0 <_ZTV9Semaphore+0x10>
    80002204:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80002208:	00850513          	addi	a0,a0,8
    8000220c:	fffff097          	auipc	ra,0xfffff
    80002210:	18c080e7          	jalr	396(ra) # 80001398 <_Z8sem_openPP10_semaphorej>
}
    80002214:	00813083          	ld	ra,8(sp)
    80002218:	00013403          	ld	s0,0(sp)
    8000221c:	01010113          	addi	sp,sp,16
    80002220:	00008067          	ret

0000000080002224 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002224:	ff010113          	addi	sp,sp,-16
    80002228:	00113423          	sd	ra,8(sp)
    8000222c:	00813023          	sd	s0,0(sp)
    80002230:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002234:	00853503          	ld	a0,8(a0)
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	1dc080e7          	jalr	476(ra) # 80001414 <_Z8sem_waitP10_semaphore>
}
    80002240:	00813083          	ld	ra,8(sp)
    80002244:	00013403          	ld	s0,0(sp)
    80002248:	01010113          	addi	sp,sp,16
    8000224c:	00008067          	ret

0000000080002250 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00113423          	sd	ra,8(sp)
    80002258:	00813023          	sd	s0,0(sp)
    8000225c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002260:	00853503          	ld	a0,8(a0)
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	1ec080e7          	jalr	492(ra) # 80001450 <_Z10sem_signalP10_semaphore>
}
    8000226c:	00813083          	ld	ra,8(sp)
    80002270:	00013403          	ld	s0,0(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00813423          	sd	s0,8(sp)
    80002284:	01010413          	addi	s0,sp,16
    period = 0;
    80002288:	02053023          	sd	zero,32(a0)
}
    8000228c:	00813403          	ld	s0,8(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret

0000000080002298 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : period(period){}
    80002298:	fe010113          	addi	sp,sp,-32
    8000229c:	00113c23          	sd	ra,24(sp)
    800022a0:	00813823          	sd	s0,16(sp)
    800022a4:	00913423          	sd	s1,8(sp)
    800022a8:	01213023          	sd	s2,0(sp)
    800022ac:	02010413          	addi	s0,sp,32
    800022b0:	00050493          	mv	s1,a0
    800022b4:	00058913          	mv	s2,a1
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	e60080e7          	jalr	-416(ra) # 80002118 <_ZN6ThreadC1Ev>
    800022c0:	00009797          	auipc	a5,0x9
    800022c4:	60078793          	addi	a5,a5,1536 # 8000b8c0 <_ZTV14PeriodicThread+0x10>
    800022c8:	00f4b023          	sd	a5,0(s1)
    800022cc:	0324b023          	sd	s2,32(s1)
    800022d0:	01813083          	ld	ra,24(sp)
    800022d4:	01013403          	ld	s0,16(sp)
    800022d8:	00813483          	ld	s1,8(sp)
    800022dc:	00013903          	ld	s2,0(sp)
    800022e0:	02010113          	addi	sp,sp,32
    800022e4:	00008067          	ret

00000000800022e8 <_ZN7Console4getcEv>:

char Console::getc() {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
    return ::getc();
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	250080e7          	jalr	592(ra) # 80001548 <_Z4getcv>
}
    80002300:	00813083          	ld	ra,8(sp)
    80002304:	00013403          	ld	s0,0(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret

0000000080002310 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00113423          	sd	ra,8(sp)
    80002318:	00813023          	sd	s0,0(sp)
    8000231c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002320:	fffff097          	auipc	ra,0xfffff
    80002324:	254080e7          	jalr	596(ra) # 80001574 <_Z4putcc>
}
    80002328:	00813083          	ld	ra,8(sp)
    8000232c:	00013403          	ld	s0,0(sp)
    80002330:	01010113          	addi	sp,sp,16
    80002334:	00008067          	ret

0000000080002338 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {}
    80002338:	ff010113          	addi	sp,sp,-16
    8000233c:	00813423          	sd	s0,8(sp)
    80002340:	01010413          	addi	s0,sp,16
    80002344:	00813403          	ld	s0,8(sp)
    80002348:	01010113          	addi	sp,sp,16
    8000234c:	00008067          	ret

0000000080002350 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate ();

protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002350:	ff010113          	addi	sp,sp,-16
    80002354:	00813423          	sd	s0,8(sp)
    80002358:	01010413          	addi	s0,sp,16
    8000235c:	00813403          	ld	s0,8(sp)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret

0000000080002368 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00813423          	sd	s0,8(sp)
    80002370:	01010413          	addi	s0,sp,16
    80002374:	00009797          	auipc	a5,0x9
    80002378:	54c78793          	addi	a5,a5,1356 # 8000b8c0 <_ZTV14PeriodicThread+0x10>
    8000237c:	00f53023          	sd	a5,0(a0)
    80002380:	00813403          	ld	s0,8(sp)
    80002384:	01010113          	addi	sp,sp,16
    80002388:	00008067          	ret

000000008000238c <_ZN14PeriodicThreadD0Ev>:
    8000238c:	ff010113          	addi	sp,sp,-16
    80002390:	00113423          	sd	ra,8(sp)
    80002394:	00813023          	sd	s0,0(sp)
    80002398:	01010413          	addi	s0,sp,16
    8000239c:	00009797          	auipc	a5,0x9
    800023a0:	52478793          	addi	a5,a5,1316 # 8000b8c0 <_ZTV14PeriodicThread+0x10>
    800023a4:	00f53023          	sd	a5,0(a0)
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	c88080e7          	jalr	-888(ra) # 80002030 <_ZdlPv>
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN13BoundedBufferC1Ev>:
#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer()
    800023c0:	fe010113          	addi	sp,sp,-32
    800023c4:	00113c23          	sd	ra,24(sp)
    800023c8:	00813823          	sd	s0,16(sp)
    800023cc:	00913423          	sd	s1,8(sp)
    800023d0:	02010413          	addi	s0,sp,32
    800023d4:	00050493          	mv	s1,a0
    800023d8:	00053023          	sd	zero,0(a0)
    800023dc:	00053423          	sd	zero,8(a0)
    800023e0:	10052823          	sw	zero,272(a0)
    800023e4:	10052a23          	sw	zero,276(a0)
    800023e8:	10052c23          	sw	zero,280(a0)
    {}
    ~_semaphore() { this->close(); }

    
    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(MemoryAllocator::bytesToBlocks(size));
    800023ec:	00100513          	li	a0,1
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	a54080e7          	jalr	-1452(ra) # 80002e44 <_ZN15MemoryAllocator9mem_allocEm>
        :val(init)
    800023f8:	10000793          	li	a5,256
    800023fc:	00f52023          	sw	a5,0(a0)
    80002400:	00050223          	sb	zero,4(a0)
    80002404:	00053423          	sd	zero,8(a0)
    80002408:	00053823          	sd	zero,16(a0)
{
    spaceAvailable = new _semaphore(BUFFER_SIZE);
    8000240c:	00a4b423          	sd	a0,8(s1)
        return MemoryAllocator::mem_alloc(MemoryAllocator::bytesToBlocks(size));
    80002410:	00100513          	li	a0,1
    80002414:	00001097          	auipc	ra,0x1
    80002418:	a30080e7          	jalr	-1488(ra) # 80002e44 <_ZN15MemoryAllocator9mem_allocEm>
        :val(init)
    8000241c:	00052023          	sw	zero,0(a0)
    80002420:	00050223          	sb	zero,4(a0)
    80002424:	00053423          	sd	zero,8(a0)
    80002428:	00053823          	sd	zero,16(a0)
    itemAvailiable = new _semaphore(0);
    8000242c:	00a4b023          	sd	a0,0(s1)
}
    80002430:	01813083          	ld	ra,24(sp)
    80002434:	01013403          	ld	s0,16(sp)
    80002438:	00813483          	ld	s1,8(sp)
    8000243c:	02010113          	addi	sp,sp,32
    80002440:	00008067          	ret

0000000080002444 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer()
    80002444:	fe010113          	addi	sp,sp,-32
    80002448:	00113c23          	sd	ra,24(sp)
    8000244c:	00813823          	sd	s0,16(sp)
    80002450:	00913423          	sd	s1,8(sp)
    80002454:	01213023          	sd	s2,0(sp)
    80002458:	02010413          	addi	s0,sp,32
    8000245c:	00050493          	mv	s1,a0
{
    if (spaceAvailable) delete spaceAvailable;
    80002460:	00853903          	ld	s2,8(a0)
    80002464:	00090e63          	beqz	s2,80002480 <_ZN13BoundedBufferD1Ev+0x3c>
    ~_semaphore() { this->close(); }
    80002468:	00090513          	mv	a0,s2
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	228080e7          	jalr	552(ra) # 80001694 <_ZN10_semaphore5closeEv>
    }
    void operator delete(void* p) {
        MemoryAllocator::mem_free(p);
    80002474:	00090513          	mv	a0,s2
    80002478:	00001097          	auipc	ra,0x1
    8000247c:	ab0080e7          	jalr	-1360(ra) # 80002f28 <_ZN15MemoryAllocator8mem_freeEPv>
    if (itemAvailiable) delete itemAvailiable;
    80002480:	0004b483          	ld	s1,0(s1)
    80002484:	00048e63          	beqz	s1,800024a0 <_ZN13BoundedBufferD1Ev+0x5c>
    ~_semaphore() { this->close(); }
    80002488:	00048513          	mv	a0,s1
    8000248c:	fffff097          	auipc	ra,0xfffff
    80002490:	208080e7          	jalr	520(ra) # 80001694 <_ZN10_semaphore5closeEv>
        MemoryAllocator::mem_free(p);
    80002494:	00048513          	mv	a0,s1
    80002498:	00001097          	auipc	ra,0x1
    8000249c:	a90080e7          	jalr	-1392(ra) # 80002f28 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800024a0:	01813083          	ld	ra,24(sp)
    800024a4:	01013403          	ld	s0,16(sp)
    800024a8:	00813483          	ld	s1,8(sp)
    800024ac:	00013903          	ld	s2,0(sp)
    800024b0:	02010113          	addi	sp,sp,32
    800024b4:	00008067          	ret

00000000800024b8 <_ZN13BoundedBuffer6appendEc>:

void BoundedBuffer::append(char c)
{
    800024b8:	fe010113          	addi	sp,sp,-32
    800024bc:	00113c23          	sd	ra,24(sp)
    800024c0:	00813823          	sd	s0,16(sp)
    800024c4:	00913423          	sd	s1,8(sp)
    800024c8:	01213023          	sd	s2,0(sp)
    800024cc:	02010413          	addi	s0,sp,32
    800024d0:	00050493          	mv	s1,a0
    800024d4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800024d8:	00853503          	ld	a0,8(a0)
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	3bc080e7          	jalr	956(ra) # 80001898 <_ZN10_semaphore4waitEv>
    data[tail] = c;
    800024e4:	1144a783          	lw	a5,276(s1)
    800024e8:	00f48733          	add	a4,s1,a5
    800024ec:	01270823          	sb	s2,16(a4)
    tail = (tail + 1) % BUFFER_SIZE;
    800024f0:	0017879b          	addiw	a5,a5,1
    800024f4:	0ff7f793          	andi	a5,a5,255
    800024f8:	10f4aa23          	sw	a5,276(s1)
    this->sz++;
    800024fc:	1184a783          	lw	a5,280(s1)
    80002500:	0017879b          	addiw	a5,a5,1
    80002504:	10f4ac23          	sw	a5,280(s1)
    itemAvailiable->signal();
    80002508:	0004b503          	ld	a0,0(s1)
    8000250c:	fffff097          	auipc	ra,0xfffff
    80002510:	290080e7          	jalr	656(ra) # 8000179c <_ZN10_semaphore6signalEv>
}
    80002514:	01813083          	ld	ra,24(sp)
    80002518:	01013403          	ld	s0,16(sp)
    8000251c:	00813483          	ld	s1,8(sp)
    80002520:	00013903          	ld	s2,0(sp)
    80002524:	02010113          	addi	sp,sp,32
    80002528:	00008067          	ret

000000008000252c <_ZN13BoundedBuffer4takeEv>:

char BoundedBuffer::take()
{
    8000252c:	fe010113          	addi	sp,sp,-32
    80002530:	00113c23          	sd	ra,24(sp)
    80002534:	00813823          	sd	s0,16(sp)
    80002538:	00913423          	sd	s1,8(sp)
    8000253c:	01213023          	sd	s2,0(sp)
    80002540:	02010413          	addi	s0,sp,32
    80002544:	00050493          	mv	s1,a0
    itemAvailiable->wait();
    80002548:	00053503          	ld	a0,0(a0)
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	34c080e7          	jalr	844(ra) # 80001898 <_ZN10_semaphore4waitEv>
    char c = data[head];
    80002554:	1104a783          	lw	a5,272(s1)
    80002558:	00f48733          	add	a4,s1,a5
    8000255c:	01074903          	lbu	s2,16(a4)
    head = (head + 1) % BUFFER_SIZE;
    80002560:	0017879b          	addiw	a5,a5,1
    80002564:	0ff7f793          	andi	a5,a5,255
    80002568:	10f4a823          	sw	a5,272(s1)
    this->sz--;
    8000256c:	1184a783          	lw	a5,280(s1)
    80002570:	fff7879b          	addiw	a5,a5,-1
    80002574:	10f4ac23          	sw	a5,280(s1)
    spaceAvailable->signal();
    80002578:	0084b503          	ld	a0,8(s1)
    8000257c:	fffff097          	auipc	ra,0xfffff
    80002580:	220080e7          	jalr	544(ra) # 8000179c <_ZN10_semaphore6signalEv>
    return c;
}
    80002584:	00090513          	mv	a0,s2
    80002588:	01813083          	ld	ra,24(sp)
    8000258c:	01013403          	ld	s0,16(sp)
    80002590:	00813483          	ld	s1,8(sp)
    80002594:	00013903          	ld	s2,0(sp)
    80002598:	02010113          	addi	sp,sp,32
    8000259c:	00008067          	ret

00000000800025a0 <_ZN5Riscv10popSppSpieEv>:
{
    Riscv::handleSupervisorTrap(a0, a1, a2, a3, a4);
}

void Riscv::popSppSpie()
{
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00813423          	sd	s0,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800025ac:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800025b0:	10200073          	sret
}
    800025b4:	00813403          	ld	s0,8(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <_ZN5Riscv20handleSupervisorTrapEmmmmm>:
//
// }

void Riscv::handleSupervisorTrap(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4)
//should be called only from superVisorTrap.s
{
    800025c0:	f9010113          	addi	sp,sp,-112
    800025c4:	06113423          	sd	ra,104(sp)
    800025c8:	06813023          	sd	s0,96(sp)
    800025cc:	04913c23          	sd	s1,88(sp)
    800025d0:	05213823          	sd	s2,80(sp)
    800025d4:	07010413          	addi	s0,sp,112
    800025d8:	00050793          	mv	a5,a0
    800025dc:	00058493          	mv	s1,a1
    800025e0:	00060913          	mv	s2,a2
    800025e4:	00068593          	mv	a1,a3
    800025e8:	00070613          	mv	a2,a4
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800025ec:	14202773          	csrr	a4,scause
    800025f0:	fae43823          	sd	a4,-80(s0)
    return scause;
    800025f4:	fb043703          	ld	a4,-80(s0)
    uint64 volatile scause = r_scause();
    800025f8:	fce43c23          	sd	a4,-40(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800025fc:	fd843683          	ld	a3,-40(s0)
    80002600:	00800713          	li	a4,8
    80002604:	0ce68663          	beq	a3,a4,800026d0 <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x110>
    80002608:	fd843683          	ld	a3,-40(s0)
    8000260c:	00900713          	li	a4,9
    80002610:	0ce68063          	beq	a3,a4,800026d0 <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x110>
            break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80002614:	fd843703          	ld	a4,-40(s0)
    80002618:	fff00793          	li	a5,-1
    8000261c:	03f79793          	slli	a5,a5,0x3f
    80002620:	00178793          	addi	a5,a5,1
    80002624:	28f70e63          	beq	a4,a5,800028c0 <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x300>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

    }
    else if (scause == 0x8000000000000009UL)
    80002628:	fd843703          	ld	a4,-40(s0)
    8000262c:	fff00793          	li	a5,-1
    80002630:	03f79793          	slli	a5,a5,0x3f
    80002634:	00978793          	addi	a5,a5,9
    80002638:	30f70263          	beq	a4,a5,8000293c <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x37c>

    }
    else
    {
        //unexpected cause(exception)
        interruptPrintStr("scause: ");
    8000263c:	00007517          	auipc	a0,0x7
    80002640:	9e450513          	addi	a0,a0,-1564 # 80009020 <CONSOLE_STATUS+0x10>
    80002644:	00001097          	auipc	ra,0x1
    80002648:	bac080e7          	jalr	-1108(ra) # 800031f0 <_Z17interruptPrintStrPKc>
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000264c:	142027f3          	csrr	a5,scause
    80002650:	fcf43823          	sd	a5,-48(s0)
    return scause;
    80002654:	fd043503          	ld	a0,-48(s0)
        interruptPrintInt(r_scause());
    80002658:	00001097          	auipc	ra,0x1
    8000265c:	bec080e7          	jalr	-1044(ra) # 80003244 <_Z17interruptPrintIntm>
        interruptPrintStr("  sepc:");
    80002660:	00007517          	auipc	a0,0x7
    80002664:	9d050513          	addi	a0,a0,-1584 # 80009030 <CONSOLE_STATUS+0x20>
    80002668:	00001097          	auipc	ra,0x1
    8000266c:	b88080e7          	jalr	-1144(ra) # 800031f0 <_Z17interruptPrintStrPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002670:	141027f3          	csrr	a5,sepc
    80002674:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002678:	fc843503          	ld	a0,-56(s0)
        interruptPrintInt(r_sepc());
    8000267c:	00001097          	auipc	ra,0x1
    80002680:	bc8080e7          	jalr	-1080(ra) # 80003244 <_Z17interruptPrintIntm>
        interruptPrintStr("     stval: ");
    80002684:	00007517          	auipc	a0,0x7
    80002688:	9b450513          	addi	a0,a0,-1612 # 80009038 <CONSOLE_STATUS+0x28>
    8000268c:	00001097          	auipc	ra,0x1
    80002690:	b64080e7          	jalr	-1180(ra) # 800031f0 <_Z17interruptPrintStrPKc>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002694:	143027f3          	csrr	a5,stval
    80002698:	fcf43023          	sd	a5,-64(s0)
    return stval;
    8000269c:	fc043503          	ld	a0,-64(s0)
        interruptPrintInt(r_stval());
    800026a0:	00001097          	auipc	ra,0x1
    800026a4:	ba4080e7          	jalr	-1116(ra) # 80003244 <_Z17interruptPrintIntm>
        interruptPrintStr("     sstatus: ");
    800026a8:	00007517          	auipc	a0,0x7
    800026ac:	9a050513          	addi	a0,a0,-1632 # 80009048 <CONSOLE_STATUS+0x38>
    800026b0:	00001097          	auipc	ra,0x1
    800026b4:	b40080e7          	jalr	-1216(ra) # 800031f0 <_Z17interruptPrintStrPKc>
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800026b8:	100027f3          	csrr	a5,sstatus
    800026bc:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800026c0:	fb843503          	ld	a0,-72(s0)
        interruptPrintInt(r_sstatus());
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	b80080e7          	jalr	-1152(ra) # 80003244 <_Z17interruptPrintIntm>


        while(1);
    800026cc:	0000006f          	j	800026cc <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x10c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800026d0:	14102773          	csrr	a4,sepc
    800026d4:	fce43023          	sd	a4,-64(s0)
    return sepc;
    800026d8:	fc043703          	ld	a4,-64(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800026dc:	00470713          	addi	a4,a4,4
    800026e0:	f8e43823          	sd	a4,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800026e4:	10002773          	csrr	a4,sstatus
    800026e8:	fae43c23          	sd	a4,-72(s0)
    return sstatus;
    800026ec:	fb843703          	ld	a4,-72(s0)
        uint64 volatile sstatus = r_sstatus(); //mislim da ove dve naredbe trebaju samo za dispacth, ali ne skodi nista
    800026f0:	f8e43c23          	sd	a4,-104(s0)
        switch (a0) //a0 - syscall code
    800026f4:	04200713          	li	a4,66
    800026f8:	0af76a63          	bltu	a4,a5,800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
    800026fc:	00279793          	slli	a5,a5,0x2
    80002700:	00007717          	auipc	a4,0x7
    80002704:	95870713          	addi	a4,a4,-1704 # 80009058 <CONSOLE_STATUS+0x48>
    80002708:	00e787b3          	add	a5,a5,a4
    8000270c:	0007a783          	lw	a5,0(a5)
    80002710:	00e787b3          	add	a5,a5,a4
    80002714:	00078067          	jr	a5
            ret =(uint64) MemoryAllocator::mem_alloc(a1);
    80002718:	00048513          	mv	a0,s1
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	728080e7          	jalr	1832(ra) # 80002e44 <_ZN15MemoryAllocator9mem_allocEm>
            __asm__ volatile("sd %0, 12 * 8(s0) ": : "r"(ret));
    80002724:	06a43023          	sd	a0,96(s0)
            break;
    80002728:	0840006f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
             MemoryAllocator::mem_free((void*)a1);
    8000272c:	00048513          	mv	a0,s1
    80002730:	00000097          	auipc	ra,0x0
    80002734:	7f8080e7          	jalr	2040(ra) # 80002f28 <_ZN15MemoryAllocator8mem_freeEPv>
            __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
    80002738:	06a43023          	sd	a0,96(s0)
             break;
    8000273c:	0700006f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
                *handle = TCB::createUserThread((TCB::Body) a2, (void*) a3, (uint64*) a4);
    80002740:	00090513          	mv	a0,s2
    80002744:	00000097          	auipc	ra,0x0
    80002748:	358080e7          	jalr	856(ra) # 80002a9c <_ZN3TCB16createUserThreadEPFvPvES0_Pm>
    8000274c:	00a4b023          	sd	a0,0(s1)
                if(*handle != nullptr)
    80002750:	00050863          	beqz	a0,80002760 <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1a0>
                    asm volatile("sd %0, 12 * 8(s0) ": : "r"(0));
    80002754:	00000793          	li	a5,0
    80002758:	06f43023          	sd	a5,96(s0)
    8000275c:	0500006f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
                    asm volatile("sd %0, 12 * 8(s0) ": : "r"(-17));
    80002760:	fef00793          	li	a5,-17
    80002764:	06f43023          	sd	a5,96(s0)
    80002768:	0440006f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
            Scheduler::Running->setFinished(true);
    8000276c:	00009797          	auipc	a5,0x9
    80002770:	3547b783          	ld	a5,852(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002774:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002778:	00100713          	li	a4,1
    8000277c:	02e78823          	sb	a4,48(a5)
    void setState(State s) { state = s; }
    80002780:	00300713          	li	a4,3
    80002784:	04e7aa23          	sw	a4,84(a5)
            TCB::dispatch();
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	534080e7          	jalr	1332(ra) # 80002cbc <_ZN3TCB8dispatchEv>
            __asm__ volatile("sd %0, 12 * 8(s0) ": : "r"(ret));
    80002790:	00000793          	li	a5,0
    80002794:	06f43023          	sd	a5,96(s0)
            TCB::timeSliceCounter = 0;
    80002798:	00009797          	auipc	a5,0x9
    8000279c:	3107b783          	ld	a5,784(a5) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800027a0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	518080e7          	jalr	1304(ra) # 80002cbc <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    800027ac:	f9843783          	ld	a5,-104(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800027b0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800027b4:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800027b8:	14179073          	csrw	sepc,a5
    }
}
    800027bc:	06813083          	ld	ra,104(sp)
    800027c0:	06013403          	ld	s0,96(sp)
    800027c4:	05813483          	ld	s1,88(sp)
    800027c8:	05013903          	ld	s2,80(sp)
    800027cc:	07010113          	addi	sp,sp,112
    800027d0:	00008067          	ret
        return MemoryAllocator::mem_alloc(MemoryAllocator::bytesToBlocks(size));
    800027d4:	00100513          	li	a0,1
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	66c080e7          	jalr	1644(ra) # 80002e44 <_ZN15MemoryAllocator9mem_allocEm>
                *handle = new _semaphore((int)a2);
    800027e0:	0009071b          	sext.w	a4,s2
        :val(init)
    800027e4:	00e52023          	sw	a4,0(a0)
    800027e8:	00050223          	sb	zero,4(a0)
    800027ec:	00053423          	sd	zero,8(a0)
    800027f0:	00053823          	sd	zero,16(a0)
    800027f4:	00a4b023          	sd	a0,0(s1)
                if(*handle != nullptr)
    800027f8:	00050863          	beqz	a0,80002808 <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x248>
                    asm volatile("sd %0, 12 * 8(s0) ": : "r"(0));
    800027fc:	00000793          	li	a5,0
    80002800:	06f43023          	sd	a5,96(s0)
    80002804:	fa9ff06f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
                    asm volatile("sd %0, 12 * 8(s0) ": : "r"(-33));
    80002808:	fdf00793          	li	a5,-33
    8000280c:	06f43023          	sd	a5,96(s0)
    80002810:	f9dff06f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
                handle->close();
    80002814:	00048513          	mv	a0,s1
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	e7c080e7          	jalr	-388(ra) # 80001694 <_ZN10_semaphore5closeEv>
               __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
    80002820:	06a43023          	sd	a0,96(s0)
                break;
    80002824:	f89ff06f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
                handle->wait();
    80002828:	00048513          	mv	a0,s1
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	06c080e7          	jalr	108(ra) # 80001898 <_ZN10_semaphore4waitEv>
                __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
    80002834:	06a43023          	sd	a0,96(s0)
                break;
    80002838:	f75ff06f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
                handle->signal();
    8000283c:	00048513          	mv	a0,s1
    80002840:	fffff097          	auipc	ra,0xfffff
    80002844:	f5c080e7          	jalr	-164(ra) # 8000179c <_ZN10_semaphore6signalEv>
                __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
    80002848:	06a43023          	sd	a0,96(s0)
                break;
    8000284c:	f61ff06f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
                handle->wait_n((int) a2);
    80002850:	0009059b          	sext.w	a1,s2
    80002854:	00048513          	mv	a0,s1
    80002858:	fffff097          	auipc	ra,0xfffff
    8000285c:	0d0080e7          	jalr	208(ra) # 80001928 <_ZN10_semaphore6wait_nEi>
                __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
    80002860:	06a43023          	sd	a0,96(s0)
                break;
    80002864:	f49ff06f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
                handle->signal_n((int) a2);
    80002868:	0009059b          	sext.w	a1,s2
    8000286c:	00048513          	mv	a0,s1
    80002870:	fffff097          	auipc	ra,0xfffff
    80002874:	d2c080e7          	jalr	-724(ra) # 8000159c <_ZN10_semaphore8signal_nEi>
                __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
    80002878:	06a43023          	sd	a0,96(s0)
                break;
    8000287c:	f31ff06f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
            SleepList::sleep(Scheduler::Running, (time_t) a1);
    80002880:	00048593          	mv	a1,s1
    80002884:	00009797          	auipc	a5,0x9
    80002888:	23c7b783          	ld	a5,572(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000288c:	0007b503          	ld	a0,0(a5)
    80002890:	fffff097          	auipc	ra,0xfffff
    80002894:	47c080e7          	jalr	1148(ra) # 80001d0c <_ZN9SleepList5sleepEP3TCBm>
            __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
    80002898:	06a43023          	sd	a0,96(s0)
            break;
    8000289c:	f11ff06f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
                ConsoleController::getc();
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	210080e7          	jalr	528(ra) # 80001ab0 <_ZN17ConsoleController4getcEv>
                __asm__ volatile("sd a0, 12 * 8(s0)"); // save return value(reg a0), on stack where a0 is supp to be
    800028a8:	06a43023          	sd	a0,96(s0)
                break;
    800028ac:	f01ff06f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
            ConsoleController::putc((char) a1);
    800028b0:	0ff4f513          	andi	a0,s1,255
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	1c8080e7          	jalr	456(ra) # 80001a7c <_ZN17ConsoleController4putcEc>
            break;
    800028bc:	ef1ff06f          	j	800027ac <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1ec>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800028c0:	00200793          	li	a5,2
    800028c4:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800028c8:	00009497          	auipc	s1,0x9
    800028cc:	1e04b483          	ld	s1,480(s1) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800028d0:	0004b783          	ld	a5,0(s1)
    800028d4:	00178793          	addi	a5,a5,1
    800028d8:	00f4b023          	sd	a5,0(s1)
        SleepList::tick();
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	4b4080e7          	jalr	1204(ra) # 80001d90 <_ZN9SleepList4tickEv>
        if (TCB::timeSliceCounter >= Scheduler::Running->getTimeSlice())
    800028e4:	00009797          	auipc	a5,0x9
    800028e8:	1dc7b783          	ld	a5,476(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800028ec:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const { return timeSlice; }
    800028f0:	0287b783          	ld	a5,40(a5)
    800028f4:	0004b703          	ld	a4,0(s1)
    800028f8:	ecf762e3          	bltu	a4,a5,800027bc <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1fc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800028fc:	141027f3          	csrr	a5,sepc
    80002900:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    80002904:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sepc = r_sepc();
    80002908:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000290c:	100027f3          	csrr	a5,sstatus
    80002910:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002914:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sstatus = r_sstatus();
    80002918:	faf43423          	sd	a5,-88(s0)
            TCB::timeSliceCounter = 0;
    8000291c:	0004b023          	sd	zero,0(s1)
            TCB::dispatch();
    80002920:	00000097          	auipc	ra,0x0
    80002924:	39c080e7          	jalr	924(ra) # 80002cbc <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002928:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000292c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002930:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002934:	14179073          	csrw	sepc,a5
}
    80002938:	e85ff06f          	j	800027bc <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1fc>
        ConsoleController::consoleHandler();
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	1a4080e7          	jalr	420(ra) # 80001ae0 <_ZN17ConsoleController14consoleHandlerEv>
    80002944:	e79ff06f          	j	800027bc <_ZN5Riscv20handleSupervisorTrapEmmmmm+0x1fc>

0000000080002948 <riscvHandleSupervisorTrap>:
{
    80002948:	ff010113          	addi	sp,sp,-16
    8000294c:	00113423          	sd	ra,8(sp)
    80002950:	00813023          	sd	s0,0(sp)
    80002954:	01010413          	addi	s0,sp,16
    Riscv::handleSupervisorTrap(a0, a1, a2, a3, a4);
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	c68080e7          	jalr	-920(ra) # 800025c0 <_ZN5Riscv20handleSupervisorTrapEmmmmm>
}
    80002960:	00813083          	ld	ra,8(sp)
    80002964:	00013403          	ld	s0,0(sp)
    80002968:	01010113          	addi	sp,sp,16
    8000296c:	00008067          	ret

0000000080002970 <_ZN3TCBC1EPFvPvES0_mPmb>:
              body != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
         }),
         args(args),
         timeSlice(timeSlice),
         finished(false),
         isPrivileged(isPrivileged)
    80002970:	00b53023          	sd	a1,0(a0)
    80002974:	00e53423          	sd	a4,8(a0)
             {body != nullptr ? (uint64) &threadWrapper : 0,
    80002978:	06058663          	beqz	a1,800029e4 <_ZN3TCBC1EPFvPvES0_mPmb+0x74>
    8000297c:	00000817          	auipc	a6,0x0
    80002980:	2b480813          	addi	a6,a6,692 # 80002c30 <_ZN3TCB13threadWrapperEv>
         isPrivileged(isPrivileged)
    80002984:	01053823          	sd	a6,16(a0)
              body != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80002988:	06058263          	beqz	a1,800029ec <_ZN3TCBC1EPFvPvES0_mPmb+0x7c>
    8000298c:	00008837          	lui	a6,0x8
    80002990:	01070733          	add	a4,a4,a6
         isPrivileged(isPrivileged)
    80002994:	00e53c23          	sd	a4,24(a0)
    80002998:	02c53023          	sd	a2,32(a0)
    8000299c:	02d53423          	sd	a3,40(a0)
    800029a0:	02050823          	sb	zero,48(a0)
    800029a4:	02f508a3          	sb	a5,49(a0)
    800029a8:	02053c23          	sd	zero,56(a0)
    800029ac:	04053023          	sd	zero,64(a0)
    800029b0:	04052823          	sw	zero,80(a0)
{
    if (body != nullptr)
    800029b4:	04058063          	beqz	a1,800029f4 <_ZN3TCBC1EPFvPvES0_mPmb+0x84>
TCB::TCB(Body body, void* args, uint64 timeSlice, uint64* stack, bool isPrivileged = true)
    800029b8:	ff010113          	addi	sp,sp,-16
    800029bc:	00113423          	sd	ra,8(sp)
    800029c0:	00813023          	sd	s0,0(sp)
    800029c4:	01010413          	addi	s0,sp,16
    void setState(State s) { state = s; }
    800029c8:	04052a23          	sw	zero,84(a0)
    {
        this->setState(READY);
        Scheduler::put(this);
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	3d8080e7          	jalr	984(ra) # 80002da4 <_ZN9Scheduler3putEP3TCB>
    }
    else{ this->setState(RUNNING);};
}
    800029d4:	00813083          	ld	ra,8(sp)
    800029d8:	00013403          	ld	s0,0(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret
             {body != nullptr ? (uint64) &threadWrapper : 0,
    800029e4:	00000813          	li	a6,0
    800029e8:	f9dff06f          	j	80002984 <_ZN3TCBC1EPFvPvES0_mPmb+0x14>
              body != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800029ec:	00000713          	li	a4,0
    800029f0:	fa5ff06f          	j	80002994 <_ZN3TCBC1EPFvPvES0_mPmb+0x24>
    800029f4:	00100793          	li	a5,1
    800029f8:	04f52a23          	sw	a5,84(a0)
    else{ this->setState(RUNNING);};
    800029fc:	00008067          	ret

0000000080002a00 <_ZN3TCB12createThreadEPFvPvES0_Pm>:

TCB* TCB::createThread(Body body, void* args, uint64* stack)
{
    80002a00:	fd010113          	addi	sp,sp,-48
    80002a04:	02113423          	sd	ra,40(sp)
    80002a08:	02813023          	sd	s0,32(sp)
    80002a0c:	00913c23          	sd	s1,24(sp)
    80002a10:	01213823          	sd	s2,16(sp)
    80002a14:	01313423          	sd	s3,8(sp)
    80002a18:	01413023          	sd	s4,0(sp)
    80002a1c:	03010413          	addi	s0,sp,48
    80002a20:	00050913          	mv	s2,a0
    80002a24:	00058993          	mv	s3,a1
    80002a28:	00060a13          	mv	s4,a2
        return MemoryAllocator::mem_alloc(MemoryAllocator::bytesToBlocks(size));
    80002a2c:	00200513          	li	a0,2
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	414080e7          	jalr	1044(ra) # 80002e44 <_ZN15MemoryAllocator9mem_allocEm>
    80002a38:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, stack, true);
    80002a3c:	00100793          	li	a5,1
    80002a40:	000a0713          	mv	a4,s4
    80002a44:	00200693          	li	a3,2
    80002a48:	00098613          	mv	a2,s3
    80002a4c:	00090593          	mv	a1,s2
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	f20080e7          	jalr	-224(ra) # 80002970 <_ZN3TCBC1EPFvPvES0_mPmb>
    80002a58:	0200006f          	j	80002a78 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x78>
    80002a5c:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(p);
    80002a60:	00048513          	mv	a0,s1
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	4c4080e7          	jalr	1220(ra) # 80002f28 <_ZN15MemoryAllocator8mem_freeEPv>
    80002a6c:	00090513          	mv	a0,s2
    80002a70:	0000a097          	auipc	ra,0xa
    80002a74:	218080e7          	jalr	536(ra) # 8000cc88 <_Unwind_Resume>
}
    80002a78:	00048513          	mv	a0,s1
    80002a7c:	02813083          	ld	ra,40(sp)
    80002a80:	02013403          	ld	s0,32(sp)
    80002a84:	01813483          	ld	s1,24(sp)
    80002a88:	01013903          	ld	s2,16(sp)
    80002a8c:	00813983          	ld	s3,8(sp)
    80002a90:	00013a03          	ld	s4,0(sp)
    80002a94:	03010113          	addi	sp,sp,48
    80002a98:	00008067          	ret

0000000080002a9c <_ZN3TCB16createUserThreadEPFvPvES0_Pm>:

TCB* TCB::createUserThread(Body body, void* args, uint64* stack)
{
    80002a9c:	fd010113          	addi	sp,sp,-48
    80002aa0:	02113423          	sd	ra,40(sp)
    80002aa4:	02813023          	sd	s0,32(sp)
    80002aa8:	00913c23          	sd	s1,24(sp)
    80002aac:	01213823          	sd	s2,16(sp)
    80002ab0:	01313423          	sd	s3,8(sp)
    80002ab4:	01413023          	sd	s4,0(sp)
    80002ab8:	03010413          	addi	s0,sp,48
    80002abc:	00050913          	mv	s2,a0
    80002ac0:	00058993          	mv	s3,a1
    80002ac4:	00060a13          	mv	s4,a2
        return MemoryAllocator::mem_alloc(MemoryAllocator::bytesToBlocks(size));
    80002ac8:	00200513          	li	a0,2
    80002acc:	00000097          	auipc	ra,0x0
    80002ad0:	378080e7          	jalr	888(ra) # 80002e44 <_ZN15MemoryAllocator9mem_allocEm>
    80002ad4:	00050493          	mv	s1,a0
    return new TCB(body, args, DEFAULT_TIME_SLICE, stack, false);
    80002ad8:	00000793          	li	a5,0
    80002adc:	000a0713          	mv	a4,s4
    80002ae0:	00200693          	li	a3,2
    80002ae4:	00098613          	mv	a2,s3
    80002ae8:	00090593          	mv	a1,s2
    80002aec:	00000097          	auipc	ra,0x0
    80002af0:	e84080e7          	jalr	-380(ra) # 80002970 <_ZN3TCBC1EPFvPvES0_mPmb>
    80002af4:	0200006f          	j	80002b14 <_ZN3TCB16createUserThreadEPFvPvES0_Pm+0x78>
    80002af8:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(p);
    80002afc:	00048513          	mv	a0,s1
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	428080e7          	jalr	1064(ra) # 80002f28 <_ZN15MemoryAllocator8mem_freeEPv>
    80002b08:	00090513          	mv	a0,s2
    80002b0c:	0000a097          	auipc	ra,0xa
    80002b10:	17c080e7          	jalr	380(ra) # 8000cc88 <_Unwind_Resume>
}
    80002b14:	00048513          	mv	a0,s1
    80002b18:	02813083          	ld	ra,40(sp)
    80002b1c:	02013403          	ld	s0,32(sp)
    80002b20:	01813483          	ld	s1,24(sp)
    80002b24:	01013903          	ld	s2,16(sp)
    80002b28:	00813983          	ld	s3,8(sp)
    80002b2c:	00013a03          	ld	s4,0(sp)
    80002b30:	03010113          	addi	sp,sp,48
    80002b34:	00008067          	ret

0000000080002b38 <_ZN3TCB16createMainThreadEv>:

TCB* TCB::createMainThread()
{
    if (main) return main;
    80002b38:	00009517          	auipc	a0,0x9
    80002b3c:	00053503          	ld	a0,0(a0) # 8000bb38 <_ZN3TCB4mainE>
    80002b40:	00050463          	beqz	a0,80002b48 <_ZN3TCB16createMainThreadEv+0x10>
    main = createThread(nullptr, nullptr, nullptr);
    Scheduler::Running = main;
    return main;
}
    80002b44:	00008067          	ret
{
    80002b48:	ff010113          	addi	sp,sp,-16
    80002b4c:	00113423          	sd	ra,8(sp)
    80002b50:	00813023          	sd	s0,0(sp)
    80002b54:	01010413          	addi	s0,sp,16
    main = createThread(nullptr, nullptr, nullptr);
    80002b58:	00000613          	li	a2,0
    80002b5c:	00000593          	li	a1,0
    80002b60:	00000097          	auipc	ra,0x0
    80002b64:	ea0080e7          	jalr	-352(ra) # 80002a00 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002b68:	00009797          	auipc	a5,0x9
    80002b6c:	fca7b823          	sd	a0,-48(a5) # 8000bb38 <_ZN3TCB4mainE>
    Scheduler::Running = main;
    80002b70:	00009797          	auipc	a5,0x9
    80002b74:	f507b783          	ld	a5,-176(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002b78:	00a7b023          	sd	a0,0(a5)
}
    80002b7c:	00813083          	ld	ra,8(sp)
    80002b80:	00013403          	ld	s0,0(sp)
    80002b84:	01010113          	addi	sp,sp,16
    80002b88:	00008067          	ret

0000000080002b8c <_ZN3TCB16createIdleThreadEv>:
    while (true) { TCB::yield(); }
}

TCB* TCB::createIdleThread()
{
    if (idle) return idle;
    80002b8c:	00009517          	auipc	a0,0x9
    80002b90:	fb453503          	ld	a0,-76(a0) # 8000bb40 <_ZN3TCB4idleE>
    80002b94:	00050463          	beqz	a0,80002b9c <_ZN3TCB16createIdleThreadEv+0x10>
    uint64* stack = new uint64[DEFAULT_STACK_SIZE];
    idle = createThread((Body)TCB::idleThreadBody, nullptr, stack);
    idle->setState(TCB::IDLE);
    return idle;
}
    80002b98:	00008067          	ret
{
    80002b9c:	ff010113          	addi	sp,sp,-16
    80002ba0:	00113423          	sd	ra,8(sp)
    80002ba4:	00813023          	sd	s0,0(sp)
    80002ba8:	01010413          	addi	s0,sp,16
    uint64* stack = new uint64[DEFAULT_STACK_SIZE];
    80002bac:	00008537          	lui	a0,0x8
    80002bb0:	fffff097          	auipc	ra,0xfffff
    80002bb4:	458080e7          	jalr	1112(ra) # 80002008 <_Znam>
    80002bb8:	00050613          	mv	a2,a0
    idle = createThread((Body)TCB::idleThreadBody, nullptr, stack);
    80002bbc:	00000593          	li	a1,0
    80002bc0:	00000517          	auipc	a0,0x0
    80002bc4:	05450513          	addi	a0,a0,84 # 80002c14 <_ZN3TCB14idleThreadBodyEPv>
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	e38080e7          	jalr	-456(ra) # 80002a00 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002bd0:	00009797          	auipc	a5,0x9
    80002bd4:	f6a7b823          	sd	a0,-144(a5) # 8000bb40 <_ZN3TCB4idleE>
    void setState(State s) { state = s; }
    80002bd8:	00500793          	li	a5,5
    80002bdc:	04f52a23          	sw	a5,84(a0)
}
    80002be0:	00813083          	ld	ra,8(sp)
    80002be4:	00013403          	ld	s0,0(sp)
    80002be8:	01010113          	addi	sp,sp,16
    80002bec:	00008067          	ret

0000000080002bf0 <_ZN3TCB5yieldEv>:


void TCB::yield()
{
    80002bf0:	ff010113          	addi	sp,sp,-16
    80002bf4:	00813423          	sd	s0,8(sp)
    80002bf8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r" (THREAD_DISPATCH));
    80002bfc:	01300793          	li	a5,19
    80002c00:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80002c04:	00000073          	ecall
}
    80002c08:	00813403          	ld	s0,8(sp)
    80002c0c:	01010113          	addi	sp,sp,16
    80002c10:	00008067          	ret

0000000080002c14 <_ZN3TCB14idleThreadBodyEPv>:
{
    80002c14:	ff010113          	addi	sp,sp,-16
    80002c18:	00113423          	sd	ra,8(sp)
    80002c1c:	00813023          	sd	s0,0(sp)
    80002c20:	01010413          	addi	s0,sp,16
    while (true) { TCB::yield(); }
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	fcc080e7          	jalr	-52(ra) # 80002bf0 <_ZN3TCB5yieldEv>
    80002c2c:	ff9ff06f          	j	80002c24 <_ZN3TCB14idleThreadBodyEPv+0x10>

0000000080002c30 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &Scheduler::Running->context); //proveri da nije neka greska
}

void TCB::threadWrapper() // na ovom mestu bi u nekim slucajevima trebalo promena korisnickog moda ako za to ima potrebe
{
    80002c30:	fe010113          	addi	sp,sp,-32
    80002c34:	00113c23          	sd	ra,24(sp)
    80002c38:	00813823          	sd	s0,16(sp)
    80002c3c:	00913423          	sd	s1,8(sp)
    80002c40:	02010413          	addi	s0,sp,32
    if (Scheduler::Running->isPrivileged)
    80002c44:	00009797          	auipc	a5,0x9
    80002c48:	e7c7b783          	ld	a5,-388(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002c4c:	0007b783          	ld	a5,0(a5)
    80002c50:	0317c783          	lbu	a5,49(a5)
    80002c54:	04078e63          	beqz	a5,80002cb0 <_ZN3TCB13threadWrapperEv+0x80>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002c58:	10000793          	li	a5,256
    80002c5c:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    Riscv::popSppSpie();
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	940080e7          	jalr	-1728(ra) # 800025a0 <_ZN5Riscv10popSppSpieEv>
    Scheduler::Running->body(Scheduler::Running->args); //proveri ovo, promenio si Body tako da ima void* arg
    80002c68:	00009497          	auipc	s1,0x9
    80002c6c:	e584b483          	ld	s1,-424(s1) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002c70:	0004b783          	ld	a5,0(s1)
    80002c74:	0007b703          	ld	a4,0(a5)
    80002c78:	0207b503          	ld	a0,32(a5)
    80002c7c:	000700e7          	jalr	a4
    Scheduler::Running->setFinished(true); //ovo trenutno stoji posle ga izbaci
    80002c80:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80002c84:	00100713          	li	a4,1
    80002c88:	02e78823          	sb	a4,48(a5)
    void setState(State s) { state = s; }
    80002c8c:	00300713          	li	a4,3
    80002c90:	04e7aa23          	sw	a4,84(a5)
    Scheduler::Running->setState(FINISHED);
    TCB::yield();
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	f5c080e7          	jalr	-164(ra) # 80002bf0 <_ZN3TCB5yieldEv>
}
    80002c9c:	01813083          	ld	ra,24(sp)
    80002ca0:	01013403          	ld	s0,16(sp)
    80002ca4:	00813483          	ld	s1,8(sp)
    80002ca8:	02010113          	addi	sp,sp,32
    80002cac:	00008067          	ret
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002cb0:	10000793          	li	a5,256
    80002cb4:	1007b073          	csrc	sstatus,a5
}
    80002cb8:	fa9ff06f          	j	80002c60 <_ZN3TCB13threadWrapperEv+0x30>

0000000080002cbc <_ZN3TCB8dispatchEv>:
{
    80002cbc:	fe010113          	addi	sp,sp,-32
    80002cc0:	00113c23          	sd	ra,24(sp)
    80002cc4:	00813823          	sd	s0,16(sp)
    80002cc8:	00913423          	sd	s1,8(sp)
    80002ccc:	02010413          	addi	s0,sp,32
    TCB *old = Scheduler::Running;
    80002cd0:	00009797          	auipc	a5,0x9
    80002cd4:	df07b783          	ld	a5,-528(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002cd8:	0007b483          	ld	s1,0(a5)
    State getState() const { return state; }
    80002cdc:	0544a783          	lw	a5,84(s1)
    bool isFinished() const { return finished; }
    80002ce0:	0304c703          	lbu	a4,48(s1)
    if (!old->isFinished() && s != FINISHED && s != BLOCKED && s != SLEEPING && s != IDLE) //ovaj deo refaktorisi
    80002ce4:	02071263          	bnez	a4,80002d08 <_ZN3TCB8dispatchEv+0x4c>
    80002ce8:	00300713          	li	a4,3
    80002cec:	00e78e63          	beq	a5,a4,80002d08 <_ZN3TCB8dispatchEv+0x4c>
    80002cf0:	00200713          	li	a4,2
    80002cf4:	00e78a63          	beq	a5,a4,80002d08 <_ZN3TCB8dispatchEv+0x4c>
    80002cf8:	00400713          	li	a4,4
    80002cfc:	00e78663          	beq	a5,a4,80002d08 <_ZN3TCB8dispatchEv+0x4c>
    80002d00:	00500713          	li	a4,5
    80002d04:	04e79263          	bne	a5,a4,80002d48 <_ZN3TCB8dispatchEv+0x8c>
    Scheduler::Running = Scheduler::get();
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	054080e7          	jalr	84(ra) # 80002d5c <_ZN9Scheduler3getEv>
    80002d10:	00009797          	auipc	a5,0x9
    80002d14:	db07b783          	ld	a5,-592(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002d18:	00a7b023          	sd	a0,0(a5)
    void setState(State s) { state = s; }
    80002d1c:	00100793          	li	a5,1
    80002d20:	04f52a23          	sw	a5,84(a0)
    TCB::contextSwitch(&old->context, &Scheduler::Running->context); //proveri da nije neka greska
    80002d24:	01050593          	addi	a1,a0,16
    80002d28:	01048513          	addi	a0,s1,16
    80002d2c:	ffffe097          	auipc	ra,0xffffe
    80002d30:	4e4080e7          	jalr	1252(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002d34:	01813083          	ld	ra,24(sp)
    80002d38:	01013403          	ld	s0,16(sp)
    80002d3c:	00813483          	ld	s1,8(sp)
    80002d40:	02010113          	addi	sp,sp,32
    80002d44:	00008067          	ret
    80002d48:	0404aa23          	sw	zero,84(s1)
        Scheduler::put(old);
    80002d4c:	00048513          	mv	a0,s1
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	054080e7          	jalr	84(ra) # 80002da4 <_ZN9Scheduler3putEP3TCB>
    80002d58:	fb1ff06f          	j	80002d08 <_ZN3TCB8dispatchEv+0x4c>

0000000080002d5c <_ZN9Scheduler3getEv>:
TCB* Scheduler::queue_head = nullptr;
TCB* Scheduler::queue_tail = nullptr;

TCB* Scheduler::get()
{
    if (!queue_head) return TCB::createIdleThread();
    80002d5c:	00009517          	auipc	a0,0x9
    80002d60:	df453503          	ld	a0,-524(a0) # 8000bb50 <_ZN9Scheduler10queue_headE>
    80002d64:	00050c63          	beqz	a0,80002d7c <_ZN9Scheduler3getEv+0x20>
    TCB* tcb = queue_head;
    queue_head = queue_head->next;
    80002d68:	03853783          	ld	a5,56(a0)
    80002d6c:	00009717          	auipc	a4,0x9
    80002d70:	def73223          	sd	a5,-540(a4) # 8000bb50 <_ZN9Scheduler10queue_headE>
    tcb->next = nullptr;
    80002d74:	02053c23          	sd	zero,56(a0)
    return tcb;
}
    80002d78:	00008067          	ret
{
    80002d7c:	ff010113          	addi	sp,sp,-16
    80002d80:	00113423          	sd	ra,8(sp)
    80002d84:	00813023          	sd	s0,0(sp)
    80002d88:	01010413          	addi	s0,sp,16
    if (!queue_head) return TCB::createIdleThread();
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	e00080e7          	jalr	-512(ra) # 80002b8c <_ZN3TCB16createIdleThreadEv>
}
    80002d94:	00813083          	ld	ra,8(sp)
    80002d98:	00013403          	ld	s0,0(sp)
    80002d9c:	01010113          	addi	sp,sp,16
    80002da0:	00008067          	ret

0000000080002da4 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB* tcb)
{
    80002da4:	ff010113          	addi	sp,sp,-16
    80002da8:	00813423          	sd	s0,8(sp)
    80002dac:	01010413          	addi	s0,sp,16
    if (!queue_head)
    80002db0:	00009797          	auipc	a5,0x9
    80002db4:	da07b783          	ld	a5,-608(a5) # 8000bb50 <_ZN9Scheduler10queue_headE>
    80002db8:	02078263          	beqz	a5,80002ddc <_ZN9Scheduler3putEP3TCB+0x38>
        queue_head = tcb;
        queue_tail = tcb;
    }
    else
    {
        queue_tail->next = tcb;
    80002dbc:	00009797          	auipc	a5,0x9
    80002dc0:	d9478793          	addi	a5,a5,-620 # 8000bb50 <_ZN9Scheduler10queue_headE>
    80002dc4:	0087b703          	ld	a4,8(a5)
    80002dc8:	02a73c23          	sd	a0,56(a4)
        queue_tail = queue_tail->next;
    80002dcc:	00a7b423          	sd	a0,8(a5)
    }
}
    80002dd0:	00813403          	ld	s0,8(sp)
    80002dd4:	01010113          	addi	sp,sp,16
    80002dd8:	00008067          	ret
        queue_head = tcb;
    80002ddc:	00009797          	auipc	a5,0x9
    80002de0:	d7478793          	addi	a5,a5,-652 # 8000bb50 <_ZN9Scheduler10queue_headE>
    80002de4:	00a7b023          	sd	a0,0(a5)
        queue_tail = tcb;
    80002de8:	00a7b423          	sd	a0,8(a5)
    80002dec:	fe5ff06f          	j	80002dd0 <_ZN9Scheduler3putEP3TCB+0x2c>

0000000080002df0 <_ZN15MemoryAllocator7memInitEv>:
#include "../h/MemoryAllocator.hpp"

FreeMem* MemoryAllocator::fmem_head = nullptr;

void MemoryAllocator::memInit(){
    80002df0:	ff010113          	addi	sp,sp,-16
    80002df4:	00813423          	sd	s0,8(sp)
    80002df8:	01010413          	addi	s0,sp,16
    fmem_head = (FreeMem*) HEAP_START_ADDR;
    80002dfc:	00009797          	auipc	a5,0x9
    80002e00:	ca47b783          	ld	a5,-860(a5) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002e04:	0007b703          	ld	a4,0(a5)
    80002e08:	00009697          	auipc	a3,0x9
    80002e0c:	d6068693          	addi	a3,a3,-672 # 8000bb68 <_ZN15MemoryAllocator9fmem_headE>
    80002e10:	00e6b023          	sd	a4,0(a3)
    fmem_head->size = ((char*) HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    80002e14:	00009797          	auipc	a5,0x9
    80002e18:	cbc7b783          	ld	a5,-836(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002e1c:	0007b783          	ld	a5,0(a5)
    80002e20:	40e787b3          	sub	a5,a5,a4
    80002e24:	0067d793          	srli	a5,a5,0x6
    80002e28:	00f73823          	sd	a5,16(a4)
    fmem_head->next = nullptr;
    80002e2c:	00073023          	sd	zero,0(a4)
    fmem_head->prev = nullptr;
    80002e30:	0006b783          	ld	a5,0(a3)
    80002e34:	0007b423          	sd	zero,8(a5)
}
    80002e38:	00813403          	ld	s0,8(sp)
    80002e3c:	01010113          	addi	sp,sp,16
    80002e40:	00008067          	ret

0000000080002e44 <_ZN15MemoryAllocator9mem_allocEm>:

//mozda lose ako se zada tacno MEM_BLOCK_SIZE
void* MemoryAllocator::mem_alloc(size_t size){
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00813423          	sd	s0,8(sp)
    80002e4c:	01010413          	addi	s0,sp,16
    80002e50:	00050693          	mv	a3,a0

    size_t blcksSize = size; //ponovljeno zato sto sam prvo ovde konvertovao u blokove

    FreeMem* bestFit = nullptr;
    for (FreeMem* cur = MemoryAllocator::fmem_head; cur != nullptr; cur = cur->next)
    80002e54:	00009797          	auipc	a5,0x9
    80002e58:	d147b783          	ld	a5,-748(a5) # 8000bb68 <_ZN15MemoryAllocator9fmem_headE>
    FreeMem* bestFit = nullptr;
    80002e5c:	00000513          	li	a0,0
    80002e60:	00c0006f          	j	80002e6c <_ZN15MemoryAllocator9mem_allocEm+0x28>
    {
        if (cur->size < blcksSize) continue;
        if (bestFit == nullptr || bestFit->size > cur->size){
            bestFit = cur;
    80002e64:	00078513          	mv	a0,a5
    for (FreeMem* cur = MemoryAllocator::fmem_head; cur != nullptr; cur = cur->next)
    80002e68:	0007b783          	ld	a5,0(a5)
    80002e6c:	02078063          	beqz	a5,80002e8c <_ZN15MemoryAllocator9mem_allocEm+0x48>
        if (cur->size < blcksSize) continue;
    80002e70:	0107b703          	ld	a4,16(a5)
    80002e74:	fed76ae3          	bltu	a4,a3,80002e68 <_ZN15MemoryAllocator9mem_allocEm+0x24>
        if (bestFit == nullptr || bestFit->size > cur->size){
    80002e78:	fe0506e3          	beqz	a0,80002e64 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    80002e7c:	01053603          	ld	a2,16(a0)
    80002e80:	fec774e3          	bgeu	a4,a2,80002e68 <_ZN15MemoryAllocator9mem_allocEm+0x24>
            bestFit = cur;
    80002e84:	00078513          	mv	a0,a5
    80002e88:	fe1ff06f          	j	80002e68 <_ZN15MemoryAllocator9mem_allocEm+0x24>
        }
    }

    if (!bestFit) return nullptr;
    80002e8c:	04050863          	beqz	a0,80002edc <_ZN15MemoryAllocator9mem_allocEm+0x98>

    if (bestFit->size > blcksSize)
    80002e90:	01053703          	ld	a4,16(a0)
    80002e94:	06e6f063          	bgeu	a3,a4,80002ef4 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    {
        FreeMem* newSeg = (FreeMem*) ((char*) bestFit + blcksSize * MEM_BLOCK_SIZE);
    80002e98:	00669793          	slli	a5,a3,0x6
    80002e9c:	00f507b3          	add	a5,a0,a5
        newSeg->size = bestFit->size - blcksSize;
    80002ea0:	40d70733          	sub	a4,a4,a3
    80002ea4:	00e7b823          	sd	a4,16(a5)
        bestFit->size = blcksSize;
    80002ea8:	00d53823          	sd	a3,16(a0)

        newSeg->next = bestFit->next;
    80002eac:	00053703          	ld	a4,0(a0)
    80002eb0:	00e7b023          	sd	a4,0(a5)
        newSeg->prev = bestFit->prev;
    80002eb4:	00853703          	ld	a4,8(a0)
    80002eb8:	00e7b423          	sd	a4,8(a5)
        if (bestFit->prev) bestFit->prev->next = newSeg;
    80002ebc:	02070663          	beqz	a4,80002ee8 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
    80002ec0:	00f73023          	sd	a5,0(a4)
        else MemoryAllocator::fmem_head = newSeg;
        if (bestFit->next) bestFit->next->prev = newSeg;
    80002ec4:	00053703          	ld	a4,0(a0)
    80002ec8:	00070463          	beqz	a4,80002ed0 <_ZN15MemoryAllocator9mem_allocEm+0x8c>
    80002ecc:	00f73423          	sd	a5,8(a4)
        //     curUsed->next = cur;
        // }

    }

    bestFit->prev = nullptr;
    80002ed0:	00053423          	sd	zero,8(a0)
    bestFit->next = nullptr;
    80002ed4:	00053023          	sd	zero,0(a0)

    return (char*)bestFit + sizeof(FreeMem);
    80002ed8:	01850513          	addi	a0,a0,24
}
    80002edc:	00813403          	ld	s0,8(sp)
    80002ee0:	01010113          	addi	sp,sp,16
    80002ee4:	00008067          	ret
        else MemoryAllocator::fmem_head = newSeg;
    80002ee8:	00009717          	auipc	a4,0x9
    80002eec:	c8f73023          	sd	a5,-896(a4) # 8000bb68 <_ZN15MemoryAllocator9fmem_headE>
    80002ef0:	fd5ff06f          	j	80002ec4 <_ZN15MemoryAllocator9mem_allocEm+0x80>
        if (bestFit->prev) bestFit->prev->next = bestFit->next;
    80002ef4:	00853783          	ld	a5,8(a0)
    80002ef8:	02078063          	beqz	a5,80002f18 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    80002efc:	00053703          	ld	a4,0(a0)
    80002f00:	00e7b023          	sd	a4,0(a5)
        if (bestFit->next) bestFit->next->prev = bestFit->prev;
    80002f04:	00053783          	ld	a5,0(a0)
    80002f08:	fc0784e3          	beqz	a5,80002ed0 <_ZN15MemoryAllocator9mem_allocEm+0x8c>
    80002f0c:	00853703          	ld	a4,8(a0)
    80002f10:	00e7b423          	sd	a4,8(a5)
    80002f14:	fbdff06f          	j	80002ed0 <_ZN15MemoryAllocator9mem_allocEm+0x8c>
        else MemoryAllocator::fmem_head = bestFit->next;
    80002f18:	00053783          	ld	a5,0(a0)
    80002f1c:	00009717          	auipc	a4,0x9
    80002f20:	c4f73623          	sd	a5,-948(a4) # 8000bb68 <_ZN15MemoryAllocator9fmem_headE>
    80002f24:	fe1ff06f          	j	80002f04 <_ZN15MemoryAllocator9mem_allocEm+0xc0>

0000000080002f28 <_ZN15MemoryAllocator8mem_freeEPv>:


int MemoryAllocator::mem_free(void* ptr){
    80002f28:	ff010113          	addi	sp,sp,-16
    80002f2c:	00813423          	sd	s0,8(sp)
    80002f30:	01010413          	addi	s0,sp,16

    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -1;
    80002f34:	16050863          	beqz	a0,800030a4 <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    80002f38:	00009797          	auipc	a5,0x9
    80002f3c:	b687b783          	ld	a5,-1176(a5) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002f40:	0007b783          	ld	a5,0(a5)
    80002f44:	16f56463          	bltu	a0,a5,800030ac <_ZN15MemoryAllocator8mem_freeEPv+0x184>
    80002f48:	00009797          	auipc	a5,0x9
    80002f4c:	b887b783          	ld	a5,-1144(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002f50:	0007b783          	ld	a5,0(a5)
    80002f54:	16a7e063          	bltu	a5,a0,800030b4 <_ZN15MemoryAllocator8mem_freeEPv+0x18c>
    if ((uint64)ptr % MEM_BLOCK_SIZE == 0 ) return -2;
    80002f58:	03f57793          	andi	a5,a0,63
    80002f5c:	16078063          	beqz	a5,800030bc <_ZN15MemoryAllocator8mem_freeEPv+0x194>

    FreeMem* fptr = (FreeMem*) ((char*)ptr - sizeof(FreeMem)); // struct of memory segment
    80002f60:	fe850693          	addi	a3,a0,-24
    FreeMem* cur;
    if (!MemoryAllocator::fmem_head || fptr < MemoryAllocator::fmem_head)
    80002f64:	00009617          	auipc	a2,0x9
    80002f68:	c0463603          	ld	a2,-1020(a2) # 8000bb68 <_ZN15MemoryAllocator9fmem_headE>
    80002f6c:	06060a63          	beqz	a2,80002fe0 <_ZN15MemoryAllocator8mem_freeEPv+0xb8>
    80002f70:	06c6ec63          	bltu	a3,a2,80002fe8 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
    {
        cur = nullptr;
    }
    else
    {
        for (cur = MemoryAllocator::fmem_head; cur->next != nullptr && fptr > cur->next; cur = cur->next);
    80002f74:	00060793          	mv	a5,a2
    80002f78:	00078713          	mv	a4,a5
    80002f7c:	0007b783          	ld	a5,0(a5)
    80002f80:	00078463          	beqz	a5,80002f88 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    80002f84:	fed7eae3          	bltu	a5,a3,80002f78 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    }

    //Try appending it to the previous free segment cur
    if (cur && (char*)cur + cur->size * MEM_BLOCK_SIZE == (char*)fptr)
    80002f88:	06070263          	beqz	a4,80002fec <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    80002f8c:	01073803          	ld	a6,16(a4)
    80002f90:	00681593          	slli	a1,a6,0x6
    80002f94:	00b705b3          	add	a1,a4,a1
    80002f98:	04d59a63          	bne	a1,a3,80002fec <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    {
        cur->size += fptr->size;
    80002f9c:	ff853683          	ld	a3,-8(a0)
    80002fa0:	00d80833          	add	a6,a6,a3
    80002fa4:	01073823          	sd	a6,16(a4)
        //try to join it with the next free segment
        if (cur->next && (char*)cur+cur->size * MEM_BLOCK_SIZE == (char*)cur->next)
    80002fa8:	00078863          	beqz	a5,80002fb8 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80002fac:	00681693          	slli	a3,a6,0x6
    80002fb0:	00d706b3          	add	a3,a4,a3
    80002fb4:	00d78663          	beq	a5,a3,80002fc0 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
            //Remove cur->next from list
            cur->size += cur->next->size;
            cur->next = cur->next->next;
            if (cur->next) cur->next->prev = cur;
        }
        return 0;
    80002fb8:	00000513          	li	a0,0
    80002fbc:	0740006f          	j	80003030 <_ZN15MemoryAllocator8mem_freeEPv+0x108>
            cur->size += cur->next->size;
    80002fc0:	0107b683          	ld	a3,16(a5)
    80002fc4:	00d80833          	add	a6,a6,a3
    80002fc8:	01073823          	sd	a6,16(a4)
            cur->next = cur->next->next;
    80002fcc:	0007b783          	ld	a5,0(a5)
    80002fd0:	00f73023          	sd	a5,0(a4)
            if (cur->next) cur->next->prev = cur;
    80002fd4:	fe0782e3          	beqz	a5,80002fb8 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80002fd8:	00e7b423          	sd	a4,8(a5)
    80002fdc:	fddff06f          	j	80002fb8 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        cur = nullptr;
    80002fe0:	00060713          	mv	a4,a2
    80002fe4:	0080006f          	j	80002fec <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    80002fe8:	00000713          	li	a4,0
    }
    else
    {
        //Try appending it to the previous free segment cur
        FreeMem* nextSeg = cur?cur->next:MemoryAllocator::fmem_head;
    80002fec:	00070463          	beqz	a4,80002ff4 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002ff0:	00073603          	ld	a2,0(a4)
        if (nextSeg && (char*) fptr + fptr->size * MEM_BLOCK_SIZE == (char*) nextSeg){
    80002ff4:	00060a63          	beqz	a2,80003008 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
    80002ff8:	ff853583          	ld	a1,-8(a0)
    80002ffc:	00659793          	slli	a5,a1,0x6
    80003000:	00f687b3          	add	a5,a3,a5
    80003004:	02c78c63          	beq	a5,a2,8000303c <_ZN15MemoryAllocator8mem_freeEPv+0x114>
            return 0;
        }
        else
        {
            //no join insert new segment, insert fptr in free list
            fptr->prev = cur;
    80003008:	fee53823          	sd	a4,-16(a0)
            if (cur) fptr->next = cur->next;
    8000300c:	06070c63          	beqz	a4,80003084 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    80003010:	00073783          	ld	a5,0(a4)
    80003014:	fef53423          	sd	a5,-24(a0)
            else fptr->next = MemoryAllocator::fmem_head;
            if (fptr->next) fptr->next->prev = fptr;
    80003018:	fe853783          	ld	a5,-24(a0)
    8000301c:	00078463          	beqz	a5,80003024 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    80003020:	00d7b423          	sd	a3,8(a5)
            if (cur) cur->next = fptr;
    80003024:	06070863          	beqz	a4,80003094 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    80003028:	00d73023          	sd	a3,0(a4)
            else MemoryAllocator::fmem_head = fptr;
        }
    }
    return 0;
    8000302c:	00000513          	li	a0,0
}
    80003030:	00813403          	ld	s0,8(sp)
    80003034:	01010113          	addi	sp,sp,16
    80003038:	00008067          	ret
            fptr->size += nextSeg->size;
    8000303c:	01063783          	ld	a5,16(a2)
    80003040:	00f585b3          	add	a1,a1,a5
    80003044:	feb53c23          	sd	a1,-8(a0)
            fptr->next = nextSeg->next;
    80003048:	00063783          	ld	a5,0(a2)
    8000304c:	fef53423          	sd	a5,-24(a0)
            fptr->prev = nextSeg->prev;
    80003050:	00863783          	ld	a5,8(a2)
    80003054:	fef53823          	sd	a5,-16(a0)
            if (nextSeg->next) nextSeg->next->prev = fptr;
    80003058:	00063783          	ld	a5,0(a2)
    8000305c:	00078463          	beqz	a5,80003064 <_ZN15MemoryAllocator8mem_freeEPv+0x13c>
    80003060:	00d7b423          	sd	a3,8(a5)
            if (nextSeg->prev) nextSeg->prev->next = fptr;
    80003064:	00863783          	ld	a5,8(a2)
    80003068:	00078863          	beqz	a5,80003078 <_ZN15MemoryAllocator8mem_freeEPv+0x150>
    8000306c:	00d7b023          	sd	a3,0(a5)
            return 0;
    80003070:	00000513          	li	a0,0
    80003074:	fbdff06f          	j	80003030 <_ZN15MemoryAllocator8mem_freeEPv+0x108>
            else MemoryAllocator::fmem_head = fptr;
    80003078:	00009797          	auipc	a5,0x9
    8000307c:	aed7b823          	sd	a3,-1296(a5) # 8000bb68 <_ZN15MemoryAllocator9fmem_headE>
    80003080:	ff1ff06f          	j	80003070 <_ZN15MemoryAllocator8mem_freeEPv+0x148>
            else fptr->next = MemoryAllocator::fmem_head;
    80003084:	00009797          	auipc	a5,0x9
    80003088:	ae47b783          	ld	a5,-1308(a5) # 8000bb68 <_ZN15MemoryAllocator9fmem_headE>
    8000308c:	fef53423          	sd	a5,-24(a0)
    80003090:	f89ff06f          	j	80003018 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
            else MemoryAllocator::fmem_head = fptr;
    80003094:	00009797          	auipc	a5,0x9
    80003098:	acd7ba23          	sd	a3,-1324(a5) # 8000bb68 <_ZN15MemoryAllocator9fmem_headE>
    return 0;
    8000309c:	00000513          	li	a0,0
    800030a0:	f91ff06f          	j	80003030 <_ZN15MemoryAllocator8mem_freeEPv+0x108>
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -1;
    800030a4:	fff00513          	li	a0,-1
    800030a8:	f89ff06f          	j	80003030 <_ZN15MemoryAllocator8mem_freeEPv+0x108>
    800030ac:	fff00513          	li	a0,-1
    800030b0:	f81ff06f          	j	80003030 <_ZN15MemoryAllocator8mem_freeEPv+0x108>
    800030b4:	fff00513          	li	a0,-1
    800030b8:	f79ff06f          	j	80003030 <_ZN15MemoryAllocator8mem_freeEPv+0x108>
    if ((uint64)ptr % MEM_BLOCK_SIZE == 0 ) return -2;
    800030bc:	ffe00513          	li	a0,-2
    800030c0:	f71ff06f          	j	80003030 <_ZN15MemoryAllocator8mem_freeEPv+0x108>

00000000800030c4 <_Z12print_stringPKc>:
#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/ConsoleController.hpp"

void print_string(char const *string)
{
    800030c4:	fd010113          	addi	sp,sp,-48
    800030c8:	02113423          	sd	ra,40(sp)
    800030cc:	02813023          	sd	s0,32(sp)
    800030d0:	00913c23          	sd	s1,24(sp)
    800030d4:	01213823          	sd	s2,16(sp)
    800030d8:	03010413          	addi	s0,sp,48
    800030dc:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800030e0:	100027f3          	csrr	a5,sstatus
    800030e4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800030e8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800030ec:	00200793          	li	a5,2
    800030f0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800030f4:	0004c503          	lbu	a0,0(s1)
    800030f8:	00050a63          	beqz	a0,8000310c <_Z12print_stringPKc+0x48>
    {

        ConsoleController::putc(*string);
    800030fc:	fffff097          	auipc	ra,0xfffff
    80003100:	980080e7          	jalr	-1664(ra) # 80001a7c <_ZN17ConsoleController4putcEc>
        string++;
    80003104:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003108:	fedff06f          	j	800030f4 <_Z12print_stringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000310c:	0009091b          	sext.w	s2,s2
    80003110:	00297913          	andi	s2,s2,2
    80003114:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003118:	10092073          	csrs	sstatus,s2
}
    8000311c:	02813083          	ld	ra,40(sp)
    80003120:	02013403          	ld	s0,32(sp)
    80003124:	01813483          	ld	s1,24(sp)
    80003128:	01013903          	ld	s2,16(sp)
    8000312c:	03010113          	addi	sp,sp,48
    80003130:	00008067          	ret

0000000080003134 <_Z13print_integerm>:



void print_integer(uint64 integer)
{
    80003134:	fc010113          	addi	sp,sp,-64
    80003138:	02113c23          	sd	ra,56(sp)
    8000313c:	02813823          	sd	s0,48(sp)
    80003140:	02913423          	sd	s1,40(sp)
    80003144:	03213023          	sd	s2,32(sp)
    80003148:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000314c:	100027f3          	csrr	a5,sstatus
    80003150:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003154:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003158:	00200793          	li	a5,2
    8000315c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80003160:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80003164:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80003168:	00a00613          	li	a2,10
    8000316c:	02c5773b          	remuw	a4,a0,a2
    80003170:	02071693          	slli	a3,a4,0x20
    80003174:	0206d693          	srli	a3,a3,0x20
    80003178:	00006717          	auipc	a4,0x6
    8000317c:	ff070713          	addi	a4,a4,-16 # 80009168 <_ZZ13print_integermE6digits>
    80003180:	00d70733          	add	a4,a4,a3
    80003184:	00074703          	lbu	a4,0(a4)
    80003188:	fe040693          	addi	a3,s0,-32
    8000318c:	009687b3          	add	a5,a3,s1
    80003190:	0014849b          	addiw	s1,s1,1
    80003194:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80003198:	0005071b          	sext.w	a4,a0
    8000319c:	02c5553b          	divuw	a0,a0,a2
    800031a0:	00900793          	li	a5,9
    800031a4:	fce7e2e3          	bltu	a5,a4,80003168 <_Z13print_integerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { ConsoleController::putc(buf[i]); }
    800031a8:	fff4849b          	addiw	s1,s1,-1
    800031ac:	0004ce63          	bltz	s1,800031c8 <_Z13print_integerm+0x94>
    800031b0:	fe040793          	addi	a5,s0,-32
    800031b4:	009787b3          	add	a5,a5,s1
    800031b8:	ff07c503          	lbu	a0,-16(a5)
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	8c0080e7          	jalr	-1856(ra) # 80001a7c <_ZN17ConsoleController4putcEc>
    800031c4:	fe5ff06f          	j	800031a8 <_Z13print_integerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800031c8:	0009091b          	sext.w	s2,s2
    800031cc:	00297913          	andi	s2,s2,2
    800031d0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800031d4:	10092073          	csrs	sstatus,s2

}
    800031d8:	03813083          	ld	ra,56(sp)
    800031dc:	03013403          	ld	s0,48(sp)
    800031e0:	02813483          	ld	s1,40(sp)
    800031e4:	02013903          	ld	s2,32(sp)
    800031e8:	04010113          	addi	sp,sp,64
    800031ec:	00008067          	ret

00000000800031f0 <_Z17interruptPrintStrPKc>:


void interruptPrintStr(char const *string) {
    800031f0:	ff010113          	addi	sp,sp,-16
    800031f4:	00813423          	sd	s0,8(sp)
    800031f8:	01010413          	addi	s0,sp,16
    800031fc:	0180006f          	j	80003214 <_Z17interruptPrintStrPKc+0x24>
    while (*string != '\0') {
        while (!(*((char*)CONSOLE_STATUS) & (1 << 5))); // čekaj TXRDY
        *((char*)CONSOLE_TX_DATA) = *string;
    80003200:	00009797          	auipc	a5,0x9
    80003204:	8b07b783          	ld	a5,-1872(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003208:	0007b783          	ld	a5,0(a5)
    8000320c:	00e78023          	sb	a4,0(a5)
        string++;
    80003210:	00150513          	addi	a0,a0,1
    while (*string != '\0') {
    80003214:	00054703          	lbu	a4,0(a0)
    80003218:	02070063          	beqz	a4,80003238 <_Z17interruptPrintStrPKc+0x48>
        while (!(*((char*)CONSOLE_STATUS) & (1 << 5))); // čekaj TXRDY
    8000321c:	00009797          	auipc	a5,0x9
    80003220:	87c7b783          	ld	a5,-1924(a5) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003224:	0007b783          	ld	a5,0(a5)
    80003228:	0007c783          	lbu	a5,0(a5)
    8000322c:	0207f793          	andi	a5,a5,32
    80003230:	fe0786e3          	beqz	a5,8000321c <_Z17interruptPrintStrPKc+0x2c>
    80003234:	fcdff06f          	j	80003200 <_Z17interruptPrintStrPKc+0x10>
    }
}
    80003238:	00813403          	ld	s0,8(sp)
    8000323c:	01010113          	addi	sp,sp,16
    80003240:	00008067          	ret

0000000080003244 <_Z17interruptPrintIntm>:

void interruptPrintInt(uint64 integer)
{
    80003244:	fe010113          	addi	sp,sp,-32
    80003248:	00813c23          	sd	s0,24(sp)
    8000324c:	02010413          	addi	s0,sp,32
    static char digits[] = "0123456789";
    char buf[16];
    int i;
    uint x = integer;
    80003250:	0005069b          	sext.w	a3,a0

    i = 0;
    80003254:	00000713          	li	a4,0
    do {
        buf[i++] = digits[x % 10];
    80003258:	00a00513          	li	a0,10
    8000325c:	02a6f63b          	remuw	a2,a3,a0
    80003260:	02061593          	slli	a1,a2,0x20
    80003264:	0205d593          	srli	a1,a1,0x20
    80003268:	00006617          	auipc	a2,0x6
    8000326c:	f0060613          	addi	a2,a2,-256 # 80009168 <_ZZ13print_integermE6digits>
    80003270:	00b60633          	add	a2,a2,a1
    80003274:	01064603          	lbu	a2,16(a2)
    80003278:	ff040593          	addi	a1,s0,-16
    8000327c:	00e587b3          	add	a5,a1,a4
    80003280:	0017071b          	addiw	a4,a4,1
    80003284:	fec78823          	sb	a2,-16(a5)
    } while ((x /= 10) != 0);
    80003288:	0006861b          	sext.w	a2,a3
    8000328c:	02a6d6bb          	divuw	a3,a3,a0
    80003290:	00900793          	li	a5,9
    80003294:	fcc7e2e3          	bltu	a5,a2,80003258 <_Z17interruptPrintIntm+0x14>
    80003298:	0200006f          	j	800032b8 <_Z17interruptPrintIntm+0x74>

    while (--i >= 0) {
        while (!(*((char*)CONSOLE_STATUS) & (1 << 5))); // čekaj TXRDY
        *((char*)CONSOLE_TX_DATA) = buf[i];
    8000329c:	00009797          	auipc	a5,0x9
    800032a0:	8147b783          	ld	a5,-2028(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800032a4:	0007b783          	ld	a5,0(a5)
    800032a8:	ff040693          	addi	a3,s0,-16
    800032ac:	00e686b3          	add	a3,a3,a4
    800032b0:	ff06c683          	lbu	a3,-16(a3)
    800032b4:	00d78023          	sb	a3,0(a5)
    while (--i >= 0) {
    800032b8:	fff7071b          	addiw	a4,a4,-1
    800032bc:	02074063          	bltz	a4,800032dc <_Z17interruptPrintIntm+0x98>
        while (!(*((char*)CONSOLE_STATUS) & (1 << 5))); // čekaj TXRDY
    800032c0:	00008797          	auipc	a5,0x8
    800032c4:	7d87b783          	ld	a5,2008(a5) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x10>
    800032c8:	0007b783          	ld	a5,0(a5)
    800032cc:	0007c783          	lbu	a5,0(a5)
    800032d0:	0207f793          	andi	a5,a5,32
    800032d4:	fe0786e3          	beqz	a5,800032c0 <_Z17interruptPrintIntm+0x7c>
    800032d8:	fc5ff06f          	j	8000329c <_Z17interruptPrintIntm+0x58>
    }
}
    800032dc:	01813403          	ld	s0,24(sp)
    800032e0:	02010113          	addi	sp,sp,32
    800032e4:	00008067          	ret

00000000800032e8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800032e8:	fe010113          	addi	sp,sp,-32
    800032ec:	00113c23          	sd	ra,24(sp)
    800032f0:	00813823          	sd	s0,16(sp)
    800032f4:	00913423          	sd	s1,8(sp)
    800032f8:	01213023          	sd	s2,0(sp)
    800032fc:	02010413          	addi	s0,sp,32
    80003300:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003304:	00000913          	li	s2,0
    80003308:	00c0006f          	j	80003314 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000330c:	ffffe097          	auipc	ra,0xffffe
    80003310:	068080e7          	jalr	104(ra) # 80001374 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003314:	ffffe097          	auipc	ra,0xffffe
    80003318:	234080e7          	jalr	564(ra) # 80001548 <_Z4getcv>
    8000331c:	0005059b          	sext.w	a1,a0
    80003320:	01b00793          	li	a5,27
    80003324:	02f58a63          	beq	a1,a5,80003358 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003328:	0084b503          	ld	a0,8(s1)
    8000332c:	00003097          	auipc	ra,0x3
    80003330:	400080e7          	jalr	1024(ra) # 8000672c <_ZN6Buffer3putEi>
        i++;
    80003334:	0019071b          	addiw	a4,s2,1
    80003338:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000333c:	0004a683          	lw	a3,0(s1)
    80003340:	0026979b          	slliw	a5,a3,0x2
    80003344:	00d787bb          	addw	a5,a5,a3
    80003348:	0017979b          	slliw	a5,a5,0x1
    8000334c:	02f767bb          	remw	a5,a4,a5
    80003350:	fc0792e3          	bnez	a5,80003314 <_ZL16producerKeyboardPv+0x2c>
    80003354:	fb9ff06f          	j	8000330c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003358:	00100793          	li	a5,1
    8000335c:	00009717          	auipc	a4,0x9
    80003360:	80f72a23          	sw	a5,-2028(a4) # 8000bb70 <_ZL9threadEnd>
    data->buffer->put('!');
    80003364:	02100593          	li	a1,33
    80003368:	0084b503          	ld	a0,8(s1)
    8000336c:	00003097          	auipc	ra,0x3
    80003370:	3c0080e7          	jalr	960(ra) # 8000672c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003374:	0104b503          	ld	a0,16(s1)
    80003378:	ffffe097          	auipc	ra,0xffffe
    8000337c:	0d8080e7          	jalr	216(ra) # 80001450 <_Z10sem_signalP10_semaphore>
}
    80003380:	01813083          	ld	ra,24(sp)
    80003384:	01013403          	ld	s0,16(sp)
    80003388:	00813483          	ld	s1,8(sp)
    8000338c:	00013903          	ld	s2,0(sp)
    80003390:	02010113          	addi	sp,sp,32
    80003394:	00008067          	ret

0000000080003398 <_ZL8producerPv>:

static void producer(void *arg) {
    80003398:	fe010113          	addi	sp,sp,-32
    8000339c:	00113c23          	sd	ra,24(sp)
    800033a0:	00813823          	sd	s0,16(sp)
    800033a4:	00913423          	sd	s1,8(sp)
    800033a8:	01213023          	sd	s2,0(sp)
    800033ac:	02010413          	addi	s0,sp,32
    800033b0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800033b4:	00000913          	li	s2,0
    800033b8:	00c0006f          	j	800033c4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800033bc:	ffffe097          	auipc	ra,0xffffe
    800033c0:	fb8080e7          	jalr	-72(ra) # 80001374 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800033c4:	00008797          	auipc	a5,0x8
    800033c8:	7ac7a783          	lw	a5,1964(a5) # 8000bb70 <_ZL9threadEnd>
    800033cc:	02079e63          	bnez	a5,80003408 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800033d0:	0004a583          	lw	a1,0(s1)
    800033d4:	0305859b          	addiw	a1,a1,48
    800033d8:	0084b503          	ld	a0,8(s1)
    800033dc:	00003097          	auipc	ra,0x3
    800033e0:	350080e7          	jalr	848(ra) # 8000672c <_ZN6Buffer3putEi>
        i++;
    800033e4:	0019071b          	addiw	a4,s2,1
    800033e8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800033ec:	0004a683          	lw	a3,0(s1)
    800033f0:	0026979b          	slliw	a5,a3,0x2
    800033f4:	00d787bb          	addw	a5,a5,a3
    800033f8:	0017979b          	slliw	a5,a5,0x1
    800033fc:	02f767bb          	remw	a5,a4,a5
    80003400:	fc0792e3          	bnez	a5,800033c4 <_ZL8producerPv+0x2c>
    80003404:	fb9ff06f          	j	800033bc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003408:	0104b503          	ld	a0,16(s1)
    8000340c:	ffffe097          	auipc	ra,0xffffe
    80003410:	044080e7          	jalr	68(ra) # 80001450 <_Z10sem_signalP10_semaphore>
}
    80003414:	01813083          	ld	ra,24(sp)
    80003418:	01013403          	ld	s0,16(sp)
    8000341c:	00813483          	ld	s1,8(sp)
    80003420:	00013903          	ld	s2,0(sp)
    80003424:	02010113          	addi	sp,sp,32
    80003428:	00008067          	ret

000000008000342c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000342c:	fd010113          	addi	sp,sp,-48
    80003430:	02113423          	sd	ra,40(sp)
    80003434:	02813023          	sd	s0,32(sp)
    80003438:	00913c23          	sd	s1,24(sp)
    8000343c:	01213823          	sd	s2,16(sp)
    80003440:	01313423          	sd	s3,8(sp)
    80003444:	03010413          	addi	s0,sp,48
    80003448:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000344c:	00000993          	li	s3,0
    80003450:	01c0006f          	j	8000346c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	f20080e7          	jalr	-224(ra) # 80001374 <_Z15thread_dispatchv>
    8000345c:	0500006f          	j	800034ac <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003460:	00a00513          	li	a0,10
    80003464:	ffffe097          	auipc	ra,0xffffe
    80003468:	110080e7          	jalr	272(ra) # 80001574 <_Z4putcc>
    while (!threadEnd) {
    8000346c:	00008797          	auipc	a5,0x8
    80003470:	7047a783          	lw	a5,1796(a5) # 8000bb70 <_ZL9threadEnd>
    80003474:	06079063          	bnez	a5,800034d4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003478:	00893503          	ld	a0,8(s2)
    8000347c:	00003097          	auipc	ra,0x3
    80003480:	340080e7          	jalr	832(ra) # 800067bc <_ZN6Buffer3getEv>
        i++;
    80003484:	0019849b          	addiw	s1,s3,1
    80003488:	0004899b          	sext.w	s3,s1
        putc(key);
    8000348c:	0ff57513          	andi	a0,a0,255
    80003490:	ffffe097          	auipc	ra,0xffffe
    80003494:	0e4080e7          	jalr	228(ra) # 80001574 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003498:	00092703          	lw	a4,0(s2)
    8000349c:	0027179b          	slliw	a5,a4,0x2
    800034a0:	00e787bb          	addw	a5,a5,a4
    800034a4:	02f4e7bb          	remw	a5,s1,a5
    800034a8:	fa0786e3          	beqz	a5,80003454 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800034ac:	05000793          	li	a5,80
    800034b0:	02f4e4bb          	remw	s1,s1,a5
    800034b4:	fa049ce3          	bnez	s1,8000346c <_ZL8consumerPv+0x40>
    800034b8:	fa9ff06f          	j	80003460 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800034bc:	00893503          	ld	a0,8(s2)
    800034c0:	00003097          	auipc	ra,0x3
    800034c4:	2fc080e7          	jalr	764(ra) # 800067bc <_ZN6Buffer3getEv>
        putc(key);
    800034c8:	0ff57513          	andi	a0,a0,255
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	0a8080e7          	jalr	168(ra) # 80001574 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800034d4:	00893503          	ld	a0,8(s2)
    800034d8:	00003097          	auipc	ra,0x3
    800034dc:	370080e7          	jalr	880(ra) # 80006848 <_ZN6Buffer6getCntEv>
    800034e0:	fca04ee3          	bgtz	a0,800034bc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800034e4:	01093503          	ld	a0,16(s2)
    800034e8:	ffffe097          	auipc	ra,0xffffe
    800034ec:	f68080e7          	jalr	-152(ra) # 80001450 <_Z10sem_signalP10_semaphore>
}
    800034f0:	02813083          	ld	ra,40(sp)
    800034f4:	02013403          	ld	s0,32(sp)
    800034f8:	01813483          	ld	s1,24(sp)
    800034fc:	01013903          	ld	s2,16(sp)
    80003500:	00813983          	ld	s3,8(sp)
    80003504:	03010113          	addi	sp,sp,48
    80003508:	00008067          	ret

000000008000350c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000350c:	f9010113          	addi	sp,sp,-112
    80003510:	06113423          	sd	ra,104(sp)
    80003514:	06813023          	sd	s0,96(sp)
    80003518:	04913c23          	sd	s1,88(sp)
    8000351c:	05213823          	sd	s2,80(sp)
    80003520:	05313423          	sd	s3,72(sp)
    80003524:	05413023          	sd	s4,64(sp)
    80003528:	03513c23          	sd	s5,56(sp)
    8000352c:	03613823          	sd	s6,48(sp)
    80003530:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003534:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003538:	00006517          	auipc	a0,0x6
    8000353c:	c5050513          	addi	a0,a0,-944 # 80009188 <_ZZ17interruptPrintIntmE6digits+0x10>
    80003540:	00002097          	auipc	ra,0x2
    80003544:	220080e7          	jalr	544(ra) # 80005760 <_Z11printStringPKc>
    getString(input, 30);
    80003548:	01e00593          	li	a1,30
    8000354c:	fa040493          	addi	s1,s0,-96
    80003550:	00048513          	mv	a0,s1
    80003554:	00002097          	auipc	ra,0x2
    80003558:	294080e7          	jalr	660(ra) # 800057e8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000355c:	00048513          	mv	a0,s1
    80003560:	00002097          	auipc	ra,0x2
    80003564:	360080e7          	jalr	864(ra) # 800058c0 <_Z11stringToIntPKc>
    80003568:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000356c:	00006517          	auipc	a0,0x6
    80003570:	c3c50513          	addi	a0,a0,-964 # 800091a8 <_ZZ17interruptPrintIntmE6digits+0x30>
    80003574:	00002097          	auipc	ra,0x2
    80003578:	1ec080e7          	jalr	492(ra) # 80005760 <_Z11printStringPKc>
    getString(input, 30);
    8000357c:	01e00593          	li	a1,30
    80003580:	00048513          	mv	a0,s1
    80003584:	00002097          	auipc	ra,0x2
    80003588:	264080e7          	jalr	612(ra) # 800057e8 <_Z9getStringPci>
    n = stringToInt(input);
    8000358c:	00048513          	mv	a0,s1
    80003590:	00002097          	auipc	ra,0x2
    80003594:	330080e7          	jalr	816(ra) # 800058c0 <_Z11stringToIntPKc>
    80003598:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000359c:	00006517          	auipc	a0,0x6
    800035a0:	c2c50513          	addi	a0,a0,-980 # 800091c8 <_ZZ17interruptPrintIntmE6digits+0x50>
    800035a4:	00002097          	auipc	ra,0x2
    800035a8:	1bc080e7          	jalr	444(ra) # 80005760 <_Z11printStringPKc>
    800035ac:	00000613          	li	a2,0
    800035b0:	00a00593          	li	a1,10
    800035b4:	00090513          	mv	a0,s2
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	358080e7          	jalr	856(ra) # 80005910 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800035c0:	00006517          	auipc	a0,0x6
    800035c4:	c2050513          	addi	a0,a0,-992 # 800091e0 <_ZZ17interruptPrintIntmE6digits+0x68>
    800035c8:	00002097          	auipc	ra,0x2
    800035cc:	198080e7          	jalr	408(ra) # 80005760 <_Z11printStringPKc>
    800035d0:	00000613          	li	a2,0
    800035d4:	00a00593          	li	a1,10
    800035d8:	00048513          	mv	a0,s1
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	334080e7          	jalr	820(ra) # 80005910 <_Z8printIntiii>
    printString(".\n");
    800035e4:	00006517          	auipc	a0,0x6
    800035e8:	c1450513          	addi	a0,a0,-1004 # 800091f8 <_ZZ17interruptPrintIntmE6digits+0x80>
    800035ec:	00002097          	auipc	ra,0x2
    800035f0:	174080e7          	jalr	372(ra) # 80005760 <_Z11printStringPKc>
    if(threadNum > n) {
    800035f4:	0324c463          	blt	s1,s2,8000361c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800035f8:	03205c63          	blez	s2,80003630 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800035fc:	03800513          	li	a0,56
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	9e0080e7          	jalr	-1568(ra) # 80001fe0 <_Znwm>
    80003608:	00050a13          	mv	s4,a0
    8000360c:	00048593          	mv	a1,s1
    80003610:	00003097          	auipc	ra,0x3
    80003614:	080080e7          	jalr	128(ra) # 80006690 <_ZN6BufferC1Ei>
    80003618:	0300006f          	j	80003648 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000361c:	00006517          	auipc	a0,0x6
    80003620:	be450513          	addi	a0,a0,-1052 # 80009200 <_ZZ17interruptPrintIntmE6digits+0x88>
    80003624:	00002097          	auipc	ra,0x2
    80003628:	13c080e7          	jalr	316(ra) # 80005760 <_Z11printStringPKc>
        return;
    8000362c:	0140006f          	j	80003640 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003630:	00006517          	auipc	a0,0x6
    80003634:	c1050513          	addi	a0,a0,-1008 # 80009240 <_ZZ17interruptPrintIntmE6digits+0xc8>
    80003638:	00002097          	auipc	ra,0x2
    8000363c:	128080e7          	jalr	296(ra) # 80005760 <_Z11printStringPKc>
        return;
    80003640:	000b0113          	mv	sp,s6
    80003644:	1500006f          	j	80003794 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003648:	00000593          	li	a1,0
    8000364c:	00008517          	auipc	a0,0x8
    80003650:	52c50513          	addi	a0,a0,1324 # 8000bb78 <_ZL10waitForAll>
    80003654:	ffffe097          	auipc	ra,0xffffe
    80003658:	d44080e7          	jalr	-700(ra) # 80001398 <_Z8sem_openPP10_semaphorej>
    thread_t threads[threadNum];
    8000365c:	00391793          	slli	a5,s2,0x3
    80003660:	00f78793          	addi	a5,a5,15
    80003664:	ff07f793          	andi	a5,a5,-16
    80003668:	40f10133          	sub	sp,sp,a5
    8000366c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003670:	0019071b          	addiw	a4,s2,1
    80003674:	00171793          	slli	a5,a4,0x1
    80003678:	00e787b3          	add	a5,a5,a4
    8000367c:	00379793          	slli	a5,a5,0x3
    80003680:	00f78793          	addi	a5,a5,15
    80003684:	ff07f793          	andi	a5,a5,-16
    80003688:	40f10133          	sub	sp,sp,a5
    8000368c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003690:	00191613          	slli	a2,s2,0x1
    80003694:	012607b3          	add	a5,a2,s2
    80003698:	00379793          	slli	a5,a5,0x3
    8000369c:	00f987b3          	add	a5,s3,a5
    800036a0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800036a4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800036a8:	00008717          	auipc	a4,0x8
    800036ac:	4d073703          	ld	a4,1232(a4) # 8000bb78 <_ZL10waitForAll>
    800036b0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800036b4:	00078613          	mv	a2,a5
    800036b8:	00000597          	auipc	a1,0x0
    800036bc:	d7458593          	addi	a1,a1,-652 # 8000342c <_ZL8consumerPv>
    800036c0:	f9840513          	addi	a0,s0,-104
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	bf8080e7          	jalr	-1032(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800036cc:	00000493          	li	s1,0
    800036d0:	0280006f          	j	800036f8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800036d4:	00000597          	auipc	a1,0x0
    800036d8:	c1458593          	addi	a1,a1,-1004 # 800032e8 <_ZL16producerKeyboardPv>
                      data + i);
    800036dc:	00179613          	slli	a2,a5,0x1
    800036e0:	00f60633          	add	a2,a2,a5
    800036e4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800036e8:	00c98633          	add	a2,s3,a2
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	bd0080e7          	jalr	-1072(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800036f4:	0014849b          	addiw	s1,s1,1
    800036f8:	0524d263          	bge	s1,s2,8000373c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800036fc:	00149793          	slli	a5,s1,0x1
    80003700:	009787b3          	add	a5,a5,s1
    80003704:	00379793          	slli	a5,a5,0x3
    80003708:	00f987b3          	add	a5,s3,a5
    8000370c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003710:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003714:	00008717          	auipc	a4,0x8
    80003718:	46473703          	ld	a4,1124(a4) # 8000bb78 <_ZL10waitForAll>
    8000371c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003720:	00048793          	mv	a5,s1
    80003724:	00349513          	slli	a0,s1,0x3
    80003728:	00aa8533          	add	a0,s5,a0
    8000372c:	fa9054e3          	blez	s1,800036d4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003730:	00000597          	auipc	a1,0x0
    80003734:	c6858593          	addi	a1,a1,-920 # 80003398 <_ZL8producerPv>
    80003738:	fa5ff06f          	j	800036dc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	c38080e7          	jalr	-968(ra) # 80001374 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003744:	00000493          	li	s1,0
    80003748:	00994e63          	blt	s2,s1,80003764 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000374c:	00008517          	auipc	a0,0x8
    80003750:	42c53503          	ld	a0,1068(a0) # 8000bb78 <_ZL10waitForAll>
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	cc0080e7          	jalr	-832(ra) # 80001414 <_Z8sem_waitP10_semaphore>
    for (int i = 0; i <= threadNum; i++) {
    8000375c:	0014849b          	addiw	s1,s1,1
    80003760:	fe9ff06f          	j	80003748 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003764:	00008517          	auipc	a0,0x8
    80003768:	41453503          	ld	a0,1044(a0) # 8000bb78 <_ZL10waitForAll>
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	c6c080e7          	jalr	-916(ra) # 800013d8 <_Z9sem_closeP10_semaphore>
    delete buffer;
    80003774:	000a0e63          	beqz	s4,80003790 <_Z22producerConsumer_C_APIv+0x284>
    80003778:	000a0513          	mv	a0,s4
    8000377c:	00003097          	auipc	ra,0x3
    80003780:	154080e7          	jalr	340(ra) # 800068d0 <_ZN6BufferD1Ev>
    80003784:	000a0513          	mv	a0,s4
    80003788:	fffff097          	auipc	ra,0xfffff
    8000378c:	8a8080e7          	jalr	-1880(ra) # 80002030 <_ZdlPv>
    80003790:	000b0113          	mv	sp,s6

}
    80003794:	f9040113          	addi	sp,s0,-112
    80003798:	06813083          	ld	ra,104(sp)
    8000379c:	06013403          	ld	s0,96(sp)
    800037a0:	05813483          	ld	s1,88(sp)
    800037a4:	05013903          	ld	s2,80(sp)
    800037a8:	04813983          	ld	s3,72(sp)
    800037ac:	04013a03          	ld	s4,64(sp)
    800037b0:	03813a83          	ld	s5,56(sp)
    800037b4:	03013b03          	ld	s6,48(sp)
    800037b8:	07010113          	addi	sp,sp,112
    800037bc:	00008067          	ret
    800037c0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800037c4:	000a0513          	mv	a0,s4
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	868080e7          	jalr	-1944(ra) # 80002030 <_ZdlPv>
    800037d0:	00048513          	mv	a0,s1
    800037d4:	00009097          	auipc	ra,0x9
    800037d8:	4b4080e7          	jalr	1204(ra) # 8000cc88 <_Unwind_Resume>

00000000800037dc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800037dc:	fe010113          	addi	sp,sp,-32
    800037e0:	00113c23          	sd	ra,24(sp)
    800037e4:	00813823          	sd	s0,16(sp)
    800037e8:	00913423          	sd	s1,8(sp)
    800037ec:	01213023          	sd	s2,0(sp)
    800037f0:	02010413          	addi	s0,sp,32
    800037f4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800037f8:	00100793          	li	a5,1
    800037fc:	02a7f863          	bgeu	a5,a0,8000382c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003800:	00a00793          	li	a5,10
    80003804:	02f577b3          	remu	a5,a0,a5
    80003808:	02078e63          	beqz	a5,80003844 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000380c:	fff48513          	addi	a0,s1,-1
    80003810:	00000097          	auipc	ra,0x0
    80003814:	fcc080e7          	jalr	-52(ra) # 800037dc <_ZL9fibonaccim>
    80003818:	00050913          	mv	s2,a0
    8000381c:	ffe48513          	addi	a0,s1,-2
    80003820:	00000097          	auipc	ra,0x0
    80003824:	fbc080e7          	jalr	-68(ra) # 800037dc <_ZL9fibonaccim>
    80003828:	00a90533          	add	a0,s2,a0
}
    8000382c:	01813083          	ld	ra,24(sp)
    80003830:	01013403          	ld	s0,16(sp)
    80003834:	00813483          	ld	s1,8(sp)
    80003838:	00013903          	ld	s2,0(sp)
    8000383c:	02010113          	addi	sp,sp,32
    80003840:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	b30080e7          	jalr	-1232(ra) # 80001374 <_Z15thread_dispatchv>
    8000384c:	fc1ff06f          	j	8000380c <_ZL9fibonaccim+0x30>

0000000080003850 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003850:	fe010113          	addi	sp,sp,-32
    80003854:	00113c23          	sd	ra,24(sp)
    80003858:	00813823          	sd	s0,16(sp)
    8000385c:	00913423          	sd	s1,8(sp)
    80003860:	01213023          	sd	s2,0(sp)
    80003864:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003868:	00000913          	li	s2,0
    8000386c:	0380006f          	j	800038a4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	b04080e7          	jalr	-1276(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003878:	00148493          	addi	s1,s1,1
    8000387c:	000027b7          	lui	a5,0x2
    80003880:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003884:	0097ee63          	bltu	a5,s1,800038a0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003888:	00000713          	li	a4,0
    8000388c:	000077b7          	lui	a5,0x7
    80003890:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003894:	fce7eee3          	bltu	a5,a4,80003870 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003898:	00170713          	addi	a4,a4,1
    8000389c:	ff1ff06f          	j	8000388c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800038a0:	00190913          	addi	s2,s2,1
    800038a4:	00900793          	li	a5,9
    800038a8:	0527e063          	bltu	a5,s2,800038e8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800038ac:	00006517          	auipc	a0,0x6
    800038b0:	9c450513          	addi	a0,a0,-1596 # 80009270 <_ZZ17interruptPrintIntmE6digits+0xf8>
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	eac080e7          	jalr	-340(ra) # 80005760 <_Z11printStringPKc>
    800038bc:	00000613          	li	a2,0
    800038c0:	00a00593          	li	a1,10
    800038c4:	0009051b          	sext.w	a0,s2
    800038c8:	00002097          	auipc	ra,0x2
    800038cc:	048080e7          	jalr	72(ra) # 80005910 <_Z8printIntiii>
    800038d0:	00006517          	auipc	a0,0x6
    800038d4:	bf050513          	addi	a0,a0,-1040 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    800038d8:	00002097          	auipc	ra,0x2
    800038dc:	e88080e7          	jalr	-376(ra) # 80005760 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800038e0:	00000493          	li	s1,0
    800038e4:	f99ff06f          	j	8000387c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800038e8:	00006517          	auipc	a0,0x6
    800038ec:	99050513          	addi	a0,a0,-1648 # 80009278 <_ZZ17interruptPrintIntmE6digits+0x100>
    800038f0:	00002097          	auipc	ra,0x2
    800038f4:	e70080e7          	jalr	-400(ra) # 80005760 <_Z11printStringPKc>
    finishedA = true;
    800038f8:	00100793          	li	a5,1
    800038fc:	00008717          	auipc	a4,0x8
    80003900:	28f70223          	sb	a5,644(a4) # 8000bb80 <_ZL9finishedA>
}
    80003904:	01813083          	ld	ra,24(sp)
    80003908:	01013403          	ld	s0,16(sp)
    8000390c:	00813483          	ld	s1,8(sp)
    80003910:	00013903          	ld	s2,0(sp)
    80003914:	02010113          	addi	sp,sp,32
    80003918:	00008067          	ret

000000008000391c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000391c:	fe010113          	addi	sp,sp,-32
    80003920:	00113c23          	sd	ra,24(sp)
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	01213023          	sd	s2,0(sp)
    80003930:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003934:	00000913          	li	s2,0
    80003938:	0380006f          	j	80003970 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	a38080e7          	jalr	-1480(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003944:	00148493          	addi	s1,s1,1
    80003948:	000027b7          	lui	a5,0x2
    8000394c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003950:	0097ee63          	bltu	a5,s1,8000396c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003954:	00000713          	li	a4,0
    80003958:	000077b7          	lui	a5,0x7
    8000395c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003960:	fce7eee3          	bltu	a5,a4,8000393c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003964:	00170713          	addi	a4,a4,1
    80003968:	ff1ff06f          	j	80003958 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000396c:	00190913          	addi	s2,s2,1
    80003970:	00f00793          	li	a5,15
    80003974:	0527e063          	bltu	a5,s2,800039b4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003978:	00006517          	auipc	a0,0x6
    8000397c:	91050513          	addi	a0,a0,-1776 # 80009288 <_ZZ17interruptPrintIntmE6digits+0x110>
    80003980:	00002097          	auipc	ra,0x2
    80003984:	de0080e7          	jalr	-544(ra) # 80005760 <_Z11printStringPKc>
    80003988:	00000613          	li	a2,0
    8000398c:	00a00593          	li	a1,10
    80003990:	0009051b          	sext.w	a0,s2
    80003994:	00002097          	auipc	ra,0x2
    80003998:	f7c080e7          	jalr	-132(ra) # 80005910 <_Z8printIntiii>
    8000399c:	00006517          	auipc	a0,0x6
    800039a0:	b2450513          	addi	a0,a0,-1244 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    800039a4:	00002097          	auipc	ra,0x2
    800039a8:	dbc080e7          	jalr	-580(ra) # 80005760 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800039ac:	00000493          	li	s1,0
    800039b0:	f99ff06f          	j	80003948 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800039b4:	00006517          	auipc	a0,0x6
    800039b8:	8dc50513          	addi	a0,a0,-1828 # 80009290 <_ZZ17interruptPrintIntmE6digits+0x118>
    800039bc:	00002097          	auipc	ra,0x2
    800039c0:	da4080e7          	jalr	-604(ra) # 80005760 <_Z11printStringPKc>
    finishedB = true;
    800039c4:	00100793          	li	a5,1
    800039c8:	00008717          	auipc	a4,0x8
    800039cc:	1af70ca3          	sb	a5,441(a4) # 8000bb81 <_ZL9finishedB>
    thread_dispatch();
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	9a4080e7          	jalr	-1628(ra) # 80001374 <_Z15thread_dispatchv>
}
    800039d8:	01813083          	ld	ra,24(sp)
    800039dc:	01013403          	ld	s0,16(sp)
    800039e0:	00813483          	ld	s1,8(sp)
    800039e4:	00013903          	ld	s2,0(sp)
    800039e8:	02010113          	addi	sp,sp,32
    800039ec:	00008067          	ret

00000000800039f0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800039f0:	fe010113          	addi	sp,sp,-32
    800039f4:	00113c23          	sd	ra,24(sp)
    800039f8:	00813823          	sd	s0,16(sp)
    800039fc:	00913423          	sd	s1,8(sp)
    80003a00:	01213023          	sd	s2,0(sp)
    80003a04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003a08:	00000493          	li	s1,0
    80003a0c:	0400006f          	j	80003a4c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003a10:	00006517          	auipc	a0,0x6
    80003a14:	89050513          	addi	a0,a0,-1904 # 800092a0 <_ZZ17interruptPrintIntmE6digits+0x128>
    80003a18:	00002097          	auipc	ra,0x2
    80003a1c:	d48080e7          	jalr	-696(ra) # 80005760 <_Z11printStringPKc>
    80003a20:	00000613          	li	a2,0
    80003a24:	00a00593          	li	a1,10
    80003a28:	00048513          	mv	a0,s1
    80003a2c:	00002097          	auipc	ra,0x2
    80003a30:	ee4080e7          	jalr	-284(ra) # 80005910 <_Z8printIntiii>
    80003a34:	00006517          	auipc	a0,0x6
    80003a38:	a8c50513          	addi	a0,a0,-1396 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80003a3c:	00002097          	auipc	ra,0x2
    80003a40:	d24080e7          	jalr	-732(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003a44:	0014849b          	addiw	s1,s1,1
    80003a48:	0ff4f493          	andi	s1,s1,255
    80003a4c:	00200793          	li	a5,2
    80003a50:	fc97f0e3          	bgeu	a5,s1,80003a10 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003a54:	00006517          	auipc	a0,0x6
    80003a58:	85450513          	addi	a0,a0,-1964 # 800092a8 <_ZZ17interruptPrintIntmE6digits+0x130>
    80003a5c:	00002097          	auipc	ra,0x2
    80003a60:	d04080e7          	jalr	-764(ra) # 80005760 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003a64:	00700313          	li	t1,7
    thread_dispatch();
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	90c080e7          	jalr	-1780(ra) # 80001374 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003a70:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003a74:	00006517          	auipc	a0,0x6
    80003a78:	84450513          	addi	a0,a0,-1980 # 800092b8 <_ZZ17interruptPrintIntmE6digits+0x140>
    80003a7c:	00002097          	auipc	ra,0x2
    80003a80:	ce4080e7          	jalr	-796(ra) # 80005760 <_Z11printStringPKc>
    80003a84:	00000613          	li	a2,0
    80003a88:	00a00593          	li	a1,10
    80003a8c:	0009051b          	sext.w	a0,s2
    80003a90:	00002097          	auipc	ra,0x2
    80003a94:	e80080e7          	jalr	-384(ra) # 80005910 <_Z8printIntiii>
    80003a98:	00006517          	auipc	a0,0x6
    80003a9c:	a2850513          	addi	a0,a0,-1496 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80003aa0:	00002097          	auipc	ra,0x2
    80003aa4:	cc0080e7          	jalr	-832(ra) # 80005760 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003aa8:	00c00513          	li	a0,12
    80003aac:	00000097          	auipc	ra,0x0
    80003ab0:	d30080e7          	jalr	-720(ra) # 800037dc <_ZL9fibonaccim>
    80003ab4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ab8:	00006517          	auipc	a0,0x6
    80003abc:	80850513          	addi	a0,a0,-2040 # 800092c0 <_ZZ17interruptPrintIntmE6digits+0x148>
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	ca0080e7          	jalr	-864(ra) # 80005760 <_Z11printStringPKc>
    80003ac8:	00000613          	li	a2,0
    80003acc:	00a00593          	li	a1,10
    80003ad0:	0009051b          	sext.w	a0,s2
    80003ad4:	00002097          	auipc	ra,0x2
    80003ad8:	e3c080e7          	jalr	-452(ra) # 80005910 <_Z8printIntiii>
    80003adc:	00006517          	auipc	a0,0x6
    80003ae0:	9e450513          	addi	a0,a0,-1564 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80003ae4:	00002097          	auipc	ra,0x2
    80003ae8:	c7c080e7          	jalr	-900(ra) # 80005760 <_Z11printStringPKc>
    80003aec:	0400006f          	j	80003b2c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003af0:	00005517          	auipc	a0,0x5
    80003af4:	7b050513          	addi	a0,a0,1968 # 800092a0 <_ZZ17interruptPrintIntmE6digits+0x128>
    80003af8:	00002097          	auipc	ra,0x2
    80003afc:	c68080e7          	jalr	-920(ra) # 80005760 <_Z11printStringPKc>
    80003b00:	00000613          	li	a2,0
    80003b04:	00a00593          	li	a1,10
    80003b08:	00048513          	mv	a0,s1
    80003b0c:	00002097          	auipc	ra,0x2
    80003b10:	e04080e7          	jalr	-508(ra) # 80005910 <_Z8printIntiii>
    80003b14:	00006517          	auipc	a0,0x6
    80003b18:	9ac50513          	addi	a0,a0,-1620 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	c44080e7          	jalr	-956(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003b24:	0014849b          	addiw	s1,s1,1
    80003b28:	0ff4f493          	andi	s1,s1,255
    80003b2c:	00500793          	li	a5,5
    80003b30:	fc97f0e3          	bgeu	a5,s1,80003af0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003b34:	00005517          	auipc	a0,0x5
    80003b38:	74450513          	addi	a0,a0,1860 # 80009278 <_ZZ17interruptPrintIntmE6digits+0x100>
    80003b3c:	00002097          	auipc	ra,0x2
    80003b40:	c24080e7          	jalr	-988(ra) # 80005760 <_Z11printStringPKc>
    finishedC = true;
    80003b44:	00100793          	li	a5,1
    80003b48:	00008717          	auipc	a4,0x8
    80003b4c:	02f70d23          	sb	a5,58(a4) # 8000bb82 <_ZL9finishedC>
    thread_dispatch();
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	824080e7          	jalr	-2012(ra) # 80001374 <_Z15thread_dispatchv>
}
    80003b58:	01813083          	ld	ra,24(sp)
    80003b5c:	01013403          	ld	s0,16(sp)
    80003b60:	00813483          	ld	s1,8(sp)
    80003b64:	00013903          	ld	s2,0(sp)
    80003b68:	02010113          	addi	sp,sp,32
    80003b6c:	00008067          	ret

0000000080003b70 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003b70:	fe010113          	addi	sp,sp,-32
    80003b74:	00113c23          	sd	ra,24(sp)
    80003b78:	00813823          	sd	s0,16(sp)
    80003b7c:	00913423          	sd	s1,8(sp)
    80003b80:	01213023          	sd	s2,0(sp)
    80003b84:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003b88:	00a00493          	li	s1,10
    80003b8c:	0400006f          	j	80003bcc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b90:	00005517          	auipc	a0,0x5
    80003b94:	74050513          	addi	a0,a0,1856 # 800092d0 <_ZZ17interruptPrintIntmE6digits+0x158>
    80003b98:	00002097          	auipc	ra,0x2
    80003b9c:	bc8080e7          	jalr	-1080(ra) # 80005760 <_Z11printStringPKc>
    80003ba0:	00000613          	li	a2,0
    80003ba4:	00a00593          	li	a1,10
    80003ba8:	00048513          	mv	a0,s1
    80003bac:	00002097          	auipc	ra,0x2
    80003bb0:	d64080e7          	jalr	-668(ra) # 80005910 <_Z8printIntiii>
    80003bb4:	00006517          	auipc	a0,0x6
    80003bb8:	90c50513          	addi	a0,a0,-1780 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80003bbc:	00002097          	auipc	ra,0x2
    80003bc0:	ba4080e7          	jalr	-1116(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003bc4:	0014849b          	addiw	s1,s1,1
    80003bc8:	0ff4f493          	andi	s1,s1,255
    80003bcc:	00c00793          	li	a5,12
    80003bd0:	fc97f0e3          	bgeu	a5,s1,80003b90 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003bd4:	00005517          	auipc	a0,0x5
    80003bd8:	70450513          	addi	a0,a0,1796 # 800092d8 <_ZZ17interruptPrintIntmE6digits+0x160>
    80003bdc:	00002097          	auipc	ra,0x2
    80003be0:	b84080e7          	jalr	-1148(ra) # 80005760 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003be4:	00500313          	li	t1,5
    thread_dispatch();
    80003be8:	ffffd097          	auipc	ra,0xffffd
    80003bec:	78c080e7          	jalr	1932(ra) # 80001374 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003bf0:	01000513          	li	a0,16
    80003bf4:	00000097          	auipc	ra,0x0
    80003bf8:	be8080e7          	jalr	-1048(ra) # 800037dc <_ZL9fibonaccim>
    80003bfc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c00:	00005517          	auipc	a0,0x5
    80003c04:	6e850513          	addi	a0,a0,1768 # 800092e8 <_ZZ17interruptPrintIntmE6digits+0x170>
    80003c08:	00002097          	auipc	ra,0x2
    80003c0c:	b58080e7          	jalr	-1192(ra) # 80005760 <_Z11printStringPKc>
    80003c10:	00000613          	li	a2,0
    80003c14:	00a00593          	li	a1,10
    80003c18:	0009051b          	sext.w	a0,s2
    80003c1c:	00002097          	auipc	ra,0x2
    80003c20:	cf4080e7          	jalr	-780(ra) # 80005910 <_Z8printIntiii>
    80003c24:	00006517          	auipc	a0,0x6
    80003c28:	89c50513          	addi	a0,a0,-1892 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80003c2c:	00002097          	auipc	ra,0x2
    80003c30:	b34080e7          	jalr	-1228(ra) # 80005760 <_Z11printStringPKc>
    80003c34:	0400006f          	j	80003c74 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c38:	00005517          	auipc	a0,0x5
    80003c3c:	69850513          	addi	a0,a0,1688 # 800092d0 <_ZZ17interruptPrintIntmE6digits+0x158>
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	b20080e7          	jalr	-1248(ra) # 80005760 <_Z11printStringPKc>
    80003c48:	00000613          	li	a2,0
    80003c4c:	00a00593          	li	a1,10
    80003c50:	00048513          	mv	a0,s1
    80003c54:	00002097          	auipc	ra,0x2
    80003c58:	cbc080e7          	jalr	-836(ra) # 80005910 <_Z8printIntiii>
    80003c5c:	00006517          	auipc	a0,0x6
    80003c60:	86450513          	addi	a0,a0,-1948 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80003c64:	00002097          	auipc	ra,0x2
    80003c68:	afc080e7          	jalr	-1284(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c6c:	0014849b          	addiw	s1,s1,1
    80003c70:	0ff4f493          	andi	s1,s1,255
    80003c74:	00f00793          	li	a5,15
    80003c78:	fc97f0e3          	bgeu	a5,s1,80003c38 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003c7c:	00005517          	auipc	a0,0x5
    80003c80:	67c50513          	addi	a0,a0,1660 # 800092f8 <_ZZ17interruptPrintIntmE6digits+0x180>
    80003c84:	00002097          	auipc	ra,0x2
    80003c88:	adc080e7          	jalr	-1316(ra) # 80005760 <_Z11printStringPKc>
    finishedD = true;
    80003c8c:	00100793          	li	a5,1
    80003c90:	00008717          	auipc	a4,0x8
    80003c94:	eef709a3          	sb	a5,-269(a4) # 8000bb83 <_ZL9finishedD>
    thread_dispatch();
    80003c98:	ffffd097          	auipc	ra,0xffffd
    80003c9c:	6dc080e7          	jalr	1756(ra) # 80001374 <_Z15thread_dispatchv>
}
    80003ca0:	01813083          	ld	ra,24(sp)
    80003ca4:	01013403          	ld	s0,16(sp)
    80003ca8:	00813483          	ld	s1,8(sp)
    80003cac:	00013903          	ld	s2,0(sp)
    80003cb0:	02010113          	addi	sp,sp,32
    80003cb4:	00008067          	ret

0000000080003cb8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003cb8:	fc010113          	addi	sp,sp,-64
    80003cbc:	02113c23          	sd	ra,56(sp)
    80003cc0:	02813823          	sd	s0,48(sp)
    80003cc4:	02913423          	sd	s1,40(sp)
    80003cc8:	03213023          	sd	s2,32(sp)
    80003ccc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003cd0:	02000513          	li	a0,32
    80003cd4:	ffffe097          	auipc	ra,0xffffe
    80003cd8:	30c080e7          	jalr	780(ra) # 80001fe0 <_Znwm>
    80003cdc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	438080e7          	jalr	1080(ra) # 80002118 <_ZN6ThreadC1Ev>
    80003ce8:	00008797          	auipc	a5,0x8
    80003cec:	c0878793          	addi	a5,a5,-1016 # 8000b8f0 <_ZTV7WorkerA+0x10>
    80003cf0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003cf4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003cf8:	00005517          	auipc	a0,0x5
    80003cfc:	61050513          	addi	a0,a0,1552 # 80009308 <_ZZ17interruptPrintIntmE6digits+0x190>
    80003d00:	00002097          	auipc	ra,0x2
    80003d04:	a60080e7          	jalr	-1440(ra) # 80005760 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003d08:	02000513          	li	a0,32
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	2d4080e7          	jalr	724(ra) # 80001fe0 <_Znwm>
    80003d14:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	400080e7          	jalr	1024(ra) # 80002118 <_ZN6ThreadC1Ev>
    80003d20:	00008797          	auipc	a5,0x8
    80003d24:	bf878793          	addi	a5,a5,-1032 # 8000b918 <_ZTV7WorkerB+0x10>
    80003d28:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003d2c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003d30:	00005517          	auipc	a0,0x5
    80003d34:	5f050513          	addi	a0,a0,1520 # 80009320 <_ZZ17interruptPrintIntmE6digits+0x1a8>
    80003d38:	00002097          	auipc	ra,0x2
    80003d3c:	a28080e7          	jalr	-1496(ra) # 80005760 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003d40:	02000513          	li	a0,32
    80003d44:	ffffe097          	auipc	ra,0xffffe
    80003d48:	29c080e7          	jalr	668(ra) # 80001fe0 <_Znwm>
    80003d4c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	3c8080e7          	jalr	968(ra) # 80002118 <_ZN6ThreadC1Ev>
    80003d58:	00008797          	auipc	a5,0x8
    80003d5c:	be878793          	addi	a5,a5,-1048 # 8000b940 <_ZTV7WorkerC+0x10>
    80003d60:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003d64:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003d68:	00005517          	auipc	a0,0x5
    80003d6c:	5d050513          	addi	a0,a0,1488 # 80009338 <_ZZ17interruptPrintIntmE6digits+0x1c0>
    80003d70:	00002097          	auipc	ra,0x2
    80003d74:	9f0080e7          	jalr	-1552(ra) # 80005760 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003d78:	02000513          	li	a0,32
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	264080e7          	jalr	612(ra) # 80001fe0 <_Znwm>
    80003d84:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003d88:	ffffe097          	auipc	ra,0xffffe
    80003d8c:	390080e7          	jalr	912(ra) # 80002118 <_ZN6ThreadC1Ev>
    80003d90:	00008797          	auipc	a5,0x8
    80003d94:	bd878793          	addi	a5,a5,-1064 # 8000b968 <_ZTV7WorkerD+0x10>
    80003d98:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003d9c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003da0:	00005517          	auipc	a0,0x5
    80003da4:	5b050513          	addi	a0,a0,1456 # 80009350 <_ZZ17interruptPrintIntmE6digits+0x1d8>
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	9b8080e7          	jalr	-1608(ra) # 80005760 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003db0:	00000493          	li	s1,0
    80003db4:	00300793          	li	a5,3
    80003db8:	0297c663          	blt	a5,s1,80003de4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003dbc:	00349793          	slli	a5,s1,0x3
    80003dc0:	fe040713          	addi	a4,s0,-32
    80003dc4:	00f707b3          	add	a5,a4,a5
    80003dc8:	fe07b503          	ld	a0,-32(a5)
    80003dcc:	ffffe097          	auipc	ra,0xffffe
    80003dd0:	37c080e7          	jalr	892(ra) # 80002148 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003dd4:	0014849b          	addiw	s1,s1,1
    80003dd8:	fddff06f          	j	80003db4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003ddc:	ffffe097          	auipc	ra,0xffffe
    80003de0:	3c0080e7          	jalr	960(ra) # 8000219c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003de4:	00008797          	auipc	a5,0x8
    80003de8:	d9c7c783          	lbu	a5,-612(a5) # 8000bb80 <_ZL9finishedA>
    80003dec:	fe0788e3          	beqz	a5,80003ddc <_Z20Threads_CPP_API_testv+0x124>
    80003df0:	00008797          	auipc	a5,0x8
    80003df4:	d917c783          	lbu	a5,-623(a5) # 8000bb81 <_ZL9finishedB>
    80003df8:	fe0782e3          	beqz	a5,80003ddc <_Z20Threads_CPP_API_testv+0x124>
    80003dfc:	00008797          	auipc	a5,0x8
    80003e00:	d867c783          	lbu	a5,-634(a5) # 8000bb82 <_ZL9finishedC>
    80003e04:	fc078ce3          	beqz	a5,80003ddc <_Z20Threads_CPP_API_testv+0x124>
    80003e08:	00008797          	auipc	a5,0x8
    80003e0c:	d7b7c783          	lbu	a5,-645(a5) # 8000bb83 <_ZL9finishedD>
    80003e10:	fc0786e3          	beqz	a5,80003ddc <_Z20Threads_CPP_API_testv+0x124>
    80003e14:	fc040493          	addi	s1,s0,-64
    80003e18:	0080006f          	j	80003e20 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003e1c:	00848493          	addi	s1,s1,8
    80003e20:	fe040793          	addi	a5,s0,-32
    80003e24:	08f48663          	beq	s1,a5,80003eb0 <_Z20Threads_CPP_API_testv+0x1f8>
    80003e28:	0004b503          	ld	a0,0(s1)
    80003e2c:	fe0508e3          	beqz	a0,80003e1c <_Z20Threads_CPP_API_testv+0x164>
    80003e30:	00053783          	ld	a5,0(a0)
    80003e34:	0087b783          	ld	a5,8(a5)
    80003e38:	000780e7          	jalr	a5
    80003e3c:	fe1ff06f          	j	80003e1c <_Z20Threads_CPP_API_testv+0x164>
    80003e40:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003e44:	00048513          	mv	a0,s1
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	1e8080e7          	jalr	488(ra) # 80002030 <_ZdlPv>
    80003e50:	00090513          	mv	a0,s2
    80003e54:	00009097          	auipc	ra,0x9
    80003e58:	e34080e7          	jalr	-460(ra) # 8000cc88 <_Unwind_Resume>
    80003e5c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003e60:	00048513          	mv	a0,s1
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	1cc080e7          	jalr	460(ra) # 80002030 <_ZdlPv>
    80003e6c:	00090513          	mv	a0,s2
    80003e70:	00009097          	auipc	ra,0x9
    80003e74:	e18080e7          	jalr	-488(ra) # 8000cc88 <_Unwind_Resume>
    80003e78:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003e7c:	00048513          	mv	a0,s1
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	1b0080e7          	jalr	432(ra) # 80002030 <_ZdlPv>
    80003e88:	00090513          	mv	a0,s2
    80003e8c:	00009097          	auipc	ra,0x9
    80003e90:	dfc080e7          	jalr	-516(ra) # 8000cc88 <_Unwind_Resume>
    80003e94:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003e98:	00048513          	mv	a0,s1
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	194080e7          	jalr	404(ra) # 80002030 <_ZdlPv>
    80003ea4:	00090513          	mv	a0,s2
    80003ea8:	00009097          	auipc	ra,0x9
    80003eac:	de0080e7          	jalr	-544(ra) # 8000cc88 <_Unwind_Resume>
}
    80003eb0:	03813083          	ld	ra,56(sp)
    80003eb4:	03013403          	ld	s0,48(sp)
    80003eb8:	02813483          	ld	s1,40(sp)
    80003ebc:	02013903          	ld	s2,32(sp)
    80003ec0:	04010113          	addi	sp,sp,64
    80003ec4:	00008067          	ret

0000000080003ec8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003ec8:	ff010113          	addi	sp,sp,-16
    80003ecc:	00113423          	sd	ra,8(sp)
    80003ed0:	00813023          	sd	s0,0(sp)
    80003ed4:	01010413          	addi	s0,sp,16
    80003ed8:	00008797          	auipc	a5,0x8
    80003edc:	a1878793          	addi	a5,a5,-1512 # 8000b8f0 <_ZTV7WorkerA+0x10>
    80003ee0:	00f53023          	sd	a5,0(a0)
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	01c080e7          	jalr	28(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80003eec:	00813083          	ld	ra,8(sp)
    80003ef0:	00013403          	ld	s0,0(sp)
    80003ef4:	01010113          	addi	sp,sp,16
    80003ef8:	00008067          	ret

0000000080003efc <_ZN7WorkerAD0Ev>:
    80003efc:	fe010113          	addi	sp,sp,-32
    80003f00:	00113c23          	sd	ra,24(sp)
    80003f04:	00813823          	sd	s0,16(sp)
    80003f08:	00913423          	sd	s1,8(sp)
    80003f0c:	02010413          	addi	s0,sp,32
    80003f10:	00050493          	mv	s1,a0
    80003f14:	00008797          	auipc	a5,0x8
    80003f18:	9dc78793          	addi	a5,a5,-1572 # 8000b8f0 <_ZTV7WorkerA+0x10>
    80003f1c:	00f53023          	sd	a5,0(a0)
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	fe0080e7          	jalr	-32(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80003f28:	00048513          	mv	a0,s1
    80003f2c:	ffffe097          	auipc	ra,0xffffe
    80003f30:	104080e7          	jalr	260(ra) # 80002030 <_ZdlPv>
    80003f34:	01813083          	ld	ra,24(sp)
    80003f38:	01013403          	ld	s0,16(sp)
    80003f3c:	00813483          	ld	s1,8(sp)
    80003f40:	02010113          	addi	sp,sp,32
    80003f44:	00008067          	ret

0000000080003f48 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003f48:	ff010113          	addi	sp,sp,-16
    80003f4c:	00113423          	sd	ra,8(sp)
    80003f50:	00813023          	sd	s0,0(sp)
    80003f54:	01010413          	addi	s0,sp,16
    80003f58:	00008797          	auipc	a5,0x8
    80003f5c:	9c078793          	addi	a5,a5,-1600 # 8000b918 <_ZTV7WorkerB+0x10>
    80003f60:	00f53023          	sd	a5,0(a0)
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	f9c080e7          	jalr	-100(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80003f6c:	00813083          	ld	ra,8(sp)
    80003f70:	00013403          	ld	s0,0(sp)
    80003f74:	01010113          	addi	sp,sp,16
    80003f78:	00008067          	ret

0000000080003f7c <_ZN7WorkerBD0Ev>:
    80003f7c:	fe010113          	addi	sp,sp,-32
    80003f80:	00113c23          	sd	ra,24(sp)
    80003f84:	00813823          	sd	s0,16(sp)
    80003f88:	00913423          	sd	s1,8(sp)
    80003f8c:	02010413          	addi	s0,sp,32
    80003f90:	00050493          	mv	s1,a0
    80003f94:	00008797          	auipc	a5,0x8
    80003f98:	98478793          	addi	a5,a5,-1660 # 8000b918 <_ZTV7WorkerB+0x10>
    80003f9c:	00f53023          	sd	a5,0(a0)
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	f60080e7          	jalr	-160(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80003fa8:	00048513          	mv	a0,s1
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	084080e7          	jalr	132(ra) # 80002030 <_ZdlPv>
    80003fb4:	01813083          	ld	ra,24(sp)
    80003fb8:	01013403          	ld	s0,16(sp)
    80003fbc:	00813483          	ld	s1,8(sp)
    80003fc0:	02010113          	addi	sp,sp,32
    80003fc4:	00008067          	ret

0000000080003fc8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003fc8:	ff010113          	addi	sp,sp,-16
    80003fcc:	00113423          	sd	ra,8(sp)
    80003fd0:	00813023          	sd	s0,0(sp)
    80003fd4:	01010413          	addi	s0,sp,16
    80003fd8:	00008797          	auipc	a5,0x8
    80003fdc:	96878793          	addi	a5,a5,-1688 # 8000b940 <_ZTV7WorkerC+0x10>
    80003fe0:	00f53023          	sd	a5,0(a0)
    80003fe4:	ffffe097          	auipc	ra,0xffffe
    80003fe8:	f1c080e7          	jalr	-228(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80003fec:	00813083          	ld	ra,8(sp)
    80003ff0:	00013403          	ld	s0,0(sp)
    80003ff4:	01010113          	addi	sp,sp,16
    80003ff8:	00008067          	ret

0000000080003ffc <_ZN7WorkerCD0Ev>:
    80003ffc:	fe010113          	addi	sp,sp,-32
    80004000:	00113c23          	sd	ra,24(sp)
    80004004:	00813823          	sd	s0,16(sp)
    80004008:	00913423          	sd	s1,8(sp)
    8000400c:	02010413          	addi	s0,sp,32
    80004010:	00050493          	mv	s1,a0
    80004014:	00008797          	auipc	a5,0x8
    80004018:	92c78793          	addi	a5,a5,-1748 # 8000b940 <_ZTV7WorkerC+0x10>
    8000401c:	00f53023          	sd	a5,0(a0)
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	ee0080e7          	jalr	-288(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80004028:	00048513          	mv	a0,s1
    8000402c:	ffffe097          	auipc	ra,0xffffe
    80004030:	004080e7          	jalr	4(ra) # 80002030 <_ZdlPv>
    80004034:	01813083          	ld	ra,24(sp)
    80004038:	01013403          	ld	s0,16(sp)
    8000403c:	00813483          	ld	s1,8(sp)
    80004040:	02010113          	addi	sp,sp,32
    80004044:	00008067          	ret

0000000080004048 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004048:	ff010113          	addi	sp,sp,-16
    8000404c:	00113423          	sd	ra,8(sp)
    80004050:	00813023          	sd	s0,0(sp)
    80004054:	01010413          	addi	s0,sp,16
    80004058:	00008797          	auipc	a5,0x8
    8000405c:	91078793          	addi	a5,a5,-1776 # 8000b968 <_ZTV7WorkerD+0x10>
    80004060:	00f53023          	sd	a5,0(a0)
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	e9c080e7          	jalr	-356(ra) # 80001f00 <_ZN6ThreadD1Ev>
    8000406c:	00813083          	ld	ra,8(sp)
    80004070:	00013403          	ld	s0,0(sp)
    80004074:	01010113          	addi	sp,sp,16
    80004078:	00008067          	ret

000000008000407c <_ZN7WorkerDD0Ev>:
    8000407c:	fe010113          	addi	sp,sp,-32
    80004080:	00113c23          	sd	ra,24(sp)
    80004084:	00813823          	sd	s0,16(sp)
    80004088:	00913423          	sd	s1,8(sp)
    8000408c:	02010413          	addi	s0,sp,32
    80004090:	00050493          	mv	s1,a0
    80004094:	00008797          	auipc	a5,0x8
    80004098:	8d478793          	addi	a5,a5,-1836 # 8000b968 <_ZTV7WorkerD+0x10>
    8000409c:	00f53023          	sd	a5,0(a0)
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	e60080e7          	jalr	-416(ra) # 80001f00 <_ZN6ThreadD1Ev>
    800040a8:	00048513          	mv	a0,s1
    800040ac:	ffffe097          	auipc	ra,0xffffe
    800040b0:	f84080e7          	jalr	-124(ra) # 80002030 <_ZdlPv>
    800040b4:	01813083          	ld	ra,24(sp)
    800040b8:	01013403          	ld	s0,16(sp)
    800040bc:	00813483          	ld	s1,8(sp)
    800040c0:	02010113          	addi	sp,sp,32
    800040c4:	00008067          	ret

00000000800040c8 <_ZN7WorkerA3runEv>:
    void run() override {
    800040c8:	ff010113          	addi	sp,sp,-16
    800040cc:	00113423          	sd	ra,8(sp)
    800040d0:	00813023          	sd	s0,0(sp)
    800040d4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800040d8:	00000593          	li	a1,0
    800040dc:	fffff097          	auipc	ra,0xfffff
    800040e0:	774080e7          	jalr	1908(ra) # 80003850 <_ZN7WorkerA11workerBodyAEPv>
    }
    800040e4:	00813083          	ld	ra,8(sp)
    800040e8:	00013403          	ld	s0,0(sp)
    800040ec:	01010113          	addi	sp,sp,16
    800040f0:	00008067          	ret

00000000800040f4 <_ZN7WorkerB3runEv>:
    void run() override {
    800040f4:	ff010113          	addi	sp,sp,-16
    800040f8:	00113423          	sd	ra,8(sp)
    800040fc:	00813023          	sd	s0,0(sp)
    80004100:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004104:	00000593          	li	a1,0
    80004108:	00000097          	auipc	ra,0x0
    8000410c:	814080e7          	jalr	-2028(ra) # 8000391c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004110:	00813083          	ld	ra,8(sp)
    80004114:	00013403          	ld	s0,0(sp)
    80004118:	01010113          	addi	sp,sp,16
    8000411c:	00008067          	ret

0000000080004120 <_ZN7WorkerC3runEv>:
    void run() override {
    80004120:	ff010113          	addi	sp,sp,-16
    80004124:	00113423          	sd	ra,8(sp)
    80004128:	00813023          	sd	s0,0(sp)
    8000412c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004130:	00000593          	li	a1,0
    80004134:	00000097          	auipc	ra,0x0
    80004138:	8bc080e7          	jalr	-1860(ra) # 800039f0 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000413c:	00813083          	ld	ra,8(sp)
    80004140:	00013403          	ld	s0,0(sp)
    80004144:	01010113          	addi	sp,sp,16
    80004148:	00008067          	ret

000000008000414c <_ZN7WorkerD3runEv>:
    void run() override {
    8000414c:	ff010113          	addi	sp,sp,-16
    80004150:	00113423          	sd	ra,8(sp)
    80004154:	00813023          	sd	s0,0(sp)
    80004158:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000415c:	00000593          	li	a1,0
    80004160:	00000097          	auipc	ra,0x0
    80004164:	a10080e7          	jalr	-1520(ra) # 80003b70 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004168:	00813083          	ld	ra,8(sp)
    8000416c:	00013403          	ld	s0,0(sp)
    80004170:	01010113          	addi	sp,sp,16
    80004174:	00008067          	ret

0000000080004178 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004178:	f8010113          	addi	sp,sp,-128
    8000417c:	06113c23          	sd	ra,120(sp)
    80004180:	06813823          	sd	s0,112(sp)
    80004184:	06913423          	sd	s1,104(sp)
    80004188:	07213023          	sd	s2,96(sp)
    8000418c:	05313c23          	sd	s3,88(sp)
    80004190:	05413823          	sd	s4,80(sp)
    80004194:	05513423          	sd	s5,72(sp)
    80004198:	05613023          	sd	s6,64(sp)
    8000419c:	03713c23          	sd	s7,56(sp)
    800041a0:	03813823          	sd	s8,48(sp)
    800041a4:	03913423          	sd	s9,40(sp)
    800041a8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800041ac:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800041b0:	00005517          	auipc	a0,0x5
    800041b4:	fd850513          	addi	a0,a0,-40 # 80009188 <_ZZ17interruptPrintIntmE6digits+0x10>
    800041b8:	00001097          	auipc	ra,0x1
    800041bc:	5a8080e7          	jalr	1448(ra) # 80005760 <_Z11printStringPKc>
    getString(input, 30);
    800041c0:	01e00593          	li	a1,30
    800041c4:	f8040493          	addi	s1,s0,-128
    800041c8:	00048513          	mv	a0,s1
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	61c080e7          	jalr	1564(ra) # 800057e8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800041d4:	00048513          	mv	a0,s1
    800041d8:	00001097          	auipc	ra,0x1
    800041dc:	6e8080e7          	jalr	1768(ra) # 800058c0 <_Z11stringToIntPKc>
    800041e0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800041e4:	00005517          	auipc	a0,0x5
    800041e8:	fc450513          	addi	a0,a0,-60 # 800091a8 <_ZZ17interruptPrintIntmE6digits+0x30>
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	574080e7          	jalr	1396(ra) # 80005760 <_Z11printStringPKc>
    getString(input, 30);
    800041f4:	01e00593          	li	a1,30
    800041f8:	00048513          	mv	a0,s1
    800041fc:	00001097          	auipc	ra,0x1
    80004200:	5ec080e7          	jalr	1516(ra) # 800057e8 <_Z9getStringPci>
    n = stringToInt(input);
    80004204:	00048513          	mv	a0,s1
    80004208:	00001097          	auipc	ra,0x1
    8000420c:	6b8080e7          	jalr	1720(ra) # 800058c0 <_Z11stringToIntPKc>
    80004210:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004214:	00005517          	auipc	a0,0x5
    80004218:	fb450513          	addi	a0,a0,-76 # 800091c8 <_ZZ17interruptPrintIntmE6digits+0x50>
    8000421c:	00001097          	auipc	ra,0x1
    80004220:	544080e7          	jalr	1348(ra) # 80005760 <_Z11printStringPKc>
    printInt(threadNum);
    80004224:	00000613          	li	a2,0
    80004228:	00a00593          	li	a1,10
    8000422c:	00098513          	mv	a0,s3
    80004230:	00001097          	auipc	ra,0x1
    80004234:	6e0080e7          	jalr	1760(ra) # 80005910 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004238:	00005517          	auipc	a0,0x5
    8000423c:	fa850513          	addi	a0,a0,-88 # 800091e0 <_ZZ17interruptPrintIntmE6digits+0x68>
    80004240:	00001097          	auipc	ra,0x1
    80004244:	520080e7          	jalr	1312(ra) # 80005760 <_Z11printStringPKc>
    printInt(n);
    80004248:	00000613          	li	a2,0
    8000424c:	00a00593          	li	a1,10
    80004250:	00048513          	mv	a0,s1
    80004254:	00001097          	auipc	ra,0x1
    80004258:	6bc080e7          	jalr	1724(ra) # 80005910 <_Z8printIntiii>
    printString(".\n");
    8000425c:	00005517          	auipc	a0,0x5
    80004260:	f9c50513          	addi	a0,a0,-100 # 800091f8 <_ZZ17interruptPrintIntmE6digits+0x80>
    80004264:	00001097          	auipc	ra,0x1
    80004268:	4fc080e7          	jalr	1276(ra) # 80005760 <_Z11printStringPKc>
    if (threadNum > n) {
    8000426c:	0334c463          	blt	s1,s3,80004294 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004270:	03305c63          	blez	s3,800042a8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004274:	03800513          	li	a0,56
    80004278:	ffffe097          	auipc	ra,0xffffe
    8000427c:	d68080e7          	jalr	-664(ra) # 80001fe0 <_Znwm>
    80004280:	00050a93          	mv	s5,a0
    80004284:	00048593          	mv	a1,s1
    80004288:	00001097          	auipc	ra,0x1
    8000428c:	7a8080e7          	jalr	1960(ra) # 80005a30 <_ZN9BufferCPPC1Ei>
    80004290:	0300006f          	j	800042c0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004294:	00005517          	auipc	a0,0x5
    80004298:	f6c50513          	addi	a0,a0,-148 # 80009200 <_ZZ17interruptPrintIntmE6digits+0x88>
    8000429c:	00001097          	auipc	ra,0x1
    800042a0:	4c4080e7          	jalr	1220(ra) # 80005760 <_Z11printStringPKc>
        return;
    800042a4:	0140006f          	j	800042b8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800042a8:	00005517          	auipc	a0,0x5
    800042ac:	f9850513          	addi	a0,a0,-104 # 80009240 <_ZZ17interruptPrintIntmE6digits+0xc8>
    800042b0:	00001097          	auipc	ra,0x1
    800042b4:	4b0080e7          	jalr	1200(ra) # 80005760 <_Z11printStringPKc>
        return;
    800042b8:	000c0113          	mv	sp,s8
    800042bc:	2140006f          	j	800044d0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800042c0:	01000513          	li	a0,16
    800042c4:	ffffe097          	auipc	ra,0xffffe
    800042c8:	d1c080e7          	jalr	-740(ra) # 80001fe0 <_Znwm>
    800042cc:	00050913          	mv	s2,a0
    800042d0:	00000593          	li	a1,0
    800042d4:	ffffe097          	auipc	ra,0xffffe
    800042d8:	f18080e7          	jalr	-232(ra) # 800021ec <_ZN9SemaphoreC1Ej>
    800042dc:	00008797          	auipc	a5,0x8
    800042e0:	8b27ba23          	sd	s2,-1868(a5) # 8000bb90 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800042e4:	00399793          	slli	a5,s3,0x3
    800042e8:	00f78793          	addi	a5,a5,15
    800042ec:	ff07f793          	andi	a5,a5,-16
    800042f0:	40f10133          	sub	sp,sp,a5
    800042f4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800042f8:	0019871b          	addiw	a4,s3,1
    800042fc:	00171793          	slli	a5,a4,0x1
    80004300:	00e787b3          	add	a5,a5,a4
    80004304:	00379793          	slli	a5,a5,0x3
    80004308:	00f78793          	addi	a5,a5,15
    8000430c:	ff07f793          	andi	a5,a5,-16
    80004310:	40f10133          	sub	sp,sp,a5
    80004314:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004318:	00199493          	slli	s1,s3,0x1
    8000431c:	013484b3          	add	s1,s1,s3
    80004320:	00349493          	slli	s1,s1,0x3
    80004324:	009b04b3          	add	s1,s6,s1
    80004328:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000432c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004330:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004334:	02800513          	li	a0,40
    80004338:	ffffe097          	auipc	ra,0xffffe
    8000433c:	ca8080e7          	jalr	-856(ra) # 80001fe0 <_Znwm>
    80004340:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004344:	ffffe097          	auipc	ra,0xffffe
    80004348:	dd4080e7          	jalr	-556(ra) # 80002118 <_ZN6ThreadC1Ev>
    8000434c:	00007797          	auipc	a5,0x7
    80004350:	69478793          	addi	a5,a5,1684 # 8000b9e0 <_ZTV8Consumer+0x10>
    80004354:	00fbb023          	sd	a5,0(s7)
    80004358:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000435c:	000b8513          	mv	a0,s7
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	de8080e7          	jalr	-536(ra) # 80002148 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004368:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000436c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004370:	00008797          	auipc	a5,0x8
    80004374:	8207b783          	ld	a5,-2016(a5) # 8000bb90 <_ZL10waitForAll>
    80004378:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000437c:	02800513          	li	a0,40
    80004380:	ffffe097          	auipc	ra,0xffffe
    80004384:	c60080e7          	jalr	-928(ra) # 80001fe0 <_Znwm>
    80004388:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	d8c080e7          	jalr	-628(ra) # 80002118 <_ZN6ThreadC1Ev>
    80004394:	00007797          	auipc	a5,0x7
    80004398:	5fc78793          	addi	a5,a5,1532 # 8000b990 <_ZTV16ProducerKeyborad+0x10>
    8000439c:	00f4b023          	sd	a5,0(s1)
    800043a0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800043a4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800043a8:	00048513          	mv	a0,s1
    800043ac:	ffffe097          	auipc	ra,0xffffe
    800043b0:	d9c080e7          	jalr	-612(ra) # 80002148 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800043b4:	00100913          	li	s2,1
    800043b8:	0300006f          	j	800043e8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800043bc:	00007797          	auipc	a5,0x7
    800043c0:	5fc78793          	addi	a5,a5,1532 # 8000b9b8 <_ZTV8Producer+0x10>
    800043c4:	00fcb023          	sd	a5,0(s9)
    800043c8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800043cc:	00391793          	slli	a5,s2,0x3
    800043d0:	00fa07b3          	add	a5,s4,a5
    800043d4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800043d8:	000c8513          	mv	a0,s9
    800043dc:	ffffe097          	auipc	ra,0xffffe
    800043e0:	d6c080e7          	jalr	-660(ra) # 80002148 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800043e4:	0019091b          	addiw	s2,s2,1
    800043e8:	05395263          	bge	s2,s3,8000442c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800043ec:	00191493          	slli	s1,s2,0x1
    800043f0:	012484b3          	add	s1,s1,s2
    800043f4:	00349493          	slli	s1,s1,0x3
    800043f8:	009b04b3          	add	s1,s6,s1
    800043fc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004400:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004404:	00007797          	auipc	a5,0x7
    80004408:	78c7b783          	ld	a5,1932(a5) # 8000bb90 <_ZL10waitForAll>
    8000440c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004410:	02800513          	li	a0,40
    80004414:	ffffe097          	auipc	ra,0xffffe
    80004418:	bcc080e7          	jalr	-1076(ra) # 80001fe0 <_Znwm>
    8000441c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004420:	ffffe097          	auipc	ra,0xffffe
    80004424:	cf8080e7          	jalr	-776(ra) # 80002118 <_ZN6ThreadC1Ev>
    80004428:	f95ff06f          	j	800043bc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000442c:	ffffe097          	auipc	ra,0xffffe
    80004430:	d70080e7          	jalr	-656(ra) # 8000219c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004434:	00000493          	li	s1,0
    80004438:	0099ce63          	blt	s3,s1,80004454 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000443c:	00007517          	auipc	a0,0x7
    80004440:	75453503          	ld	a0,1876(a0) # 8000bb90 <_ZL10waitForAll>
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	de0080e7          	jalr	-544(ra) # 80002224 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000444c:	0014849b          	addiw	s1,s1,1
    80004450:	fe9ff06f          	j	80004438 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004454:	00007517          	auipc	a0,0x7
    80004458:	73c53503          	ld	a0,1852(a0) # 8000bb90 <_ZL10waitForAll>
    8000445c:	00050863          	beqz	a0,8000446c <_Z20testConsumerProducerv+0x2f4>
    80004460:	00053783          	ld	a5,0(a0)
    80004464:	0087b783          	ld	a5,8(a5)
    80004468:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000446c:	00000493          	li	s1,0
    80004470:	0080006f          	j	80004478 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004474:	0014849b          	addiw	s1,s1,1
    80004478:	0334d263          	bge	s1,s3,8000449c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000447c:	00349793          	slli	a5,s1,0x3
    80004480:	00fa07b3          	add	a5,s4,a5
    80004484:	0007b503          	ld	a0,0(a5)
    80004488:	fe0506e3          	beqz	a0,80004474 <_Z20testConsumerProducerv+0x2fc>
    8000448c:	00053783          	ld	a5,0(a0)
    80004490:	0087b783          	ld	a5,8(a5)
    80004494:	000780e7          	jalr	a5
    80004498:	fddff06f          	j	80004474 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000449c:	000b8a63          	beqz	s7,800044b0 <_Z20testConsumerProducerv+0x338>
    800044a0:	000bb783          	ld	a5,0(s7)
    800044a4:	0087b783          	ld	a5,8(a5)
    800044a8:	000b8513          	mv	a0,s7
    800044ac:	000780e7          	jalr	a5
    delete buffer;
    800044b0:	000a8e63          	beqz	s5,800044cc <_Z20testConsumerProducerv+0x354>
    800044b4:	000a8513          	mv	a0,s5
    800044b8:	00002097          	auipc	ra,0x2
    800044bc:	870080e7          	jalr	-1936(ra) # 80005d28 <_ZN9BufferCPPD1Ev>
    800044c0:	000a8513          	mv	a0,s5
    800044c4:	ffffe097          	auipc	ra,0xffffe
    800044c8:	b6c080e7          	jalr	-1172(ra) # 80002030 <_ZdlPv>
    800044cc:	000c0113          	mv	sp,s8
}
    800044d0:	f8040113          	addi	sp,s0,-128
    800044d4:	07813083          	ld	ra,120(sp)
    800044d8:	07013403          	ld	s0,112(sp)
    800044dc:	06813483          	ld	s1,104(sp)
    800044e0:	06013903          	ld	s2,96(sp)
    800044e4:	05813983          	ld	s3,88(sp)
    800044e8:	05013a03          	ld	s4,80(sp)
    800044ec:	04813a83          	ld	s5,72(sp)
    800044f0:	04013b03          	ld	s6,64(sp)
    800044f4:	03813b83          	ld	s7,56(sp)
    800044f8:	03013c03          	ld	s8,48(sp)
    800044fc:	02813c83          	ld	s9,40(sp)
    80004500:	08010113          	addi	sp,sp,128
    80004504:	00008067          	ret
    80004508:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000450c:	000a8513          	mv	a0,s5
    80004510:	ffffe097          	auipc	ra,0xffffe
    80004514:	b20080e7          	jalr	-1248(ra) # 80002030 <_ZdlPv>
    80004518:	00048513          	mv	a0,s1
    8000451c:	00008097          	auipc	ra,0x8
    80004520:	76c080e7          	jalr	1900(ra) # 8000cc88 <_Unwind_Resume>
    80004524:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004528:	00090513          	mv	a0,s2
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	b04080e7          	jalr	-1276(ra) # 80002030 <_ZdlPv>
    80004534:	00048513          	mv	a0,s1
    80004538:	00008097          	auipc	ra,0x8
    8000453c:	750080e7          	jalr	1872(ra) # 8000cc88 <_Unwind_Resume>
    80004540:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004544:	000b8513          	mv	a0,s7
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	ae8080e7          	jalr	-1304(ra) # 80002030 <_ZdlPv>
    80004550:	00048513          	mv	a0,s1
    80004554:	00008097          	auipc	ra,0x8
    80004558:	734080e7          	jalr	1844(ra) # 8000cc88 <_Unwind_Resume>
    8000455c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004560:	00048513          	mv	a0,s1
    80004564:	ffffe097          	auipc	ra,0xffffe
    80004568:	acc080e7          	jalr	-1332(ra) # 80002030 <_ZdlPv>
    8000456c:	00090513          	mv	a0,s2
    80004570:	00008097          	auipc	ra,0x8
    80004574:	718080e7          	jalr	1816(ra) # 8000cc88 <_Unwind_Resume>
    80004578:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000457c:	000c8513          	mv	a0,s9
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	ab0080e7          	jalr	-1360(ra) # 80002030 <_ZdlPv>
    80004588:	00048513          	mv	a0,s1
    8000458c:	00008097          	auipc	ra,0x8
    80004590:	6fc080e7          	jalr	1788(ra) # 8000cc88 <_Unwind_Resume>

0000000080004594 <_ZN8Consumer3runEv>:
    void run() override {
    80004594:	fd010113          	addi	sp,sp,-48
    80004598:	02113423          	sd	ra,40(sp)
    8000459c:	02813023          	sd	s0,32(sp)
    800045a0:	00913c23          	sd	s1,24(sp)
    800045a4:	01213823          	sd	s2,16(sp)
    800045a8:	01313423          	sd	s3,8(sp)
    800045ac:	03010413          	addi	s0,sp,48
    800045b0:	00050913          	mv	s2,a0
        int i = 0;
    800045b4:	00000993          	li	s3,0
    800045b8:	0100006f          	j	800045c8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800045bc:	00a00513          	li	a0,10
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	d50080e7          	jalr	-688(ra) # 80002310 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800045c8:	00007797          	auipc	a5,0x7
    800045cc:	5c07a783          	lw	a5,1472(a5) # 8000bb88 <_ZL9threadEnd>
    800045d0:	04079a63          	bnez	a5,80004624 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800045d4:	02093783          	ld	a5,32(s2)
    800045d8:	0087b503          	ld	a0,8(a5)
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	638080e7          	jalr	1592(ra) # 80005c14 <_ZN9BufferCPP3getEv>
            i++;
    800045e4:	0019849b          	addiw	s1,s3,1
    800045e8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800045ec:	0ff57513          	andi	a0,a0,255
    800045f0:	ffffe097          	auipc	ra,0xffffe
    800045f4:	d20080e7          	jalr	-736(ra) # 80002310 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800045f8:	05000793          	li	a5,80
    800045fc:	02f4e4bb          	remw	s1,s1,a5
    80004600:	fc0494e3          	bnez	s1,800045c8 <_ZN8Consumer3runEv+0x34>
    80004604:	fb9ff06f          	j	800045bc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004608:	02093783          	ld	a5,32(s2)
    8000460c:	0087b503          	ld	a0,8(a5)
    80004610:	00001097          	auipc	ra,0x1
    80004614:	604080e7          	jalr	1540(ra) # 80005c14 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004618:	0ff57513          	andi	a0,a0,255
    8000461c:	ffffe097          	auipc	ra,0xffffe
    80004620:	cf4080e7          	jalr	-780(ra) # 80002310 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004624:	02093783          	ld	a5,32(s2)
    80004628:	0087b503          	ld	a0,8(a5)
    8000462c:	00001097          	auipc	ra,0x1
    80004630:	674080e7          	jalr	1652(ra) # 80005ca0 <_ZN9BufferCPP6getCntEv>
    80004634:	fca04ae3          	bgtz	a0,80004608 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004638:	02093783          	ld	a5,32(s2)
    8000463c:	0107b503          	ld	a0,16(a5)
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	c10080e7          	jalr	-1008(ra) # 80002250 <_ZN9Semaphore6signalEv>
    }
    80004648:	02813083          	ld	ra,40(sp)
    8000464c:	02013403          	ld	s0,32(sp)
    80004650:	01813483          	ld	s1,24(sp)
    80004654:	01013903          	ld	s2,16(sp)
    80004658:	00813983          	ld	s3,8(sp)
    8000465c:	03010113          	addi	sp,sp,48
    80004660:	00008067          	ret

0000000080004664 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004664:	ff010113          	addi	sp,sp,-16
    80004668:	00113423          	sd	ra,8(sp)
    8000466c:	00813023          	sd	s0,0(sp)
    80004670:	01010413          	addi	s0,sp,16
    80004674:	00007797          	auipc	a5,0x7
    80004678:	36c78793          	addi	a5,a5,876 # 8000b9e0 <_ZTV8Consumer+0x10>
    8000467c:	00f53023          	sd	a5,0(a0)
    80004680:	ffffe097          	auipc	ra,0xffffe
    80004684:	880080e7          	jalr	-1920(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80004688:	00813083          	ld	ra,8(sp)
    8000468c:	00013403          	ld	s0,0(sp)
    80004690:	01010113          	addi	sp,sp,16
    80004694:	00008067          	ret

0000000080004698 <_ZN8ConsumerD0Ev>:
    80004698:	fe010113          	addi	sp,sp,-32
    8000469c:	00113c23          	sd	ra,24(sp)
    800046a0:	00813823          	sd	s0,16(sp)
    800046a4:	00913423          	sd	s1,8(sp)
    800046a8:	02010413          	addi	s0,sp,32
    800046ac:	00050493          	mv	s1,a0
    800046b0:	00007797          	auipc	a5,0x7
    800046b4:	33078793          	addi	a5,a5,816 # 8000b9e0 <_ZTV8Consumer+0x10>
    800046b8:	00f53023          	sd	a5,0(a0)
    800046bc:	ffffe097          	auipc	ra,0xffffe
    800046c0:	844080e7          	jalr	-1980(ra) # 80001f00 <_ZN6ThreadD1Ev>
    800046c4:	00048513          	mv	a0,s1
    800046c8:	ffffe097          	auipc	ra,0xffffe
    800046cc:	968080e7          	jalr	-1688(ra) # 80002030 <_ZdlPv>
    800046d0:	01813083          	ld	ra,24(sp)
    800046d4:	01013403          	ld	s0,16(sp)
    800046d8:	00813483          	ld	s1,8(sp)
    800046dc:	02010113          	addi	sp,sp,32
    800046e0:	00008067          	ret

00000000800046e4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800046e4:	ff010113          	addi	sp,sp,-16
    800046e8:	00113423          	sd	ra,8(sp)
    800046ec:	00813023          	sd	s0,0(sp)
    800046f0:	01010413          	addi	s0,sp,16
    800046f4:	00007797          	auipc	a5,0x7
    800046f8:	29c78793          	addi	a5,a5,668 # 8000b990 <_ZTV16ProducerKeyborad+0x10>
    800046fc:	00f53023          	sd	a5,0(a0)
    80004700:	ffffe097          	auipc	ra,0xffffe
    80004704:	800080e7          	jalr	-2048(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80004708:	00813083          	ld	ra,8(sp)
    8000470c:	00013403          	ld	s0,0(sp)
    80004710:	01010113          	addi	sp,sp,16
    80004714:	00008067          	ret

0000000080004718 <_ZN16ProducerKeyboradD0Ev>:
    80004718:	fe010113          	addi	sp,sp,-32
    8000471c:	00113c23          	sd	ra,24(sp)
    80004720:	00813823          	sd	s0,16(sp)
    80004724:	00913423          	sd	s1,8(sp)
    80004728:	02010413          	addi	s0,sp,32
    8000472c:	00050493          	mv	s1,a0
    80004730:	00007797          	auipc	a5,0x7
    80004734:	26078793          	addi	a5,a5,608 # 8000b990 <_ZTV16ProducerKeyborad+0x10>
    80004738:	00f53023          	sd	a5,0(a0)
    8000473c:	ffffd097          	auipc	ra,0xffffd
    80004740:	7c4080e7          	jalr	1988(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80004744:	00048513          	mv	a0,s1
    80004748:	ffffe097          	auipc	ra,0xffffe
    8000474c:	8e8080e7          	jalr	-1816(ra) # 80002030 <_ZdlPv>
    80004750:	01813083          	ld	ra,24(sp)
    80004754:	01013403          	ld	s0,16(sp)
    80004758:	00813483          	ld	s1,8(sp)
    8000475c:	02010113          	addi	sp,sp,32
    80004760:	00008067          	ret

0000000080004764 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004764:	ff010113          	addi	sp,sp,-16
    80004768:	00113423          	sd	ra,8(sp)
    8000476c:	00813023          	sd	s0,0(sp)
    80004770:	01010413          	addi	s0,sp,16
    80004774:	00007797          	auipc	a5,0x7
    80004778:	24478793          	addi	a5,a5,580 # 8000b9b8 <_ZTV8Producer+0x10>
    8000477c:	00f53023          	sd	a5,0(a0)
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	780080e7          	jalr	1920(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80004788:	00813083          	ld	ra,8(sp)
    8000478c:	00013403          	ld	s0,0(sp)
    80004790:	01010113          	addi	sp,sp,16
    80004794:	00008067          	ret

0000000080004798 <_ZN8ProducerD0Ev>:
    80004798:	fe010113          	addi	sp,sp,-32
    8000479c:	00113c23          	sd	ra,24(sp)
    800047a0:	00813823          	sd	s0,16(sp)
    800047a4:	00913423          	sd	s1,8(sp)
    800047a8:	02010413          	addi	s0,sp,32
    800047ac:	00050493          	mv	s1,a0
    800047b0:	00007797          	auipc	a5,0x7
    800047b4:	20878793          	addi	a5,a5,520 # 8000b9b8 <_ZTV8Producer+0x10>
    800047b8:	00f53023          	sd	a5,0(a0)
    800047bc:	ffffd097          	auipc	ra,0xffffd
    800047c0:	744080e7          	jalr	1860(ra) # 80001f00 <_ZN6ThreadD1Ev>
    800047c4:	00048513          	mv	a0,s1
    800047c8:	ffffe097          	auipc	ra,0xffffe
    800047cc:	868080e7          	jalr	-1944(ra) # 80002030 <_ZdlPv>
    800047d0:	01813083          	ld	ra,24(sp)
    800047d4:	01013403          	ld	s0,16(sp)
    800047d8:	00813483          	ld	s1,8(sp)
    800047dc:	02010113          	addi	sp,sp,32
    800047e0:	00008067          	ret

00000000800047e4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800047e4:	fe010113          	addi	sp,sp,-32
    800047e8:	00113c23          	sd	ra,24(sp)
    800047ec:	00813823          	sd	s0,16(sp)
    800047f0:	00913423          	sd	s1,8(sp)
    800047f4:	02010413          	addi	s0,sp,32
    800047f8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	d4c080e7          	jalr	-692(ra) # 80001548 <_Z4getcv>
    80004804:	0005059b          	sext.w	a1,a0
    80004808:	01b00793          	li	a5,27
    8000480c:	00f58c63          	beq	a1,a5,80004824 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004810:	0204b783          	ld	a5,32(s1)
    80004814:	0087b503          	ld	a0,8(a5)
    80004818:	00001097          	auipc	ra,0x1
    8000481c:	36c080e7          	jalr	876(ra) # 80005b84 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004820:	fddff06f          	j	800047fc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004824:	00100793          	li	a5,1
    80004828:	00007717          	auipc	a4,0x7
    8000482c:	36f72023          	sw	a5,864(a4) # 8000bb88 <_ZL9threadEnd>
        td->buffer->put('!');
    80004830:	0204b783          	ld	a5,32(s1)
    80004834:	02100593          	li	a1,33
    80004838:	0087b503          	ld	a0,8(a5)
    8000483c:	00001097          	auipc	ra,0x1
    80004840:	348080e7          	jalr	840(ra) # 80005b84 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004844:	0204b783          	ld	a5,32(s1)
    80004848:	0107b503          	ld	a0,16(a5)
    8000484c:	ffffe097          	auipc	ra,0xffffe
    80004850:	a04080e7          	jalr	-1532(ra) # 80002250 <_ZN9Semaphore6signalEv>
    }
    80004854:	01813083          	ld	ra,24(sp)
    80004858:	01013403          	ld	s0,16(sp)
    8000485c:	00813483          	ld	s1,8(sp)
    80004860:	02010113          	addi	sp,sp,32
    80004864:	00008067          	ret

0000000080004868 <_ZN8Producer3runEv>:
    void run() override {
    80004868:	fe010113          	addi	sp,sp,-32
    8000486c:	00113c23          	sd	ra,24(sp)
    80004870:	00813823          	sd	s0,16(sp)
    80004874:	00913423          	sd	s1,8(sp)
    80004878:	01213023          	sd	s2,0(sp)
    8000487c:	02010413          	addi	s0,sp,32
    80004880:	00050493          	mv	s1,a0
        int i = 0;
    80004884:	00000913          	li	s2,0
        while (!threadEnd) {
    80004888:	00007797          	auipc	a5,0x7
    8000488c:	3007a783          	lw	a5,768(a5) # 8000bb88 <_ZL9threadEnd>
    80004890:	04079263          	bnez	a5,800048d4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004894:	0204b783          	ld	a5,32(s1)
    80004898:	0007a583          	lw	a1,0(a5)
    8000489c:	0305859b          	addiw	a1,a1,48
    800048a0:	0087b503          	ld	a0,8(a5)
    800048a4:	00001097          	auipc	ra,0x1
    800048a8:	2e0080e7          	jalr	736(ra) # 80005b84 <_ZN9BufferCPP3putEi>
            i++;
    800048ac:	0019071b          	addiw	a4,s2,1
    800048b0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800048b4:	0204b783          	ld	a5,32(s1)
    800048b8:	0007a783          	lw	a5,0(a5)
    800048bc:	00e787bb          	addw	a5,a5,a4
    800048c0:	00500513          	li	a0,5
    800048c4:	02a7e53b          	remw	a0,a5,a0
    800048c8:	ffffe097          	auipc	ra,0xffffe
    800048cc:	8fc080e7          	jalr	-1796(ra) # 800021c4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800048d0:	fb9ff06f          	j	80004888 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800048d4:	0204b783          	ld	a5,32(s1)
    800048d8:	0107b503          	ld	a0,16(a5)
    800048dc:	ffffe097          	auipc	ra,0xffffe
    800048e0:	974080e7          	jalr	-1676(ra) # 80002250 <_ZN9Semaphore6signalEv>
    }
    800048e4:	01813083          	ld	ra,24(sp)
    800048e8:	01013403          	ld	s0,16(sp)
    800048ec:	00813483          	ld	s1,8(sp)
    800048f0:	00013903          	ld	s2,0(sp)
    800048f4:	02010113          	addi	sp,sp,32
    800048f8:	00008067          	ret

00000000800048fc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800048fc:	fe010113          	addi	sp,sp,-32
    80004900:	00113c23          	sd	ra,24(sp)
    80004904:	00813823          	sd	s0,16(sp)
    80004908:	00913423          	sd	s1,8(sp)
    8000490c:	01213023          	sd	s2,0(sp)
    80004910:	02010413          	addi	s0,sp,32
    80004914:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004918:	00100793          	li	a5,1
    8000491c:	02a7f863          	bgeu	a5,a0,8000494c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004920:	00a00793          	li	a5,10
    80004924:	02f577b3          	remu	a5,a0,a5
    80004928:	02078e63          	beqz	a5,80004964 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000492c:	fff48513          	addi	a0,s1,-1
    80004930:	00000097          	auipc	ra,0x0
    80004934:	fcc080e7          	jalr	-52(ra) # 800048fc <_ZL9fibonaccim>
    80004938:	00050913          	mv	s2,a0
    8000493c:	ffe48513          	addi	a0,s1,-2
    80004940:	00000097          	auipc	ra,0x0
    80004944:	fbc080e7          	jalr	-68(ra) # 800048fc <_ZL9fibonaccim>
    80004948:	00a90533          	add	a0,s2,a0
}
    8000494c:	01813083          	ld	ra,24(sp)
    80004950:	01013403          	ld	s0,16(sp)
    80004954:	00813483          	ld	s1,8(sp)
    80004958:	00013903          	ld	s2,0(sp)
    8000495c:	02010113          	addi	sp,sp,32
    80004960:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	a10080e7          	jalr	-1520(ra) # 80001374 <_Z15thread_dispatchv>
    8000496c:	fc1ff06f          	j	8000492c <_ZL9fibonaccim+0x30>

0000000080004970 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004970:	fe010113          	addi	sp,sp,-32
    80004974:	00113c23          	sd	ra,24(sp)
    80004978:	00813823          	sd	s0,16(sp)
    8000497c:	00913423          	sd	s1,8(sp)
    80004980:	01213023          	sd	s2,0(sp)
    80004984:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004988:	00a00493          	li	s1,10
    8000498c:	0400006f          	j	800049cc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004990:	00005517          	auipc	a0,0x5
    80004994:	94050513          	addi	a0,a0,-1728 # 800092d0 <_ZZ17interruptPrintIntmE6digits+0x158>
    80004998:	00001097          	auipc	ra,0x1
    8000499c:	dc8080e7          	jalr	-568(ra) # 80005760 <_Z11printStringPKc>
    800049a0:	00000613          	li	a2,0
    800049a4:	00a00593          	li	a1,10
    800049a8:	00048513          	mv	a0,s1
    800049ac:	00001097          	auipc	ra,0x1
    800049b0:	f64080e7          	jalr	-156(ra) # 80005910 <_Z8printIntiii>
    800049b4:	00005517          	auipc	a0,0x5
    800049b8:	b0c50513          	addi	a0,a0,-1268 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    800049bc:	00001097          	auipc	ra,0x1
    800049c0:	da4080e7          	jalr	-604(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800049c4:	0014849b          	addiw	s1,s1,1
    800049c8:	0ff4f493          	andi	s1,s1,255
    800049cc:	00c00793          	li	a5,12
    800049d0:	fc97f0e3          	bgeu	a5,s1,80004990 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800049d4:	00005517          	auipc	a0,0x5
    800049d8:	90450513          	addi	a0,a0,-1788 # 800092d8 <_ZZ17interruptPrintIntmE6digits+0x160>
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	d84080e7          	jalr	-636(ra) # 80005760 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800049e4:	00500313          	li	t1,5
    thread_dispatch();
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	98c080e7          	jalr	-1652(ra) # 80001374 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800049f0:	01000513          	li	a0,16
    800049f4:	00000097          	auipc	ra,0x0
    800049f8:	f08080e7          	jalr	-248(ra) # 800048fc <_ZL9fibonaccim>
    800049fc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004a00:	00005517          	auipc	a0,0x5
    80004a04:	8e850513          	addi	a0,a0,-1816 # 800092e8 <_ZZ17interruptPrintIntmE6digits+0x170>
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	d58080e7          	jalr	-680(ra) # 80005760 <_Z11printStringPKc>
    80004a10:	00000613          	li	a2,0
    80004a14:	00a00593          	li	a1,10
    80004a18:	0009051b          	sext.w	a0,s2
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	ef4080e7          	jalr	-268(ra) # 80005910 <_Z8printIntiii>
    80004a24:	00005517          	auipc	a0,0x5
    80004a28:	a9c50513          	addi	a0,a0,-1380 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80004a2c:	00001097          	auipc	ra,0x1
    80004a30:	d34080e7          	jalr	-716(ra) # 80005760 <_Z11printStringPKc>
    80004a34:	0400006f          	j	80004a74 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a38:	00005517          	auipc	a0,0x5
    80004a3c:	89850513          	addi	a0,a0,-1896 # 800092d0 <_ZZ17interruptPrintIntmE6digits+0x158>
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	d20080e7          	jalr	-736(ra) # 80005760 <_Z11printStringPKc>
    80004a48:	00000613          	li	a2,0
    80004a4c:	00a00593          	li	a1,10
    80004a50:	00048513          	mv	a0,s1
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	ebc080e7          	jalr	-324(ra) # 80005910 <_Z8printIntiii>
    80004a5c:	00005517          	auipc	a0,0x5
    80004a60:	a6450513          	addi	a0,a0,-1436 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	cfc080e7          	jalr	-772(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a6c:	0014849b          	addiw	s1,s1,1
    80004a70:	0ff4f493          	andi	s1,s1,255
    80004a74:	00f00793          	li	a5,15
    80004a78:	fc97f0e3          	bgeu	a5,s1,80004a38 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004a7c:	00005517          	auipc	a0,0x5
    80004a80:	87c50513          	addi	a0,a0,-1924 # 800092f8 <_ZZ17interruptPrintIntmE6digits+0x180>
    80004a84:	00001097          	auipc	ra,0x1
    80004a88:	cdc080e7          	jalr	-804(ra) # 80005760 <_Z11printStringPKc>
    finishedD = true;
    80004a8c:	00100793          	li	a5,1
    80004a90:	00007717          	auipc	a4,0x7
    80004a94:	10f70423          	sb	a5,264(a4) # 8000bb98 <_ZL9finishedD>
    thread_dispatch();
    80004a98:	ffffd097          	auipc	ra,0xffffd
    80004a9c:	8dc080e7          	jalr	-1828(ra) # 80001374 <_Z15thread_dispatchv>
}
    80004aa0:	01813083          	ld	ra,24(sp)
    80004aa4:	01013403          	ld	s0,16(sp)
    80004aa8:	00813483          	ld	s1,8(sp)
    80004aac:	00013903          	ld	s2,0(sp)
    80004ab0:	02010113          	addi	sp,sp,32
    80004ab4:	00008067          	ret

0000000080004ab8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004ab8:	fe010113          	addi	sp,sp,-32
    80004abc:	00113c23          	sd	ra,24(sp)
    80004ac0:	00813823          	sd	s0,16(sp)
    80004ac4:	00913423          	sd	s1,8(sp)
    80004ac8:	01213023          	sd	s2,0(sp)
    80004acc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004ad0:	00000493          	li	s1,0
    80004ad4:	0400006f          	j	80004b14 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004ad8:	00004517          	auipc	a0,0x4
    80004adc:	7c850513          	addi	a0,a0,1992 # 800092a0 <_ZZ17interruptPrintIntmE6digits+0x128>
    80004ae0:	00001097          	auipc	ra,0x1
    80004ae4:	c80080e7          	jalr	-896(ra) # 80005760 <_Z11printStringPKc>
    80004ae8:	00000613          	li	a2,0
    80004aec:	00a00593          	li	a1,10
    80004af0:	00048513          	mv	a0,s1
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	e1c080e7          	jalr	-484(ra) # 80005910 <_Z8printIntiii>
    80004afc:	00005517          	auipc	a0,0x5
    80004b00:	9c450513          	addi	a0,a0,-1596 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80004b04:	00001097          	auipc	ra,0x1
    80004b08:	c5c080e7          	jalr	-932(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b0c:	0014849b          	addiw	s1,s1,1
    80004b10:	0ff4f493          	andi	s1,s1,255
    80004b14:	00200793          	li	a5,2
    80004b18:	fc97f0e3          	bgeu	a5,s1,80004ad8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004b1c:	00004517          	auipc	a0,0x4
    80004b20:	78c50513          	addi	a0,a0,1932 # 800092a8 <_ZZ17interruptPrintIntmE6digits+0x130>
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	c3c080e7          	jalr	-964(ra) # 80005760 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b2c:	00700313          	li	t1,7
    thread_dispatch();
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	844080e7          	jalr	-1980(ra) # 80001374 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b38:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004b3c:	00004517          	auipc	a0,0x4
    80004b40:	77c50513          	addi	a0,a0,1916 # 800092b8 <_ZZ17interruptPrintIntmE6digits+0x140>
    80004b44:	00001097          	auipc	ra,0x1
    80004b48:	c1c080e7          	jalr	-996(ra) # 80005760 <_Z11printStringPKc>
    80004b4c:	00000613          	li	a2,0
    80004b50:	00a00593          	li	a1,10
    80004b54:	0009051b          	sext.w	a0,s2
    80004b58:	00001097          	auipc	ra,0x1
    80004b5c:	db8080e7          	jalr	-584(ra) # 80005910 <_Z8printIntiii>
    80004b60:	00005517          	auipc	a0,0x5
    80004b64:	96050513          	addi	a0,a0,-1696 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	bf8080e7          	jalr	-1032(ra) # 80005760 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004b70:	00c00513          	li	a0,12
    80004b74:	00000097          	auipc	ra,0x0
    80004b78:	d88080e7          	jalr	-632(ra) # 800048fc <_ZL9fibonaccim>
    80004b7c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b80:	00004517          	auipc	a0,0x4
    80004b84:	74050513          	addi	a0,a0,1856 # 800092c0 <_ZZ17interruptPrintIntmE6digits+0x148>
    80004b88:	00001097          	auipc	ra,0x1
    80004b8c:	bd8080e7          	jalr	-1064(ra) # 80005760 <_Z11printStringPKc>
    80004b90:	00000613          	li	a2,0
    80004b94:	00a00593          	li	a1,10
    80004b98:	0009051b          	sext.w	a0,s2
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	d74080e7          	jalr	-652(ra) # 80005910 <_Z8printIntiii>
    80004ba4:	00005517          	auipc	a0,0x5
    80004ba8:	91c50513          	addi	a0,a0,-1764 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80004bac:	00001097          	auipc	ra,0x1
    80004bb0:	bb4080e7          	jalr	-1100(ra) # 80005760 <_Z11printStringPKc>
    80004bb4:	0400006f          	j	80004bf4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004bb8:	00004517          	auipc	a0,0x4
    80004bbc:	6e850513          	addi	a0,a0,1768 # 800092a0 <_ZZ17interruptPrintIntmE6digits+0x128>
    80004bc0:	00001097          	auipc	ra,0x1
    80004bc4:	ba0080e7          	jalr	-1120(ra) # 80005760 <_Z11printStringPKc>
    80004bc8:	00000613          	li	a2,0
    80004bcc:	00a00593          	li	a1,10
    80004bd0:	00048513          	mv	a0,s1
    80004bd4:	00001097          	auipc	ra,0x1
    80004bd8:	d3c080e7          	jalr	-708(ra) # 80005910 <_Z8printIntiii>
    80004bdc:	00005517          	auipc	a0,0x5
    80004be0:	8e450513          	addi	a0,a0,-1820 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80004be4:	00001097          	auipc	ra,0x1
    80004be8:	b7c080e7          	jalr	-1156(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004bec:	0014849b          	addiw	s1,s1,1
    80004bf0:	0ff4f493          	andi	s1,s1,255
    80004bf4:	00500793          	li	a5,5
    80004bf8:	fc97f0e3          	bgeu	a5,s1,80004bb8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004bfc:	00004517          	auipc	a0,0x4
    80004c00:	67c50513          	addi	a0,a0,1660 # 80009278 <_ZZ17interruptPrintIntmE6digits+0x100>
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	b5c080e7          	jalr	-1188(ra) # 80005760 <_Z11printStringPKc>
    finishedC = true;
    80004c0c:	00100793          	li	a5,1
    80004c10:	00007717          	auipc	a4,0x7
    80004c14:	f8f704a3          	sb	a5,-119(a4) # 8000bb99 <_ZL9finishedC>
    thread_dispatch();
    80004c18:	ffffc097          	auipc	ra,0xffffc
    80004c1c:	75c080e7          	jalr	1884(ra) # 80001374 <_Z15thread_dispatchv>
}
    80004c20:	01813083          	ld	ra,24(sp)
    80004c24:	01013403          	ld	s0,16(sp)
    80004c28:	00813483          	ld	s1,8(sp)
    80004c2c:	00013903          	ld	s2,0(sp)
    80004c30:	02010113          	addi	sp,sp,32
    80004c34:	00008067          	ret

0000000080004c38 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004c38:	fe010113          	addi	sp,sp,-32
    80004c3c:	00113c23          	sd	ra,24(sp)
    80004c40:	00813823          	sd	s0,16(sp)
    80004c44:	00913423          	sd	s1,8(sp)
    80004c48:	01213023          	sd	s2,0(sp)
    80004c4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004c50:	00000913          	li	s2,0
    80004c54:	0380006f          	j	80004c8c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004c58:	ffffc097          	auipc	ra,0xffffc
    80004c5c:	71c080e7          	jalr	1820(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c60:	00148493          	addi	s1,s1,1
    80004c64:	000027b7          	lui	a5,0x2
    80004c68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c6c:	0097ee63          	bltu	a5,s1,80004c88 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c70:	00000713          	li	a4,0
    80004c74:	000077b7          	lui	a5,0x7
    80004c78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c7c:	fce7eee3          	bltu	a5,a4,80004c58 <_ZL11workerBodyBPv+0x20>
    80004c80:	00170713          	addi	a4,a4,1
    80004c84:	ff1ff06f          	j	80004c74 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004c88:	00190913          	addi	s2,s2,1
    80004c8c:	00f00793          	li	a5,15
    80004c90:	0527e063          	bltu	a5,s2,80004cd0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004c94:	00004517          	auipc	a0,0x4
    80004c98:	5f450513          	addi	a0,a0,1524 # 80009288 <_ZZ17interruptPrintIntmE6digits+0x110>
    80004c9c:	00001097          	auipc	ra,0x1
    80004ca0:	ac4080e7          	jalr	-1340(ra) # 80005760 <_Z11printStringPKc>
    80004ca4:	00000613          	li	a2,0
    80004ca8:	00a00593          	li	a1,10
    80004cac:	0009051b          	sext.w	a0,s2
    80004cb0:	00001097          	auipc	ra,0x1
    80004cb4:	c60080e7          	jalr	-928(ra) # 80005910 <_Z8printIntiii>
    80004cb8:	00005517          	auipc	a0,0x5
    80004cbc:	80850513          	addi	a0,a0,-2040 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80004cc0:	00001097          	auipc	ra,0x1
    80004cc4:	aa0080e7          	jalr	-1376(ra) # 80005760 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004cc8:	00000493          	li	s1,0
    80004ccc:	f99ff06f          	j	80004c64 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004cd0:	00004517          	auipc	a0,0x4
    80004cd4:	5c050513          	addi	a0,a0,1472 # 80009290 <_ZZ17interruptPrintIntmE6digits+0x118>
    80004cd8:	00001097          	auipc	ra,0x1
    80004cdc:	a88080e7          	jalr	-1400(ra) # 80005760 <_Z11printStringPKc>
    finishedB = true;
    80004ce0:	00100793          	li	a5,1
    80004ce4:	00007717          	auipc	a4,0x7
    80004ce8:	eaf70b23          	sb	a5,-330(a4) # 8000bb9a <_ZL9finishedB>
    thread_dispatch();
    80004cec:	ffffc097          	auipc	ra,0xffffc
    80004cf0:	688080e7          	jalr	1672(ra) # 80001374 <_Z15thread_dispatchv>
}
    80004cf4:	01813083          	ld	ra,24(sp)
    80004cf8:	01013403          	ld	s0,16(sp)
    80004cfc:	00813483          	ld	s1,8(sp)
    80004d00:	00013903          	ld	s2,0(sp)
    80004d04:	02010113          	addi	sp,sp,32
    80004d08:	00008067          	ret

0000000080004d0c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004d0c:	fe010113          	addi	sp,sp,-32
    80004d10:	00113c23          	sd	ra,24(sp)
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00913423          	sd	s1,8(sp)
    80004d1c:	01213023          	sd	s2,0(sp)
    80004d20:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d24:	00000913          	li	s2,0
    80004d28:	0380006f          	j	80004d60 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004d2c:	ffffc097          	auipc	ra,0xffffc
    80004d30:	648080e7          	jalr	1608(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004d34:	00148493          	addi	s1,s1,1
    80004d38:	000027b7          	lui	a5,0x2
    80004d3c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d40:	0097ee63          	bltu	a5,s1,80004d5c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d44:	00000713          	li	a4,0
    80004d48:	000077b7          	lui	a5,0x7
    80004d4c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d50:	fce7eee3          	bltu	a5,a4,80004d2c <_ZL11workerBodyAPv+0x20>
    80004d54:	00170713          	addi	a4,a4,1
    80004d58:	ff1ff06f          	j	80004d48 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d5c:	00190913          	addi	s2,s2,1
    80004d60:	00900793          	li	a5,9
    80004d64:	0527e063          	bltu	a5,s2,80004da4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d68:	00004517          	auipc	a0,0x4
    80004d6c:	50850513          	addi	a0,a0,1288 # 80009270 <_ZZ17interruptPrintIntmE6digits+0xf8>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	9f0080e7          	jalr	-1552(ra) # 80005760 <_Z11printStringPKc>
    80004d78:	00000613          	li	a2,0
    80004d7c:	00a00593          	li	a1,10
    80004d80:	0009051b          	sext.w	a0,s2
    80004d84:	00001097          	auipc	ra,0x1
    80004d88:	b8c080e7          	jalr	-1140(ra) # 80005910 <_Z8printIntiii>
    80004d8c:	00004517          	auipc	a0,0x4
    80004d90:	73450513          	addi	a0,a0,1844 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	9cc080e7          	jalr	-1588(ra) # 80005760 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d9c:	00000493          	li	s1,0
    80004da0:	f99ff06f          	j	80004d38 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004da4:	00004517          	auipc	a0,0x4
    80004da8:	4d450513          	addi	a0,a0,1236 # 80009278 <_ZZ17interruptPrintIntmE6digits+0x100>
    80004dac:	00001097          	auipc	ra,0x1
    80004db0:	9b4080e7          	jalr	-1612(ra) # 80005760 <_Z11printStringPKc>
    finishedA = true;
    80004db4:	00100793          	li	a5,1
    80004db8:	00007717          	auipc	a4,0x7
    80004dbc:	def701a3          	sb	a5,-541(a4) # 8000bb9b <_ZL9finishedA>
}
    80004dc0:	01813083          	ld	ra,24(sp)
    80004dc4:	01013403          	ld	s0,16(sp)
    80004dc8:	00813483          	ld	s1,8(sp)
    80004dcc:	00013903          	ld	s2,0(sp)
    80004dd0:	02010113          	addi	sp,sp,32
    80004dd4:	00008067          	ret

0000000080004dd8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004dd8:	fd010113          	addi	sp,sp,-48
    80004ddc:	02113423          	sd	ra,40(sp)
    80004de0:	02813023          	sd	s0,32(sp)
    80004de4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004de8:	00000613          	li	a2,0
    80004dec:	00000597          	auipc	a1,0x0
    80004df0:	f2058593          	addi	a1,a1,-224 # 80004d0c <_ZL11workerBodyAPv>
    80004df4:	fd040513          	addi	a0,s0,-48
    80004df8:	ffffc097          	auipc	ra,0xffffc
    80004dfc:	4c4080e7          	jalr	1220(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004e00:	00004517          	auipc	a0,0x4
    80004e04:	50850513          	addi	a0,a0,1288 # 80009308 <_ZZ17interruptPrintIntmE6digits+0x190>
    80004e08:	00001097          	auipc	ra,0x1
    80004e0c:	958080e7          	jalr	-1704(ra) # 80005760 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004e10:	00000613          	li	a2,0
    80004e14:	00000597          	auipc	a1,0x0
    80004e18:	e2458593          	addi	a1,a1,-476 # 80004c38 <_ZL11workerBodyBPv>
    80004e1c:	fd840513          	addi	a0,s0,-40
    80004e20:	ffffc097          	auipc	ra,0xffffc
    80004e24:	49c080e7          	jalr	1180(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004e28:	00004517          	auipc	a0,0x4
    80004e2c:	4f850513          	addi	a0,a0,1272 # 80009320 <_ZZ17interruptPrintIntmE6digits+0x1a8>
    80004e30:	00001097          	auipc	ra,0x1
    80004e34:	930080e7          	jalr	-1744(ra) # 80005760 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004e38:	00000613          	li	a2,0
    80004e3c:	00000597          	auipc	a1,0x0
    80004e40:	c7c58593          	addi	a1,a1,-900 # 80004ab8 <_ZL11workerBodyCPv>
    80004e44:	fe040513          	addi	a0,s0,-32
    80004e48:	ffffc097          	auipc	ra,0xffffc
    80004e4c:	474080e7          	jalr	1140(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004e50:	00004517          	auipc	a0,0x4
    80004e54:	4e850513          	addi	a0,a0,1256 # 80009338 <_ZZ17interruptPrintIntmE6digits+0x1c0>
    80004e58:	00001097          	auipc	ra,0x1
    80004e5c:	908080e7          	jalr	-1784(ra) # 80005760 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004e60:	00000613          	li	a2,0
    80004e64:	00000597          	auipc	a1,0x0
    80004e68:	b0c58593          	addi	a1,a1,-1268 # 80004970 <_ZL11workerBodyDPv>
    80004e6c:	fe840513          	addi	a0,s0,-24
    80004e70:	ffffc097          	auipc	ra,0xffffc
    80004e74:	44c080e7          	jalr	1100(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004e78:	00004517          	auipc	a0,0x4
    80004e7c:	4d850513          	addi	a0,a0,1240 # 80009350 <_ZZ17interruptPrintIntmE6digits+0x1d8>
    80004e80:	00001097          	auipc	ra,0x1
    80004e84:	8e0080e7          	jalr	-1824(ra) # 80005760 <_Z11printStringPKc>
    80004e88:	00c0006f          	j	80004e94 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004e8c:	ffffc097          	auipc	ra,0xffffc
    80004e90:	4e8080e7          	jalr	1256(ra) # 80001374 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004e94:	00007797          	auipc	a5,0x7
    80004e98:	d077c783          	lbu	a5,-761(a5) # 8000bb9b <_ZL9finishedA>
    80004e9c:	fe0788e3          	beqz	a5,80004e8c <_Z18Threads_C_API_testv+0xb4>
    80004ea0:	00007797          	auipc	a5,0x7
    80004ea4:	cfa7c783          	lbu	a5,-774(a5) # 8000bb9a <_ZL9finishedB>
    80004ea8:	fe0782e3          	beqz	a5,80004e8c <_Z18Threads_C_API_testv+0xb4>
    80004eac:	00007797          	auipc	a5,0x7
    80004eb0:	ced7c783          	lbu	a5,-787(a5) # 8000bb99 <_ZL9finishedC>
    80004eb4:	fc078ce3          	beqz	a5,80004e8c <_Z18Threads_C_API_testv+0xb4>
    80004eb8:	00007797          	auipc	a5,0x7
    80004ebc:	ce07c783          	lbu	a5,-800(a5) # 8000bb98 <_ZL9finishedD>
    80004ec0:	fc0786e3          	beqz	a5,80004e8c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004ec4:	02813083          	ld	ra,40(sp)
    80004ec8:	02013403          	ld	s0,32(sp)
    80004ecc:	03010113          	addi	sp,sp,48
    80004ed0:	00008067          	ret

0000000080004ed4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004ed4:	fd010113          	addi	sp,sp,-48
    80004ed8:	02113423          	sd	ra,40(sp)
    80004edc:	02813023          	sd	s0,32(sp)
    80004ee0:	00913c23          	sd	s1,24(sp)
    80004ee4:	01213823          	sd	s2,16(sp)
    80004ee8:	01313423          	sd	s3,8(sp)
    80004eec:	03010413          	addi	s0,sp,48
    80004ef0:	00050993          	mv	s3,a0
    80004ef4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004ef8:	00000913          	li	s2,0
    80004efc:	00c0006f          	j	80004f08 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f00:	ffffd097          	auipc	ra,0xffffd
    80004f04:	29c080e7          	jalr	668(ra) # 8000219c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004f08:	ffffc097          	auipc	ra,0xffffc
    80004f0c:	640080e7          	jalr	1600(ra) # 80001548 <_Z4getcv>
    80004f10:	0005059b          	sext.w	a1,a0
    80004f14:	01b00793          	li	a5,27
    80004f18:	02f58a63          	beq	a1,a5,80004f4c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004f1c:	0084b503          	ld	a0,8(s1)
    80004f20:	00001097          	auipc	ra,0x1
    80004f24:	c64080e7          	jalr	-924(ra) # 80005b84 <_ZN9BufferCPP3putEi>
        i++;
    80004f28:	0019071b          	addiw	a4,s2,1
    80004f2c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f30:	0004a683          	lw	a3,0(s1)
    80004f34:	0026979b          	slliw	a5,a3,0x2
    80004f38:	00d787bb          	addw	a5,a5,a3
    80004f3c:	0017979b          	slliw	a5,a5,0x1
    80004f40:	02f767bb          	remw	a5,a4,a5
    80004f44:	fc0792e3          	bnez	a5,80004f08 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004f48:	fb9ff06f          	j	80004f00 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004f4c:	00100793          	li	a5,1
    80004f50:	00007717          	auipc	a4,0x7
    80004f54:	c4f72823          	sw	a5,-944(a4) # 8000bba0 <_ZL9threadEnd>
    td->buffer->put('!');
    80004f58:	0209b783          	ld	a5,32(s3)
    80004f5c:	02100593          	li	a1,33
    80004f60:	0087b503          	ld	a0,8(a5)
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	c20080e7          	jalr	-992(ra) # 80005b84 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004f6c:	0104b503          	ld	a0,16(s1)
    80004f70:	ffffd097          	auipc	ra,0xffffd
    80004f74:	2e0080e7          	jalr	736(ra) # 80002250 <_ZN9Semaphore6signalEv>
}
    80004f78:	02813083          	ld	ra,40(sp)
    80004f7c:	02013403          	ld	s0,32(sp)
    80004f80:	01813483          	ld	s1,24(sp)
    80004f84:	01013903          	ld	s2,16(sp)
    80004f88:	00813983          	ld	s3,8(sp)
    80004f8c:	03010113          	addi	sp,sp,48
    80004f90:	00008067          	ret

0000000080004f94 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004f94:	fe010113          	addi	sp,sp,-32
    80004f98:	00113c23          	sd	ra,24(sp)
    80004f9c:	00813823          	sd	s0,16(sp)
    80004fa0:	00913423          	sd	s1,8(sp)
    80004fa4:	01213023          	sd	s2,0(sp)
    80004fa8:	02010413          	addi	s0,sp,32
    80004fac:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004fb0:	00000913          	li	s2,0
    80004fb4:	00c0006f          	j	80004fc0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004fb8:	ffffd097          	auipc	ra,0xffffd
    80004fbc:	1e4080e7          	jalr	484(ra) # 8000219c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004fc0:	00007797          	auipc	a5,0x7
    80004fc4:	be07a783          	lw	a5,-1056(a5) # 8000bba0 <_ZL9threadEnd>
    80004fc8:	02079e63          	bnez	a5,80005004 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004fcc:	0004a583          	lw	a1,0(s1)
    80004fd0:	0305859b          	addiw	a1,a1,48
    80004fd4:	0084b503          	ld	a0,8(s1)
    80004fd8:	00001097          	auipc	ra,0x1
    80004fdc:	bac080e7          	jalr	-1108(ra) # 80005b84 <_ZN9BufferCPP3putEi>
        i++;
    80004fe0:	0019071b          	addiw	a4,s2,1
    80004fe4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004fe8:	0004a683          	lw	a3,0(s1)
    80004fec:	0026979b          	slliw	a5,a3,0x2
    80004ff0:	00d787bb          	addw	a5,a5,a3
    80004ff4:	0017979b          	slliw	a5,a5,0x1
    80004ff8:	02f767bb          	remw	a5,a4,a5
    80004ffc:	fc0792e3          	bnez	a5,80004fc0 <_ZN12ProducerSync8producerEPv+0x2c>
    80005000:	fb9ff06f          	j	80004fb8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005004:	0104b503          	ld	a0,16(s1)
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	248080e7          	jalr	584(ra) # 80002250 <_ZN9Semaphore6signalEv>
}
    80005010:	01813083          	ld	ra,24(sp)
    80005014:	01013403          	ld	s0,16(sp)
    80005018:	00813483          	ld	s1,8(sp)
    8000501c:	00013903          	ld	s2,0(sp)
    80005020:	02010113          	addi	sp,sp,32
    80005024:	00008067          	ret

0000000080005028 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005028:	fd010113          	addi	sp,sp,-48
    8000502c:	02113423          	sd	ra,40(sp)
    80005030:	02813023          	sd	s0,32(sp)
    80005034:	00913c23          	sd	s1,24(sp)
    80005038:	01213823          	sd	s2,16(sp)
    8000503c:	01313423          	sd	s3,8(sp)
    80005040:	01413023          	sd	s4,0(sp)
    80005044:	03010413          	addi	s0,sp,48
    80005048:	00050993          	mv	s3,a0
    8000504c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005050:	00000a13          	li	s4,0
    80005054:	01c0006f          	j	80005070 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005058:	ffffd097          	auipc	ra,0xffffd
    8000505c:	144080e7          	jalr	324(ra) # 8000219c <_ZN6Thread8dispatchEv>
    80005060:	0500006f          	j	800050b0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005064:	00a00513          	li	a0,10
    80005068:	ffffc097          	auipc	ra,0xffffc
    8000506c:	50c080e7          	jalr	1292(ra) # 80001574 <_Z4putcc>
    while (!threadEnd) {
    80005070:	00007797          	auipc	a5,0x7
    80005074:	b307a783          	lw	a5,-1232(a5) # 8000bba0 <_ZL9threadEnd>
    80005078:	06079263          	bnez	a5,800050dc <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000507c:	00893503          	ld	a0,8(s2)
    80005080:	00001097          	auipc	ra,0x1
    80005084:	b94080e7          	jalr	-1132(ra) # 80005c14 <_ZN9BufferCPP3getEv>
        i++;
    80005088:	001a049b          	addiw	s1,s4,1
    8000508c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005090:	0ff57513          	andi	a0,a0,255
    80005094:	ffffc097          	auipc	ra,0xffffc
    80005098:	4e0080e7          	jalr	1248(ra) # 80001574 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000509c:	00092703          	lw	a4,0(s2)
    800050a0:	0027179b          	slliw	a5,a4,0x2
    800050a4:	00e787bb          	addw	a5,a5,a4
    800050a8:	02f4e7bb          	remw	a5,s1,a5
    800050ac:	fa0786e3          	beqz	a5,80005058 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800050b0:	05000793          	li	a5,80
    800050b4:	02f4e4bb          	remw	s1,s1,a5
    800050b8:	fa049ce3          	bnez	s1,80005070 <_ZN12ConsumerSync8consumerEPv+0x48>
    800050bc:	fa9ff06f          	j	80005064 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800050c0:	0209b783          	ld	a5,32(s3)
    800050c4:	0087b503          	ld	a0,8(a5)
    800050c8:	00001097          	auipc	ra,0x1
    800050cc:	b4c080e7          	jalr	-1204(ra) # 80005c14 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800050d0:	0ff57513          	andi	a0,a0,255
    800050d4:	ffffd097          	auipc	ra,0xffffd
    800050d8:	23c080e7          	jalr	572(ra) # 80002310 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800050dc:	0209b783          	ld	a5,32(s3)
    800050e0:	0087b503          	ld	a0,8(a5)
    800050e4:	00001097          	auipc	ra,0x1
    800050e8:	bbc080e7          	jalr	-1092(ra) # 80005ca0 <_ZN9BufferCPP6getCntEv>
    800050ec:	fca04ae3          	bgtz	a0,800050c0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800050f0:	01093503          	ld	a0,16(s2)
    800050f4:	ffffd097          	auipc	ra,0xffffd
    800050f8:	15c080e7          	jalr	348(ra) # 80002250 <_ZN9Semaphore6signalEv>
}
    800050fc:	02813083          	ld	ra,40(sp)
    80005100:	02013403          	ld	s0,32(sp)
    80005104:	01813483          	ld	s1,24(sp)
    80005108:	01013903          	ld	s2,16(sp)
    8000510c:	00813983          	ld	s3,8(sp)
    80005110:	00013a03          	ld	s4,0(sp)
    80005114:	03010113          	addi	sp,sp,48
    80005118:	00008067          	ret

000000008000511c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000511c:	f8010113          	addi	sp,sp,-128
    80005120:	06113c23          	sd	ra,120(sp)
    80005124:	06813823          	sd	s0,112(sp)
    80005128:	06913423          	sd	s1,104(sp)
    8000512c:	07213023          	sd	s2,96(sp)
    80005130:	05313c23          	sd	s3,88(sp)
    80005134:	05413823          	sd	s4,80(sp)
    80005138:	05513423          	sd	s5,72(sp)
    8000513c:	05613023          	sd	s6,64(sp)
    80005140:	03713c23          	sd	s7,56(sp)
    80005144:	03813823          	sd	s8,48(sp)
    80005148:	03913423          	sd	s9,40(sp)
    8000514c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005150:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005154:	00004517          	auipc	a0,0x4
    80005158:	03450513          	addi	a0,a0,52 # 80009188 <_ZZ17interruptPrintIntmE6digits+0x10>
    8000515c:	00000097          	auipc	ra,0x0
    80005160:	604080e7          	jalr	1540(ra) # 80005760 <_Z11printStringPKc>
    getString(input, 30);
    80005164:	01e00593          	li	a1,30
    80005168:	f8040493          	addi	s1,s0,-128
    8000516c:	00048513          	mv	a0,s1
    80005170:	00000097          	auipc	ra,0x0
    80005174:	678080e7          	jalr	1656(ra) # 800057e8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005178:	00048513          	mv	a0,s1
    8000517c:	00000097          	auipc	ra,0x0
    80005180:	744080e7          	jalr	1860(ra) # 800058c0 <_Z11stringToIntPKc>
    80005184:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005188:	00004517          	auipc	a0,0x4
    8000518c:	02050513          	addi	a0,a0,32 # 800091a8 <_ZZ17interruptPrintIntmE6digits+0x30>
    80005190:	00000097          	auipc	ra,0x0
    80005194:	5d0080e7          	jalr	1488(ra) # 80005760 <_Z11printStringPKc>
    getString(input, 30);
    80005198:	01e00593          	li	a1,30
    8000519c:	00048513          	mv	a0,s1
    800051a0:	00000097          	auipc	ra,0x0
    800051a4:	648080e7          	jalr	1608(ra) # 800057e8 <_Z9getStringPci>
    n = stringToInt(input);
    800051a8:	00048513          	mv	a0,s1
    800051ac:	00000097          	auipc	ra,0x0
    800051b0:	714080e7          	jalr	1812(ra) # 800058c0 <_Z11stringToIntPKc>
    800051b4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800051b8:	00004517          	auipc	a0,0x4
    800051bc:	01050513          	addi	a0,a0,16 # 800091c8 <_ZZ17interruptPrintIntmE6digits+0x50>
    800051c0:	00000097          	auipc	ra,0x0
    800051c4:	5a0080e7          	jalr	1440(ra) # 80005760 <_Z11printStringPKc>
    800051c8:	00000613          	li	a2,0
    800051cc:	00a00593          	li	a1,10
    800051d0:	00090513          	mv	a0,s2
    800051d4:	00000097          	auipc	ra,0x0
    800051d8:	73c080e7          	jalr	1852(ra) # 80005910 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800051dc:	00004517          	auipc	a0,0x4
    800051e0:	00450513          	addi	a0,a0,4 # 800091e0 <_ZZ17interruptPrintIntmE6digits+0x68>
    800051e4:	00000097          	auipc	ra,0x0
    800051e8:	57c080e7          	jalr	1404(ra) # 80005760 <_Z11printStringPKc>
    800051ec:	00000613          	li	a2,0
    800051f0:	00a00593          	li	a1,10
    800051f4:	00048513          	mv	a0,s1
    800051f8:	00000097          	auipc	ra,0x0
    800051fc:	718080e7          	jalr	1816(ra) # 80005910 <_Z8printIntiii>
    printString(".\n");
    80005200:	00004517          	auipc	a0,0x4
    80005204:	ff850513          	addi	a0,a0,-8 # 800091f8 <_ZZ17interruptPrintIntmE6digits+0x80>
    80005208:	00000097          	auipc	ra,0x0
    8000520c:	558080e7          	jalr	1368(ra) # 80005760 <_Z11printStringPKc>
    if(threadNum > n) {
    80005210:	0324c463          	blt	s1,s2,80005238 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005214:	03205c63          	blez	s2,8000524c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005218:	03800513          	li	a0,56
    8000521c:	ffffd097          	auipc	ra,0xffffd
    80005220:	dc4080e7          	jalr	-572(ra) # 80001fe0 <_Znwm>
    80005224:	00050a93          	mv	s5,a0
    80005228:	00048593          	mv	a1,s1
    8000522c:	00001097          	auipc	ra,0x1
    80005230:	804080e7          	jalr	-2044(ra) # 80005a30 <_ZN9BufferCPPC1Ei>
    80005234:	0300006f          	j	80005264 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005238:	00004517          	auipc	a0,0x4
    8000523c:	fc850513          	addi	a0,a0,-56 # 80009200 <_ZZ17interruptPrintIntmE6digits+0x88>
    80005240:	00000097          	auipc	ra,0x0
    80005244:	520080e7          	jalr	1312(ra) # 80005760 <_Z11printStringPKc>
        return;
    80005248:	0140006f          	j	8000525c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000524c:	00004517          	auipc	a0,0x4
    80005250:	ff450513          	addi	a0,a0,-12 # 80009240 <_ZZ17interruptPrintIntmE6digits+0xc8>
    80005254:	00000097          	auipc	ra,0x0
    80005258:	50c080e7          	jalr	1292(ra) # 80005760 <_Z11printStringPKc>
        return;
    8000525c:	000b8113          	mv	sp,s7
    80005260:	2380006f          	j	80005498 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005264:	01000513          	li	a0,16
    80005268:	ffffd097          	auipc	ra,0xffffd
    8000526c:	d78080e7          	jalr	-648(ra) # 80001fe0 <_Znwm>
    80005270:	00050493          	mv	s1,a0
    80005274:	00000593          	li	a1,0
    80005278:	ffffd097          	auipc	ra,0xffffd
    8000527c:	f74080e7          	jalr	-140(ra) # 800021ec <_ZN9SemaphoreC1Ej>
    80005280:	00007797          	auipc	a5,0x7
    80005284:	9297b423          	sd	s1,-1752(a5) # 8000bba8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005288:	00391793          	slli	a5,s2,0x3
    8000528c:	00f78793          	addi	a5,a5,15
    80005290:	ff07f793          	andi	a5,a5,-16
    80005294:	40f10133          	sub	sp,sp,a5
    80005298:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000529c:	0019071b          	addiw	a4,s2,1
    800052a0:	00171793          	slli	a5,a4,0x1
    800052a4:	00e787b3          	add	a5,a5,a4
    800052a8:	00379793          	slli	a5,a5,0x3
    800052ac:	00f78793          	addi	a5,a5,15
    800052b0:	ff07f793          	andi	a5,a5,-16
    800052b4:	40f10133          	sub	sp,sp,a5
    800052b8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800052bc:	00191c13          	slli	s8,s2,0x1
    800052c0:	012c07b3          	add	a5,s8,s2
    800052c4:	00379793          	slli	a5,a5,0x3
    800052c8:	00fa07b3          	add	a5,s4,a5
    800052cc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800052d0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800052d4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800052d8:	02800513          	li	a0,40
    800052dc:	ffffd097          	auipc	ra,0xffffd
    800052e0:	d04080e7          	jalr	-764(ra) # 80001fe0 <_Znwm>
    800052e4:	00050b13          	mv	s6,a0
    800052e8:	012c0c33          	add	s8,s8,s2
    800052ec:	003c1c13          	slli	s8,s8,0x3
    800052f0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800052f4:	ffffd097          	auipc	ra,0xffffd
    800052f8:	e24080e7          	jalr	-476(ra) # 80002118 <_ZN6ThreadC1Ev>
    800052fc:	00006797          	auipc	a5,0x6
    80005300:	75c78793          	addi	a5,a5,1884 # 8000ba58 <_ZTV12ConsumerSync+0x10>
    80005304:	00fb3023          	sd	a5,0(s6)
    80005308:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000530c:	000b0513          	mv	a0,s6
    80005310:	ffffd097          	auipc	ra,0xffffd
    80005314:	e38080e7          	jalr	-456(ra) # 80002148 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005318:	00000493          	li	s1,0
    8000531c:	0380006f          	j	80005354 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005320:	00006797          	auipc	a5,0x6
    80005324:	71078793          	addi	a5,a5,1808 # 8000ba30 <_ZTV12ProducerSync+0x10>
    80005328:	00fcb023          	sd	a5,0(s9)
    8000532c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005330:	00349793          	slli	a5,s1,0x3
    80005334:	00f987b3          	add	a5,s3,a5
    80005338:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000533c:	00349793          	slli	a5,s1,0x3
    80005340:	00f987b3          	add	a5,s3,a5
    80005344:	0007b503          	ld	a0,0(a5)
    80005348:	ffffd097          	auipc	ra,0xffffd
    8000534c:	e00080e7          	jalr	-512(ra) # 80002148 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005350:	0014849b          	addiw	s1,s1,1
    80005354:	0b24d063          	bge	s1,s2,800053f4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005358:	00149793          	slli	a5,s1,0x1
    8000535c:	009787b3          	add	a5,a5,s1
    80005360:	00379793          	slli	a5,a5,0x3
    80005364:	00fa07b3          	add	a5,s4,a5
    80005368:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000536c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005370:	00007717          	auipc	a4,0x7
    80005374:	83873703          	ld	a4,-1992(a4) # 8000bba8 <_ZL10waitForAll>
    80005378:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000537c:	02905863          	blez	s1,800053ac <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005380:	02800513          	li	a0,40
    80005384:	ffffd097          	auipc	ra,0xffffd
    80005388:	c5c080e7          	jalr	-932(ra) # 80001fe0 <_Znwm>
    8000538c:	00050c93          	mv	s9,a0
    80005390:	00149c13          	slli	s8,s1,0x1
    80005394:	009c0c33          	add	s8,s8,s1
    80005398:	003c1c13          	slli	s8,s8,0x3
    8000539c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800053a0:	ffffd097          	auipc	ra,0xffffd
    800053a4:	d78080e7          	jalr	-648(ra) # 80002118 <_ZN6ThreadC1Ev>
    800053a8:	f79ff06f          	j	80005320 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800053ac:	02800513          	li	a0,40
    800053b0:	ffffd097          	auipc	ra,0xffffd
    800053b4:	c30080e7          	jalr	-976(ra) # 80001fe0 <_Znwm>
    800053b8:	00050c93          	mv	s9,a0
    800053bc:	00149c13          	slli	s8,s1,0x1
    800053c0:	009c0c33          	add	s8,s8,s1
    800053c4:	003c1c13          	slli	s8,s8,0x3
    800053c8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800053cc:	ffffd097          	auipc	ra,0xffffd
    800053d0:	d4c080e7          	jalr	-692(ra) # 80002118 <_ZN6ThreadC1Ev>
    800053d4:	00006797          	auipc	a5,0x6
    800053d8:	63478793          	addi	a5,a5,1588 # 8000ba08 <_ZTV16ProducerKeyboard+0x10>
    800053dc:	00fcb023          	sd	a5,0(s9)
    800053e0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800053e4:	00349793          	slli	a5,s1,0x3
    800053e8:	00f987b3          	add	a5,s3,a5
    800053ec:	0197b023          	sd	s9,0(a5)
    800053f0:	f4dff06f          	j	8000533c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800053f4:	ffffd097          	auipc	ra,0xffffd
    800053f8:	da8080e7          	jalr	-600(ra) # 8000219c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800053fc:	00000493          	li	s1,0
    80005400:	00994e63          	blt	s2,s1,8000541c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005404:	00006517          	auipc	a0,0x6
    80005408:	7a453503          	ld	a0,1956(a0) # 8000bba8 <_ZL10waitForAll>
    8000540c:	ffffd097          	auipc	ra,0xffffd
    80005410:	e18080e7          	jalr	-488(ra) # 80002224 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005414:	0014849b          	addiw	s1,s1,1
    80005418:	fe9ff06f          	j	80005400 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    8000541c:	00000493          	li	s1,0
    80005420:	0080006f          	j	80005428 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005424:	0014849b          	addiw	s1,s1,1
    80005428:	0324d263          	bge	s1,s2,8000544c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000542c:	00349793          	slli	a5,s1,0x3
    80005430:	00f987b3          	add	a5,s3,a5
    80005434:	0007b503          	ld	a0,0(a5)
    80005438:	fe0506e3          	beqz	a0,80005424 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000543c:	00053783          	ld	a5,0(a0)
    80005440:	0087b783          	ld	a5,8(a5)
    80005444:	000780e7          	jalr	a5
    80005448:	fddff06f          	j	80005424 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000544c:	000b0a63          	beqz	s6,80005460 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005450:	000b3783          	ld	a5,0(s6)
    80005454:	0087b783          	ld	a5,8(a5)
    80005458:	000b0513          	mv	a0,s6
    8000545c:	000780e7          	jalr	a5
    delete waitForAll;
    80005460:	00006517          	auipc	a0,0x6
    80005464:	74853503          	ld	a0,1864(a0) # 8000bba8 <_ZL10waitForAll>
    80005468:	00050863          	beqz	a0,80005478 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000546c:	00053783          	ld	a5,0(a0)
    80005470:	0087b783          	ld	a5,8(a5)
    80005474:	000780e7          	jalr	a5
    delete buffer;
    80005478:	000a8e63          	beqz	s5,80005494 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000547c:	000a8513          	mv	a0,s5
    80005480:	00001097          	auipc	ra,0x1
    80005484:	8a8080e7          	jalr	-1880(ra) # 80005d28 <_ZN9BufferCPPD1Ev>
    80005488:	000a8513          	mv	a0,s5
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	ba4080e7          	jalr	-1116(ra) # 80002030 <_ZdlPv>
    80005494:	000b8113          	mv	sp,s7

}
    80005498:	f8040113          	addi	sp,s0,-128
    8000549c:	07813083          	ld	ra,120(sp)
    800054a0:	07013403          	ld	s0,112(sp)
    800054a4:	06813483          	ld	s1,104(sp)
    800054a8:	06013903          	ld	s2,96(sp)
    800054ac:	05813983          	ld	s3,88(sp)
    800054b0:	05013a03          	ld	s4,80(sp)
    800054b4:	04813a83          	ld	s5,72(sp)
    800054b8:	04013b03          	ld	s6,64(sp)
    800054bc:	03813b83          	ld	s7,56(sp)
    800054c0:	03013c03          	ld	s8,48(sp)
    800054c4:	02813c83          	ld	s9,40(sp)
    800054c8:	08010113          	addi	sp,sp,128
    800054cc:	00008067          	ret
    800054d0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800054d4:	000a8513          	mv	a0,s5
    800054d8:	ffffd097          	auipc	ra,0xffffd
    800054dc:	b58080e7          	jalr	-1192(ra) # 80002030 <_ZdlPv>
    800054e0:	00048513          	mv	a0,s1
    800054e4:	00007097          	auipc	ra,0x7
    800054e8:	7a4080e7          	jalr	1956(ra) # 8000cc88 <_Unwind_Resume>
    800054ec:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800054f0:	00048513          	mv	a0,s1
    800054f4:	ffffd097          	auipc	ra,0xffffd
    800054f8:	b3c080e7          	jalr	-1220(ra) # 80002030 <_ZdlPv>
    800054fc:	00090513          	mv	a0,s2
    80005500:	00007097          	auipc	ra,0x7
    80005504:	788080e7          	jalr	1928(ra) # 8000cc88 <_Unwind_Resume>
    80005508:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000550c:	000b0513          	mv	a0,s6
    80005510:	ffffd097          	auipc	ra,0xffffd
    80005514:	b20080e7          	jalr	-1248(ra) # 80002030 <_ZdlPv>
    80005518:	00048513          	mv	a0,s1
    8000551c:	00007097          	auipc	ra,0x7
    80005520:	76c080e7          	jalr	1900(ra) # 8000cc88 <_Unwind_Resume>
    80005524:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005528:	000c8513          	mv	a0,s9
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	b04080e7          	jalr	-1276(ra) # 80002030 <_ZdlPv>
    80005534:	00048513          	mv	a0,s1
    80005538:	00007097          	auipc	ra,0x7
    8000553c:	750080e7          	jalr	1872(ra) # 8000cc88 <_Unwind_Resume>
    80005540:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005544:	000c8513          	mv	a0,s9
    80005548:	ffffd097          	auipc	ra,0xffffd
    8000554c:	ae8080e7          	jalr	-1304(ra) # 80002030 <_ZdlPv>
    80005550:	00048513          	mv	a0,s1
    80005554:	00007097          	auipc	ra,0x7
    80005558:	734080e7          	jalr	1844(ra) # 8000cc88 <_Unwind_Resume>

000000008000555c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000555c:	ff010113          	addi	sp,sp,-16
    80005560:	00113423          	sd	ra,8(sp)
    80005564:	00813023          	sd	s0,0(sp)
    80005568:	01010413          	addi	s0,sp,16
    8000556c:	00006797          	auipc	a5,0x6
    80005570:	4ec78793          	addi	a5,a5,1260 # 8000ba58 <_ZTV12ConsumerSync+0x10>
    80005574:	00f53023          	sd	a5,0(a0)
    80005578:	ffffd097          	auipc	ra,0xffffd
    8000557c:	988080e7          	jalr	-1656(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80005580:	00813083          	ld	ra,8(sp)
    80005584:	00013403          	ld	s0,0(sp)
    80005588:	01010113          	addi	sp,sp,16
    8000558c:	00008067          	ret

0000000080005590 <_ZN12ConsumerSyncD0Ev>:
    80005590:	fe010113          	addi	sp,sp,-32
    80005594:	00113c23          	sd	ra,24(sp)
    80005598:	00813823          	sd	s0,16(sp)
    8000559c:	00913423          	sd	s1,8(sp)
    800055a0:	02010413          	addi	s0,sp,32
    800055a4:	00050493          	mv	s1,a0
    800055a8:	00006797          	auipc	a5,0x6
    800055ac:	4b078793          	addi	a5,a5,1200 # 8000ba58 <_ZTV12ConsumerSync+0x10>
    800055b0:	00f53023          	sd	a5,0(a0)
    800055b4:	ffffd097          	auipc	ra,0xffffd
    800055b8:	94c080e7          	jalr	-1716(ra) # 80001f00 <_ZN6ThreadD1Ev>
    800055bc:	00048513          	mv	a0,s1
    800055c0:	ffffd097          	auipc	ra,0xffffd
    800055c4:	a70080e7          	jalr	-1424(ra) # 80002030 <_ZdlPv>
    800055c8:	01813083          	ld	ra,24(sp)
    800055cc:	01013403          	ld	s0,16(sp)
    800055d0:	00813483          	ld	s1,8(sp)
    800055d4:	02010113          	addi	sp,sp,32
    800055d8:	00008067          	ret

00000000800055dc <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800055dc:	ff010113          	addi	sp,sp,-16
    800055e0:	00113423          	sd	ra,8(sp)
    800055e4:	00813023          	sd	s0,0(sp)
    800055e8:	01010413          	addi	s0,sp,16
    800055ec:	00006797          	auipc	a5,0x6
    800055f0:	44478793          	addi	a5,a5,1092 # 8000ba30 <_ZTV12ProducerSync+0x10>
    800055f4:	00f53023          	sd	a5,0(a0)
    800055f8:	ffffd097          	auipc	ra,0xffffd
    800055fc:	908080e7          	jalr	-1784(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80005600:	00813083          	ld	ra,8(sp)
    80005604:	00013403          	ld	s0,0(sp)
    80005608:	01010113          	addi	sp,sp,16
    8000560c:	00008067          	ret

0000000080005610 <_ZN12ProducerSyncD0Ev>:
    80005610:	fe010113          	addi	sp,sp,-32
    80005614:	00113c23          	sd	ra,24(sp)
    80005618:	00813823          	sd	s0,16(sp)
    8000561c:	00913423          	sd	s1,8(sp)
    80005620:	02010413          	addi	s0,sp,32
    80005624:	00050493          	mv	s1,a0
    80005628:	00006797          	auipc	a5,0x6
    8000562c:	40878793          	addi	a5,a5,1032 # 8000ba30 <_ZTV12ProducerSync+0x10>
    80005630:	00f53023          	sd	a5,0(a0)
    80005634:	ffffd097          	auipc	ra,0xffffd
    80005638:	8cc080e7          	jalr	-1844(ra) # 80001f00 <_ZN6ThreadD1Ev>
    8000563c:	00048513          	mv	a0,s1
    80005640:	ffffd097          	auipc	ra,0xffffd
    80005644:	9f0080e7          	jalr	-1552(ra) # 80002030 <_ZdlPv>
    80005648:	01813083          	ld	ra,24(sp)
    8000564c:	01013403          	ld	s0,16(sp)
    80005650:	00813483          	ld	s1,8(sp)
    80005654:	02010113          	addi	sp,sp,32
    80005658:	00008067          	ret

000000008000565c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000565c:	ff010113          	addi	sp,sp,-16
    80005660:	00113423          	sd	ra,8(sp)
    80005664:	00813023          	sd	s0,0(sp)
    80005668:	01010413          	addi	s0,sp,16
    8000566c:	00006797          	auipc	a5,0x6
    80005670:	39c78793          	addi	a5,a5,924 # 8000ba08 <_ZTV16ProducerKeyboard+0x10>
    80005674:	00f53023          	sd	a5,0(a0)
    80005678:	ffffd097          	auipc	ra,0xffffd
    8000567c:	888080e7          	jalr	-1912(ra) # 80001f00 <_ZN6ThreadD1Ev>
    80005680:	00813083          	ld	ra,8(sp)
    80005684:	00013403          	ld	s0,0(sp)
    80005688:	01010113          	addi	sp,sp,16
    8000568c:	00008067          	ret

0000000080005690 <_ZN16ProducerKeyboardD0Ev>:
    80005690:	fe010113          	addi	sp,sp,-32
    80005694:	00113c23          	sd	ra,24(sp)
    80005698:	00813823          	sd	s0,16(sp)
    8000569c:	00913423          	sd	s1,8(sp)
    800056a0:	02010413          	addi	s0,sp,32
    800056a4:	00050493          	mv	s1,a0
    800056a8:	00006797          	auipc	a5,0x6
    800056ac:	36078793          	addi	a5,a5,864 # 8000ba08 <_ZTV16ProducerKeyboard+0x10>
    800056b0:	00f53023          	sd	a5,0(a0)
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	84c080e7          	jalr	-1972(ra) # 80001f00 <_ZN6ThreadD1Ev>
    800056bc:	00048513          	mv	a0,s1
    800056c0:	ffffd097          	auipc	ra,0xffffd
    800056c4:	970080e7          	jalr	-1680(ra) # 80002030 <_ZdlPv>
    800056c8:	01813083          	ld	ra,24(sp)
    800056cc:	01013403          	ld	s0,16(sp)
    800056d0:	00813483          	ld	s1,8(sp)
    800056d4:	02010113          	addi	sp,sp,32
    800056d8:	00008067          	ret

00000000800056dc <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800056dc:	ff010113          	addi	sp,sp,-16
    800056e0:	00113423          	sd	ra,8(sp)
    800056e4:	00813023          	sd	s0,0(sp)
    800056e8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800056ec:	02053583          	ld	a1,32(a0)
    800056f0:	fffff097          	auipc	ra,0xfffff
    800056f4:	7e4080e7          	jalr	2020(ra) # 80004ed4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800056f8:	00813083          	ld	ra,8(sp)
    800056fc:	00013403          	ld	s0,0(sp)
    80005700:	01010113          	addi	sp,sp,16
    80005704:	00008067          	ret

0000000080005708 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005708:	ff010113          	addi	sp,sp,-16
    8000570c:	00113423          	sd	ra,8(sp)
    80005710:	00813023          	sd	s0,0(sp)
    80005714:	01010413          	addi	s0,sp,16
        producer(td);
    80005718:	02053583          	ld	a1,32(a0)
    8000571c:	00000097          	auipc	ra,0x0
    80005720:	878080e7          	jalr	-1928(ra) # 80004f94 <_ZN12ProducerSync8producerEPv>
    }
    80005724:	00813083          	ld	ra,8(sp)
    80005728:	00013403          	ld	s0,0(sp)
    8000572c:	01010113          	addi	sp,sp,16
    80005730:	00008067          	ret

0000000080005734 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005734:	ff010113          	addi	sp,sp,-16
    80005738:	00113423          	sd	ra,8(sp)
    8000573c:	00813023          	sd	s0,0(sp)
    80005740:	01010413          	addi	s0,sp,16
        consumer(td);
    80005744:	02053583          	ld	a1,32(a0)
    80005748:	00000097          	auipc	ra,0x0
    8000574c:	8e0080e7          	jalr	-1824(ra) # 80005028 <_ZN12ConsumerSync8consumerEPv>
    }
    80005750:	00813083          	ld	ra,8(sp)
    80005754:	00013403          	ld	s0,0(sp)
    80005758:	01010113          	addi	sp,sp,16
    8000575c:	00008067          	ret

0000000080005760 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005760:	fe010113          	addi	sp,sp,-32
    80005764:	00113c23          	sd	ra,24(sp)
    80005768:	00813823          	sd	s0,16(sp)
    8000576c:	00913423          	sd	s1,8(sp)
    80005770:	02010413          	addi	s0,sp,32
    80005774:	00050493          	mv	s1,a0
    LOCK();
    80005778:	00100613          	li	a2,1
    8000577c:	00000593          	li	a1,0
    80005780:	00006517          	auipc	a0,0x6
    80005784:	43050513          	addi	a0,a0,1072 # 8000bbb0 <lockPrint>
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	a9c080e7          	jalr	-1380(ra) # 80001224 <copy_and_swap>
    80005790:	00050863          	beqz	a0,800057a0 <_Z11printStringPKc+0x40>
    80005794:	ffffc097          	auipc	ra,0xffffc
    80005798:	be0080e7          	jalr	-1056(ra) # 80001374 <_Z15thread_dispatchv>
    8000579c:	fddff06f          	j	80005778 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800057a0:	0004c503          	lbu	a0,0(s1)
    800057a4:	00050a63          	beqz	a0,800057b8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800057a8:	ffffc097          	auipc	ra,0xffffc
    800057ac:	dcc080e7          	jalr	-564(ra) # 80001574 <_Z4putcc>
        string++;
    800057b0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800057b4:	fedff06f          	j	800057a0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800057b8:	00000613          	li	a2,0
    800057bc:	00100593          	li	a1,1
    800057c0:	00006517          	auipc	a0,0x6
    800057c4:	3f050513          	addi	a0,a0,1008 # 8000bbb0 <lockPrint>
    800057c8:	ffffc097          	auipc	ra,0xffffc
    800057cc:	a5c080e7          	jalr	-1444(ra) # 80001224 <copy_and_swap>
    800057d0:	fe0514e3          	bnez	a0,800057b8 <_Z11printStringPKc+0x58>
}
    800057d4:	01813083          	ld	ra,24(sp)
    800057d8:	01013403          	ld	s0,16(sp)
    800057dc:	00813483          	ld	s1,8(sp)
    800057e0:	02010113          	addi	sp,sp,32
    800057e4:	00008067          	ret

00000000800057e8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800057e8:	fd010113          	addi	sp,sp,-48
    800057ec:	02113423          	sd	ra,40(sp)
    800057f0:	02813023          	sd	s0,32(sp)
    800057f4:	00913c23          	sd	s1,24(sp)
    800057f8:	01213823          	sd	s2,16(sp)
    800057fc:	01313423          	sd	s3,8(sp)
    80005800:	01413023          	sd	s4,0(sp)
    80005804:	03010413          	addi	s0,sp,48
    80005808:	00050993          	mv	s3,a0
    8000580c:	00058a13          	mv	s4,a1
    LOCK();
    80005810:	00100613          	li	a2,1
    80005814:	00000593          	li	a1,0
    80005818:	00006517          	auipc	a0,0x6
    8000581c:	39850513          	addi	a0,a0,920 # 8000bbb0 <lockPrint>
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	a04080e7          	jalr	-1532(ra) # 80001224 <copy_and_swap>
    80005828:	00050863          	beqz	a0,80005838 <_Z9getStringPci+0x50>
    8000582c:	ffffc097          	auipc	ra,0xffffc
    80005830:	b48080e7          	jalr	-1208(ra) # 80001374 <_Z15thread_dispatchv>
    80005834:	fddff06f          	j	80005810 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005838:	00000913          	li	s2,0
    8000583c:	00090493          	mv	s1,s2
    80005840:	0019091b          	addiw	s2,s2,1
    80005844:	03495a63          	bge	s2,s4,80005878 <_Z9getStringPci+0x90>
        cc = getc();
    80005848:	ffffc097          	auipc	ra,0xffffc
    8000584c:	d00080e7          	jalr	-768(ra) # 80001548 <_Z4getcv>
        if(cc < 1)
    80005850:	02050463          	beqz	a0,80005878 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005854:	009984b3          	add	s1,s3,s1
    80005858:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000585c:	00a00793          	li	a5,10
    80005860:	00f50a63          	beq	a0,a5,80005874 <_Z9getStringPci+0x8c>
    80005864:	00d00793          	li	a5,13
    80005868:	fcf51ae3          	bne	a0,a5,8000583c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000586c:	00090493          	mv	s1,s2
    80005870:	0080006f          	j	80005878 <_Z9getStringPci+0x90>
    80005874:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005878:	009984b3          	add	s1,s3,s1
    8000587c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005880:	00000613          	li	a2,0
    80005884:	00100593          	li	a1,1
    80005888:	00006517          	auipc	a0,0x6
    8000588c:	32850513          	addi	a0,a0,808 # 8000bbb0 <lockPrint>
    80005890:	ffffc097          	auipc	ra,0xffffc
    80005894:	994080e7          	jalr	-1644(ra) # 80001224 <copy_and_swap>
    80005898:	fe0514e3          	bnez	a0,80005880 <_Z9getStringPci+0x98>
    return buf;
}
    8000589c:	00098513          	mv	a0,s3
    800058a0:	02813083          	ld	ra,40(sp)
    800058a4:	02013403          	ld	s0,32(sp)
    800058a8:	01813483          	ld	s1,24(sp)
    800058ac:	01013903          	ld	s2,16(sp)
    800058b0:	00813983          	ld	s3,8(sp)
    800058b4:	00013a03          	ld	s4,0(sp)
    800058b8:	03010113          	addi	sp,sp,48
    800058bc:	00008067          	ret

00000000800058c0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800058c0:	ff010113          	addi	sp,sp,-16
    800058c4:	00813423          	sd	s0,8(sp)
    800058c8:	01010413          	addi	s0,sp,16
    800058cc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800058d0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800058d4:	0006c603          	lbu	a2,0(a3)
    800058d8:	fd06071b          	addiw	a4,a2,-48
    800058dc:	0ff77713          	andi	a4,a4,255
    800058e0:	00900793          	li	a5,9
    800058e4:	02e7e063          	bltu	a5,a4,80005904 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800058e8:	0025179b          	slliw	a5,a0,0x2
    800058ec:	00a787bb          	addw	a5,a5,a0
    800058f0:	0017979b          	slliw	a5,a5,0x1
    800058f4:	00168693          	addi	a3,a3,1
    800058f8:	00c787bb          	addw	a5,a5,a2
    800058fc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005900:	fd5ff06f          	j	800058d4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005904:	00813403          	ld	s0,8(sp)
    80005908:	01010113          	addi	sp,sp,16
    8000590c:	00008067          	ret

0000000080005910 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005910:	fc010113          	addi	sp,sp,-64
    80005914:	02113c23          	sd	ra,56(sp)
    80005918:	02813823          	sd	s0,48(sp)
    8000591c:	02913423          	sd	s1,40(sp)
    80005920:	03213023          	sd	s2,32(sp)
    80005924:	01313c23          	sd	s3,24(sp)
    80005928:	04010413          	addi	s0,sp,64
    8000592c:	00050493          	mv	s1,a0
    80005930:	00058913          	mv	s2,a1
    80005934:	00060993          	mv	s3,a2
    LOCK();
    80005938:	00100613          	li	a2,1
    8000593c:	00000593          	li	a1,0
    80005940:	00006517          	auipc	a0,0x6
    80005944:	27050513          	addi	a0,a0,624 # 8000bbb0 <lockPrint>
    80005948:	ffffc097          	auipc	ra,0xffffc
    8000594c:	8dc080e7          	jalr	-1828(ra) # 80001224 <copy_and_swap>
    80005950:	00050863          	beqz	a0,80005960 <_Z8printIntiii+0x50>
    80005954:	ffffc097          	auipc	ra,0xffffc
    80005958:	a20080e7          	jalr	-1504(ra) # 80001374 <_Z15thread_dispatchv>
    8000595c:	fddff06f          	j	80005938 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005960:	00098463          	beqz	s3,80005968 <_Z8printIntiii+0x58>
    80005964:	0804c463          	bltz	s1,800059ec <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005968:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000596c:	00000593          	li	a1,0
    }

    i = 0;
    80005970:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005974:	0009079b          	sext.w	a5,s2
    80005978:	0325773b          	remuw	a4,a0,s2
    8000597c:	00048613          	mv	a2,s1
    80005980:	0014849b          	addiw	s1,s1,1
    80005984:	02071693          	slli	a3,a4,0x20
    80005988:	0206d693          	srli	a3,a3,0x20
    8000598c:	00006717          	auipc	a4,0x6
    80005990:	0e470713          	addi	a4,a4,228 # 8000ba70 <digits>
    80005994:	00d70733          	add	a4,a4,a3
    80005998:	00074683          	lbu	a3,0(a4)
    8000599c:	fd040713          	addi	a4,s0,-48
    800059a0:	00c70733          	add	a4,a4,a2
    800059a4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800059a8:	0005071b          	sext.w	a4,a0
    800059ac:	0325553b          	divuw	a0,a0,s2
    800059b0:	fcf772e3          	bgeu	a4,a5,80005974 <_Z8printIntiii+0x64>
    if(neg)
    800059b4:	00058c63          	beqz	a1,800059cc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800059b8:	fd040793          	addi	a5,s0,-48
    800059bc:	009784b3          	add	s1,a5,s1
    800059c0:	02d00793          	li	a5,45
    800059c4:	fef48823          	sb	a5,-16(s1)
    800059c8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800059cc:	fff4849b          	addiw	s1,s1,-1
    800059d0:	0204c463          	bltz	s1,800059f8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800059d4:	fd040793          	addi	a5,s0,-48
    800059d8:	009787b3          	add	a5,a5,s1
    800059dc:	ff07c503          	lbu	a0,-16(a5)
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	b94080e7          	jalr	-1132(ra) # 80001574 <_Z4putcc>
    800059e8:	fe5ff06f          	j	800059cc <_Z8printIntiii+0xbc>
        x = -xx;
    800059ec:	4090053b          	negw	a0,s1
        neg = 1;
    800059f0:	00100593          	li	a1,1
        x = -xx;
    800059f4:	f7dff06f          	j	80005970 <_Z8printIntiii+0x60>

    UNLOCK();
    800059f8:	00000613          	li	a2,0
    800059fc:	00100593          	li	a1,1
    80005a00:	00006517          	auipc	a0,0x6
    80005a04:	1b050513          	addi	a0,a0,432 # 8000bbb0 <lockPrint>
    80005a08:	ffffc097          	auipc	ra,0xffffc
    80005a0c:	81c080e7          	jalr	-2020(ra) # 80001224 <copy_and_swap>
    80005a10:	fe0514e3          	bnez	a0,800059f8 <_Z8printIntiii+0xe8>
    80005a14:	03813083          	ld	ra,56(sp)
    80005a18:	03013403          	ld	s0,48(sp)
    80005a1c:	02813483          	ld	s1,40(sp)
    80005a20:	02013903          	ld	s2,32(sp)
    80005a24:	01813983          	ld	s3,24(sp)
    80005a28:	04010113          	addi	sp,sp,64
    80005a2c:	00008067          	ret

0000000080005a30 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005a30:	fd010113          	addi	sp,sp,-48
    80005a34:	02113423          	sd	ra,40(sp)
    80005a38:	02813023          	sd	s0,32(sp)
    80005a3c:	00913c23          	sd	s1,24(sp)
    80005a40:	01213823          	sd	s2,16(sp)
    80005a44:	01313423          	sd	s3,8(sp)
    80005a48:	03010413          	addi	s0,sp,48
    80005a4c:	00050493          	mv	s1,a0
    80005a50:	00058913          	mv	s2,a1
    80005a54:	0015879b          	addiw	a5,a1,1
    80005a58:	0007851b          	sext.w	a0,a5
    80005a5c:	00f4a023          	sw	a5,0(s1)
    80005a60:	0004a823          	sw	zero,16(s1)
    80005a64:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005a68:	00251513          	slli	a0,a0,0x2
    80005a6c:	ffffb097          	auipc	ra,0xffffb
    80005a70:	7d8080e7          	jalr	2008(ra) # 80001244 <_Z9mem_allocm>
    80005a74:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005a78:	01000513          	li	a0,16
    80005a7c:	ffffc097          	auipc	ra,0xffffc
    80005a80:	564080e7          	jalr	1380(ra) # 80001fe0 <_Znwm>
    80005a84:	00050993          	mv	s3,a0
    80005a88:	00000593          	li	a1,0
    80005a8c:	ffffc097          	auipc	ra,0xffffc
    80005a90:	760080e7          	jalr	1888(ra) # 800021ec <_ZN9SemaphoreC1Ej>
    80005a94:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005a98:	01000513          	li	a0,16
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	544080e7          	jalr	1348(ra) # 80001fe0 <_Znwm>
    80005aa4:	00050993          	mv	s3,a0
    80005aa8:	00090593          	mv	a1,s2
    80005aac:	ffffc097          	auipc	ra,0xffffc
    80005ab0:	740080e7          	jalr	1856(ra) # 800021ec <_ZN9SemaphoreC1Ej>
    80005ab4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005ab8:	01000513          	li	a0,16
    80005abc:	ffffc097          	auipc	ra,0xffffc
    80005ac0:	524080e7          	jalr	1316(ra) # 80001fe0 <_Znwm>
    80005ac4:	00050913          	mv	s2,a0
    80005ac8:	00100593          	li	a1,1
    80005acc:	ffffc097          	auipc	ra,0xffffc
    80005ad0:	720080e7          	jalr	1824(ra) # 800021ec <_ZN9SemaphoreC1Ej>
    80005ad4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005ad8:	01000513          	li	a0,16
    80005adc:	ffffc097          	auipc	ra,0xffffc
    80005ae0:	504080e7          	jalr	1284(ra) # 80001fe0 <_Znwm>
    80005ae4:	00050913          	mv	s2,a0
    80005ae8:	00100593          	li	a1,1
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	700080e7          	jalr	1792(ra) # 800021ec <_ZN9SemaphoreC1Ej>
    80005af4:	0324b823          	sd	s2,48(s1)
}
    80005af8:	02813083          	ld	ra,40(sp)
    80005afc:	02013403          	ld	s0,32(sp)
    80005b00:	01813483          	ld	s1,24(sp)
    80005b04:	01013903          	ld	s2,16(sp)
    80005b08:	00813983          	ld	s3,8(sp)
    80005b0c:	03010113          	addi	sp,sp,48
    80005b10:	00008067          	ret
    80005b14:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005b18:	00098513          	mv	a0,s3
    80005b1c:	ffffc097          	auipc	ra,0xffffc
    80005b20:	514080e7          	jalr	1300(ra) # 80002030 <_ZdlPv>
    80005b24:	00048513          	mv	a0,s1
    80005b28:	00007097          	auipc	ra,0x7
    80005b2c:	160080e7          	jalr	352(ra) # 8000cc88 <_Unwind_Resume>
    80005b30:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005b34:	00098513          	mv	a0,s3
    80005b38:	ffffc097          	auipc	ra,0xffffc
    80005b3c:	4f8080e7          	jalr	1272(ra) # 80002030 <_ZdlPv>
    80005b40:	00048513          	mv	a0,s1
    80005b44:	00007097          	auipc	ra,0x7
    80005b48:	144080e7          	jalr	324(ra) # 8000cc88 <_Unwind_Resume>
    80005b4c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005b50:	00090513          	mv	a0,s2
    80005b54:	ffffc097          	auipc	ra,0xffffc
    80005b58:	4dc080e7          	jalr	1244(ra) # 80002030 <_ZdlPv>
    80005b5c:	00048513          	mv	a0,s1
    80005b60:	00007097          	auipc	ra,0x7
    80005b64:	128080e7          	jalr	296(ra) # 8000cc88 <_Unwind_Resume>
    80005b68:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005b6c:	00090513          	mv	a0,s2
    80005b70:	ffffc097          	auipc	ra,0xffffc
    80005b74:	4c0080e7          	jalr	1216(ra) # 80002030 <_ZdlPv>
    80005b78:	00048513          	mv	a0,s1
    80005b7c:	00007097          	auipc	ra,0x7
    80005b80:	10c080e7          	jalr	268(ra) # 8000cc88 <_Unwind_Resume>

0000000080005b84 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005b84:	fe010113          	addi	sp,sp,-32
    80005b88:	00113c23          	sd	ra,24(sp)
    80005b8c:	00813823          	sd	s0,16(sp)
    80005b90:	00913423          	sd	s1,8(sp)
    80005b94:	01213023          	sd	s2,0(sp)
    80005b98:	02010413          	addi	s0,sp,32
    80005b9c:	00050493          	mv	s1,a0
    80005ba0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005ba4:	01853503          	ld	a0,24(a0)
    80005ba8:	ffffc097          	auipc	ra,0xffffc
    80005bac:	67c080e7          	jalr	1660(ra) # 80002224 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005bb0:	0304b503          	ld	a0,48(s1)
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	670080e7          	jalr	1648(ra) # 80002224 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005bbc:	0084b783          	ld	a5,8(s1)
    80005bc0:	0144a703          	lw	a4,20(s1)
    80005bc4:	00271713          	slli	a4,a4,0x2
    80005bc8:	00e787b3          	add	a5,a5,a4
    80005bcc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005bd0:	0144a783          	lw	a5,20(s1)
    80005bd4:	0017879b          	addiw	a5,a5,1
    80005bd8:	0004a703          	lw	a4,0(s1)
    80005bdc:	02e7e7bb          	remw	a5,a5,a4
    80005be0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005be4:	0304b503          	ld	a0,48(s1)
    80005be8:	ffffc097          	auipc	ra,0xffffc
    80005bec:	668080e7          	jalr	1640(ra) # 80002250 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005bf0:	0204b503          	ld	a0,32(s1)
    80005bf4:	ffffc097          	auipc	ra,0xffffc
    80005bf8:	65c080e7          	jalr	1628(ra) # 80002250 <_ZN9Semaphore6signalEv>

}
    80005bfc:	01813083          	ld	ra,24(sp)
    80005c00:	01013403          	ld	s0,16(sp)
    80005c04:	00813483          	ld	s1,8(sp)
    80005c08:	00013903          	ld	s2,0(sp)
    80005c0c:	02010113          	addi	sp,sp,32
    80005c10:	00008067          	ret

0000000080005c14 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005c14:	fe010113          	addi	sp,sp,-32
    80005c18:	00113c23          	sd	ra,24(sp)
    80005c1c:	00813823          	sd	s0,16(sp)
    80005c20:	00913423          	sd	s1,8(sp)
    80005c24:	01213023          	sd	s2,0(sp)
    80005c28:	02010413          	addi	s0,sp,32
    80005c2c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005c30:	02053503          	ld	a0,32(a0)
    80005c34:	ffffc097          	auipc	ra,0xffffc
    80005c38:	5f0080e7          	jalr	1520(ra) # 80002224 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005c3c:	0284b503          	ld	a0,40(s1)
    80005c40:	ffffc097          	auipc	ra,0xffffc
    80005c44:	5e4080e7          	jalr	1508(ra) # 80002224 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005c48:	0084b703          	ld	a4,8(s1)
    80005c4c:	0104a783          	lw	a5,16(s1)
    80005c50:	00279693          	slli	a3,a5,0x2
    80005c54:	00d70733          	add	a4,a4,a3
    80005c58:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c5c:	0017879b          	addiw	a5,a5,1
    80005c60:	0004a703          	lw	a4,0(s1)
    80005c64:	02e7e7bb          	remw	a5,a5,a4
    80005c68:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005c6c:	0284b503          	ld	a0,40(s1)
    80005c70:	ffffc097          	auipc	ra,0xffffc
    80005c74:	5e0080e7          	jalr	1504(ra) # 80002250 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005c78:	0184b503          	ld	a0,24(s1)
    80005c7c:	ffffc097          	auipc	ra,0xffffc
    80005c80:	5d4080e7          	jalr	1492(ra) # 80002250 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c84:	00090513          	mv	a0,s2
    80005c88:	01813083          	ld	ra,24(sp)
    80005c8c:	01013403          	ld	s0,16(sp)
    80005c90:	00813483          	ld	s1,8(sp)
    80005c94:	00013903          	ld	s2,0(sp)
    80005c98:	02010113          	addi	sp,sp,32
    80005c9c:	00008067          	ret

0000000080005ca0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005ca0:	fe010113          	addi	sp,sp,-32
    80005ca4:	00113c23          	sd	ra,24(sp)
    80005ca8:	00813823          	sd	s0,16(sp)
    80005cac:	00913423          	sd	s1,8(sp)
    80005cb0:	01213023          	sd	s2,0(sp)
    80005cb4:	02010413          	addi	s0,sp,32
    80005cb8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005cbc:	02853503          	ld	a0,40(a0)
    80005cc0:	ffffc097          	auipc	ra,0xffffc
    80005cc4:	564080e7          	jalr	1380(ra) # 80002224 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005cc8:	0304b503          	ld	a0,48(s1)
    80005ccc:	ffffc097          	auipc	ra,0xffffc
    80005cd0:	558080e7          	jalr	1368(ra) # 80002224 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005cd4:	0144a783          	lw	a5,20(s1)
    80005cd8:	0104a903          	lw	s2,16(s1)
    80005cdc:	0327ce63          	blt	a5,s2,80005d18 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005ce0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005ce4:	0304b503          	ld	a0,48(s1)
    80005ce8:	ffffc097          	auipc	ra,0xffffc
    80005cec:	568080e7          	jalr	1384(ra) # 80002250 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005cf0:	0284b503          	ld	a0,40(s1)
    80005cf4:	ffffc097          	auipc	ra,0xffffc
    80005cf8:	55c080e7          	jalr	1372(ra) # 80002250 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005cfc:	00090513          	mv	a0,s2
    80005d00:	01813083          	ld	ra,24(sp)
    80005d04:	01013403          	ld	s0,16(sp)
    80005d08:	00813483          	ld	s1,8(sp)
    80005d0c:	00013903          	ld	s2,0(sp)
    80005d10:	02010113          	addi	sp,sp,32
    80005d14:	00008067          	ret
        ret = cap - head + tail;
    80005d18:	0004a703          	lw	a4,0(s1)
    80005d1c:	4127093b          	subw	s2,a4,s2
    80005d20:	00f9093b          	addw	s2,s2,a5
    80005d24:	fc1ff06f          	j	80005ce4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005d28 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005d28:	fe010113          	addi	sp,sp,-32
    80005d2c:	00113c23          	sd	ra,24(sp)
    80005d30:	00813823          	sd	s0,16(sp)
    80005d34:	00913423          	sd	s1,8(sp)
    80005d38:	02010413          	addi	s0,sp,32
    80005d3c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005d40:	00a00513          	li	a0,10
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	5cc080e7          	jalr	1484(ra) # 80002310 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005d4c:	00003517          	auipc	a0,0x3
    80005d50:	61c50513          	addi	a0,a0,1564 # 80009368 <_ZZ17interruptPrintIntmE6digits+0x1f0>
    80005d54:	00000097          	auipc	ra,0x0
    80005d58:	a0c080e7          	jalr	-1524(ra) # 80005760 <_Z11printStringPKc>
    while (getCnt()) {
    80005d5c:	00048513          	mv	a0,s1
    80005d60:	00000097          	auipc	ra,0x0
    80005d64:	f40080e7          	jalr	-192(ra) # 80005ca0 <_ZN9BufferCPP6getCntEv>
    80005d68:	02050c63          	beqz	a0,80005da0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005d6c:	0084b783          	ld	a5,8(s1)
    80005d70:	0104a703          	lw	a4,16(s1)
    80005d74:	00271713          	slli	a4,a4,0x2
    80005d78:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005d7c:	0007c503          	lbu	a0,0(a5)
    80005d80:	ffffc097          	auipc	ra,0xffffc
    80005d84:	590080e7          	jalr	1424(ra) # 80002310 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005d88:	0104a783          	lw	a5,16(s1)
    80005d8c:	0017879b          	addiw	a5,a5,1
    80005d90:	0004a703          	lw	a4,0(s1)
    80005d94:	02e7e7bb          	remw	a5,a5,a4
    80005d98:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005d9c:	fc1ff06f          	j	80005d5c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005da0:	02100513          	li	a0,33
    80005da4:	ffffc097          	auipc	ra,0xffffc
    80005da8:	56c080e7          	jalr	1388(ra) # 80002310 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005dac:	00a00513          	li	a0,10
    80005db0:	ffffc097          	auipc	ra,0xffffc
    80005db4:	560080e7          	jalr	1376(ra) # 80002310 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005db8:	0084b503          	ld	a0,8(s1)
    80005dbc:	ffffb097          	auipc	ra,0xffffb
    80005dc0:	4d0080e7          	jalr	1232(ra) # 8000128c <_Z8mem_freePv>
    delete itemAvailable;
    80005dc4:	0204b503          	ld	a0,32(s1)
    80005dc8:	00050863          	beqz	a0,80005dd8 <_ZN9BufferCPPD1Ev+0xb0>
    80005dcc:	00053783          	ld	a5,0(a0)
    80005dd0:	0087b783          	ld	a5,8(a5)
    80005dd4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005dd8:	0184b503          	ld	a0,24(s1)
    80005ddc:	00050863          	beqz	a0,80005dec <_ZN9BufferCPPD1Ev+0xc4>
    80005de0:	00053783          	ld	a5,0(a0)
    80005de4:	0087b783          	ld	a5,8(a5)
    80005de8:	000780e7          	jalr	a5
    delete mutexTail;
    80005dec:	0304b503          	ld	a0,48(s1)
    80005df0:	00050863          	beqz	a0,80005e00 <_ZN9BufferCPPD1Ev+0xd8>
    80005df4:	00053783          	ld	a5,0(a0)
    80005df8:	0087b783          	ld	a5,8(a5)
    80005dfc:	000780e7          	jalr	a5
    delete mutexHead;
    80005e00:	0284b503          	ld	a0,40(s1)
    80005e04:	00050863          	beqz	a0,80005e14 <_ZN9BufferCPPD1Ev+0xec>
    80005e08:	00053783          	ld	a5,0(a0)
    80005e0c:	0087b783          	ld	a5,8(a5)
    80005e10:	000780e7          	jalr	a5
}
    80005e14:	01813083          	ld	ra,24(sp)
    80005e18:	01013403          	ld	s0,16(sp)
    80005e1c:	00813483          	ld	s1,8(sp)
    80005e20:	02010113          	addi	sp,sp,32
    80005e24:	00008067          	ret

0000000080005e28 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005e28:	fe010113          	addi	sp,sp,-32
    80005e2c:	00113c23          	sd	ra,24(sp)
    80005e30:	00813823          	sd	s0,16(sp)
    80005e34:	00913423          	sd	s1,8(sp)
    80005e38:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005e3c:	00003517          	auipc	a0,0x3
    80005e40:	54450513          	addi	a0,a0,1348 # 80009380 <_ZZ17interruptPrintIntmE6digits+0x208>
    80005e44:	00000097          	auipc	ra,0x0
    80005e48:	91c080e7          	jalr	-1764(ra) # 80005760 <_Z11printStringPKc>
    int test = getc() - '0';
    80005e4c:	ffffb097          	auipc	ra,0xffffb
    80005e50:	6fc080e7          	jalr	1788(ra) # 80001548 <_Z4getcv>
    80005e54:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005e58:	ffffb097          	auipc	ra,0xffffb
    80005e5c:	6f0080e7          	jalr	1776(ra) # 80001548 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005e60:	00700793          	li	a5,7
    80005e64:	1097e263          	bltu	a5,s1,80005f68 <_Z8userMainv+0x140>
    80005e68:	00249493          	slli	s1,s1,0x2
    80005e6c:	00003717          	auipc	a4,0x3
    80005e70:	76c70713          	addi	a4,a4,1900 # 800095d8 <_ZZ17interruptPrintIntmE6digits+0x460>
    80005e74:	00e484b3          	add	s1,s1,a4
    80005e78:	0004a783          	lw	a5,0(s1)
    80005e7c:	00e787b3          	add	a5,a5,a4
    80005e80:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005e84:	fffff097          	auipc	ra,0xfffff
    80005e88:	f54080e7          	jalr	-172(ra) # 80004dd8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005e8c:	00003517          	auipc	a0,0x3
    80005e90:	51450513          	addi	a0,a0,1300 # 800093a0 <_ZZ17interruptPrintIntmE6digits+0x228>
    80005e94:	00000097          	auipc	ra,0x0
    80005e98:	8cc080e7          	jalr	-1844(ra) # 80005760 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005e9c:	01813083          	ld	ra,24(sp)
    80005ea0:	01013403          	ld	s0,16(sp)
    80005ea4:	00813483          	ld	s1,8(sp)
    80005ea8:	02010113          	addi	sp,sp,32
    80005eac:	00008067          	ret
            Threads_CPP_API_test();
    80005eb0:	ffffe097          	auipc	ra,0xffffe
    80005eb4:	e08080e7          	jalr	-504(ra) # 80003cb8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005eb8:	00003517          	auipc	a0,0x3
    80005ebc:	52850513          	addi	a0,a0,1320 # 800093e0 <_ZZ17interruptPrintIntmE6digits+0x268>
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	8a0080e7          	jalr	-1888(ra) # 80005760 <_Z11printStringPKc>
            break;
    80005ec8:	fd5ff06f          	j	80005e9c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005ecc:	ffffd097          	auipc	ra,0xffffd
    80005ed0:	640080e7          	jalr	1600(ra) # 8000350c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005ed4:	00003517          	auipc	a0,0x3
    80005ed8:	54c50513          	addi	a0,a0,1356 # 80009420 <_ZZ17interruptPrintIntmE6digits+0x2a8>
    80005edc:	00000097          	auipc	ra,0x0
    80005ee0:	884080e7          	jalr	-1916(ra) # 80005760 <_Z11printStringPKc>
            break;
    80005ee4:	fb9ff06f          	j	80005e9c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005ee8:	fffff097          	auipc	ra,0xfffff
    80005eec:	234080e7          	jalr	564(ra) # 8000511c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005ef0:	00003517          	auipc	a0,0x3
    80005ef4:	58050513          	addi	a0,a0,1408 # 80009470 <_ZZ17interruptPrintIntmE6digits+0x2f8>
    80005ef8:	00000097          	auipc	ra,0x0
    80005efc:	868080e7          	jalr	-1944(ra) # 80005760 <_Z11printStringPKc>
            break;
    80005f00:	f9dff06f          	j	80005e9c <_Z8userMainv+0x74>
            testSleeping();
    80005f04:	00000097          	auipc	ra,0x0
    80005f08:	11c080e7          	jalr	284(ra) # 80006020 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005f0c:	00003517          	auipc	a0,0x3
    80005f10:	5bc50513          	addi	a0,a0,1468 # 800094c8 <_ZZ17interruptPrintIntmE6digits+0x350>
    80005f14:	00000097          	auipc	ra,0x0
    80005f18:	84c080e7          	jalr	-1972(ra) # 80005760 <_Z11printStringPKc>
            break;
    80005f1c:	f81ff06f          	j	80005e9c <_Z8userMainv+0x74>
            testConsumerProducer();
    80005f20:	ffffe097          	auipc	ra,0xffffe
    80005f24:	258080e7          	jalr	600(ra) # 80004178 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005f28:	00003517          	auipc	a0,0x3
    80005f2c:	5d050513          	addi	a0,a0,1488 # 800094f8 <_ZZ17interruptPrintIntmE6digits+0x380>
    80005f30:	00000097          	auipc	ra,0x0
    80005f34:	830080e7          	jalr	-2000(ra) # 80005760 <_Z11printStringPKc>
            break;
    80005f38:	f65ff06f          	j	80005e9c <_Z8userMainv+0x74>
            System_Mode_test();
    80005f3c:	00000097          	auipc	ra,0x0
    80005f40:	658080e7          	jalr	1624(ra) # 80006594 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005f44:	00003517          	auipc	a0,0x3
    80005f48:	5f450513          	addi	a0,a0,1524 # 80009538 <_ZZ17interruptPrintIntmE6digits+0x3c0>
    80005f4c:	00000097          	auipc	ra,0x0
    80005f50:	814080e7          	jalr	-2028(ra) # 80005760 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005f54:	00003517          	auipc	a0,0x3
    80005f58:	60450513          	addi	a0,a0,1540 # 80009558 <_ZZ17interruptPrintIntmE6digits+0x3e0>
    80005f5c:	00000097          	auipc	ra,0x0
    80005f60:	804080e7          	jalr	-2044(ra) # 80005760 <_Z11printStringPKc>
            break;
    80005f64:	f39ff06f          	j	80005e9c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005f68:	00003517          	auipc	a0,0x3
    80005f6c:	64850513          	addi	a0,a0,1608 # 800095b0 <_ZZ17interruptPrintIntmE6digits+0x438>
    80005f70:	fffff097          	auipc	ra,0xfffff
    80005f74:	7f0080e7          	jalr	2032(ra) # 80005760 <_Z11printStringPKc>
    80005f78:	f25ff06f          	j	80005e9c <_Z8userMainv+0x74>

0000000080005f7c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005f7c:	fe010113          	addi	sp,sp,-32
    80005f80:	00113c23          	sd	ra,24(sp)
    80005f84:	00813823          	sd	s0,16(sp)
    80005f88:	00913423          	sd	s1,8(sp)
    80005f8c:	01213023          	sd	s2,0(sp)
    80005f90:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005f94:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005f98:	00600493          	li	s1,6
    while (--i > 0) {
    80005f9c:	fff4849b          	addiw	s1,s1,-1
    80005fa0:	04905463          	blez	s1,80005fe8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005fa4:	00003517          	auipc	a0,0x3
    80005fa8:	65450513          	addi	a0,a0,1620 # 800095f8 <_ZZ17interruptPrintIntmE6digits+0x480>
    80005fac:	fffff097          	auipc	ra,0xfffff
    80005fb0:	7b4080e7          	jalr	1972(ra) # 80005760 <_Z11printStringPKc>
        printInt(sleep_time);
    80005fb4:	00000613          	li	a2,0
    80005fb8:	00a00593          	li	a1,10
    80005fbc:	0009051b          	sext.w	a0,s2
    80005fc0:	00000097          	auipc	ra,0x0
    80005fc4:	950080e7          	jalr	-1712(ra) # 80005910 <_Z8printIntiii>
        printString(" !\n");
    80005fc8:	00003517          	auipc	a0,0x3
    80005fcc:	63850513          	addi	a0,a0,1592 # 80009600 <_ZZ17interruptPrintIntmE6digits+0x488>
    80005fd0:	fffff097          	auipc	ra,0xfffff
    80005fd4:	790080e7          	jalr	1936(ra) # 80005760 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005fd8:	00090513          	mv	a0,s2
    80005fdc:	ffffb097          	auipc	ra,0xffffb
    80005fe0:	530080e7          	jalr	1328(ra) # 8000150c <_Z10time_sleepm>
    while (--i > 0) {
    80005fe4:	fb9ff06f          	j	80005f9c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005fe8:	00a00793          	li	a5,10
    80005fec:	02f95933          	divu	s2,s2,a5
    80005ff0:	fff90913          	addi	s2,s2,-1
    80005ff4:	00006797          	auipc	a5,0x6
    80005ff8:	bc478793          	addi	a5,a5,-1084 # 8000bbb8 <_ZL8finished>
    80005ffc:	01278933          	add	s2,a5,s2
    80006000:	00100793          	li	a5,1
    80006004:	00f90023          	sb	a5,0(s2)
}
    80006008:	01813083          	ld	ra,24(sp)
    8000600c:	01013403          	ld	s0,16(sp)
    80006010:	00813483          	ld	s1,8(sp)
    80006014:	00013903          	ld	s2,0(sp)
    80006018:	02010113          	addi	sp,sp,32
    8000601c:	00008067          	ret

0000000080006020 <_Z12testSleepingv>:

void testSleeping() {
    80006020:	fc010113          	addi	sp,sp,-64
    80006024:	02113c23          	sd	ra,56(sp)
    80006028:	02813823          	sd	s0,48(sp)
    8000602c:	02913423          	sd	s1,40(sp)
    80006030:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006034:	00a00793          	li	a5,10
    80006038:	fcf43823          	sd	a5,-48(s0)
    8000603c:	01400793          	li	a5,20
    80006040:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006044:	00000493          	li	s1,0
    80006048:	02c0006f          	j	80006074 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000604c:	00349793          	slli	a5,s1,0x3
    80006050:	fd040613          	addi	a2,s0,-48
    80006054:	00f60633          	add	a2,a2,a5
    80006058:	00000597          	auipc	a1,0x0
    8000605c:	f2458593          	addi	a1,a1,-220 # 80005f7c <_ZL9sleepyRunPv>
    80006060:	fc040513          	addi	a0,s0,-64
    80006064:	00f50533          	add	a0,a0,a5
    80006068:	ffffb097          	auipc	ra,0xffffb
    8000606c:	254080e7          	jalr	596(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006070:	0014849b          	addiw	s1,s1,1
    80006074:	00100793          	li	a5,1
    80006078:	fc97dae3          	bge	a5,s1,8000604c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000607c:	00006797          	auipc	a5,0x6
    80006080:	b3c7c783          	lbu	a5,-1220(a5) # 8000bbb8 <_ZL8finished>
    80006084:	fe078ce3          	beqz	a5,8000607c <_Z12testSleepingv+0x5c>
    80006088:	00006797          	auipc	a5,0x6
    8000608c:	b317c783          	lbu	a5,-1231(a5) # 8000bbb9 <_ZL8finished+0x1>
    80006090:	fe0786e3          	beqz	a5,8000607c <_Z12testSleepingv+0x5c>
}
    80006094:	03813083          	ld	ra,56(sp)
    80006098:	03013403          	ld	s0,48(sp)
    8000609c:	02813483          	ld	s1,40(sp)
    800060a0:	04010113          	addi	sp,sp,64
    800060a4:	00008067          	ret

00000000800060a8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800060a8:	fe010113          	addi	sp,sp,-32
    800060ac:	00113c23          	sd	ra,24(sp)
    800060b0:	00813823          	sd	s0,16(sp)
    800060b4:	00913423          	sd	s1,8(sp)
    800060b8:	01213023          	sd	s2,0(sp)
    800060bc:	02010413          	addi	s0,sp,32
    800060c0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800060c4:	00100793          	li	a5,1
    800060c8:	02a7f863          	bgeu	a5,a0,800060f8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800060cc:	00a00793          	li	a5,10
    800060d0:	02f577b3          	remu	a5,a0,a5
    800060d4:	02078e63          	beqz	a5,80006110 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800060d8:	fff48513          	addi	a0,s1,-1
    800060dc:	00000097          	auipc	ra,0x0
    800060e0:	fcc080e7          	jalr	-52(ra) # 800060a8 <_ZL9fibonaccim>
    800060e4:	00050913          	mv	s2,a0
    800060e8:	ffe48513          	addi	a0,s1,-2
    800060ec:	00000097          	auipc	ra,0x0
    800060f0:	fbc080e7          	jalr	-68(ra) # 800060a8 <_ZL9fibonaccim>
    800060f4:	00a90533          	add	a0,s2,a0
}
    800060f8:	01813083          	ld	ra,24(sp)
    800060fc:	01013403          	ld	s0,16(sp)
    80006100:	00813483          	ld	s1,8(sp)
    80006104:	00013903          	ld	s2,0(sp)
    80006108:	02010113          	addi	sp,sp,32
    8000610c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006110:	ffffb097          	auipc	ra,0xffffb
    80006114:	264080e7          	jalr	612(ra) # 80001374 <_Z15thread_dispatchv>
    80006118:	fc1ff06f          	j	800060d8 <_ZL9fibonaccim+0x30>

000000008000611c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000611c:	fe010113          	addi	sp,sp,-32
    80006120:	00113c23          	sd	ra,24(sp)
    80006124:	00813823          	sd	s0,16(sp)
    80006128:	00913423          	sd	s1,8(sp)
    8000612c:	01213023          	sd	s2,0(sp)
    80006130:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006134:	00a00493          	li	s1,10
    80006138:	0400006f          	j	80006178 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000613c:	00003517          	auipc	a0,0x3
    80006140:	19450513          	addi	a0,a0,404 # 800092d0 <_ZZ17interruptPrintIntmE6digits+0x158>
    80006144:	fffff097          	auipc	ra,0xfffff
    80006148:	61c080e7          	jalr	1564(ra) # 80005760 <_Z11printStringPKc>
    8000614c:	00000613          	li	a2,0
    80006150:	00a00593          	li	a1,10
    80006154:	00048513          	mv	a0,s1
    80006158:	fffff097          	auipc	ra,0xfffff
    8000615c:	7b8080e7          	jalr	1976(ra) # 80005910 <_Z8printIntiii>
    80006160:	00003517          	auipc	a0,0x3
    80006164:	36050513          	addi	a0,a0,864 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80006168:	fffff097          	auipc	ra,0xfffff
    8000616c:	5f8080e7          	jalr	1528(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006170:	0014849b          	addiw	s1,s1,1
    80006174:	0ff4f493          	andi	s1,s1,255
    80006178:	00c00793          	li	a5,12
    8000617c:	fc97f0e3          	bgeu	a5,s1,8000613c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006180:	00003517          	auipc	a0,0x3
    80006184:	15850513          	addi	a0,a0,344 # 800092d8 <_ZZ17interruptPrintIntmE6digits+0x160>
    80006188:	fffff097          	auipc	ra,0xfffff
    8000618c:	5d8080e7          	jalr	1496(ra) # 80005760 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006190:	00500313          	li	t1,5
    thread_dispatch();
    80006194:	ffffb097          	auipc	ra,0xffffb
    80006198:	1e0080e7          	jalr	480(ra) # 80001374 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000619c:	01000513          	li	a0,16
    800061a0:	00000097          	auipc	ra,0x0
    800061a4:	f08080e7          	jalr	-248(ra) # 800060a8 <_ZL9fibonaccim>
    800061a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800061ac:	00003517          	auipc	a0,0x3
    800061b0:	13c50513          	addi	a0,a0,316 # 800092e8 <_ZZ17interruptPrintIntmE6digits+0x170>
    800061b4:	fffff097          	auipc	ra,0xfffff
    800061b8:	5ac080e7          	jalr	1452(ra) # 80005760 <_Z11printStringPKc>
    800061bc:	00000613          	li	a2,0
    800061c0:	00a00593          	li	a1,10
    800061c4:	0009051b          	sext.w	a0,s2
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	748080e7          	jalr	1864(ra) # 80005910 <_Z8printIntiii>
    800061d0:	00003517          	auipc	a0,0x3
    800061d4:	2f050513          	addi	a0,a0,752 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    800061d8:	fffff097          	auipc	ra,0xfffff
    800061dc:	588080e7          	jalr	1416(ra) # 80005760 <_Z11printStringPKc>
    800061e0:	0400006f          	j	80006220 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	0ec50513          	addi	a0,a0,236 # 800092d0 <_ZZ17interruptPrintIntmE6digits+0x158>
    800061ec:	fffff097          	auipc	ra,0xfffff
    800061f0:	574080e7          	jalr	1396(ra) # 80005760 <_Z11printStringPKc>
    800061f4:	00000613          	li	a2,0
    800061f8:	00a00593          	li	a1,10
    800061fc:	00048513          	mv	a0,s1
    80006200:	fffff097          	auipc	ra,0xfffff
    80006204:	710080e7          	jalr	1808(ra) # 80005910 <_Z8printIntiii>
    80006208:	00003517          	auipc	a0,0x3
    8000620c:	2b850513          	addi	a0,a0,696 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80006210:	fffff097          	auipc	ra,0xfffff
    80006214:	550080e7          	jalr	1360(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006218:	0014849b          	addiw	s1,s1,1
    8000621c:	0ff4f493          	andi	s1,s1,255
    80006220:	00f00793          	li	a5,15
    80006224:	fc97f0e3          	bgeu	a5,s1,800061e4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006228:	00003517          	auipc	a0,0x3
    8000622c:	0d050513          	addi	a0,a0,208 # 800092f8 <_ZZ17interruptPrintIntmE6digits+0x180>
    80006230:	fffff097          	auipc	ra,0xfffff
    80006234:	530080e7          	jalr	1328(ra) # 80005760 <_Z11printStringPKc>
    finishedD = true;
    80006238:	00100793          	li	a5,1
    8000623c:	00006717          	auipc	a4,0x6
    80006240:	96f70f23          	sb	a5,-1666(a4) # 8000bbba <_ZL9finishedD>
    thread_dispatch();
    80006244:	ffffb097          	auipc	ra,0xffffb
    80006248:	130080e7          	jalr	304(ra) # 80001374 <_Z15thread_dispatchv>
}
    8000624c:	01813083          	ld	ra,24(sp)
    80006250:	01013403          	ld	s0,16(sp)
    80006254:	00813483          	ld	s1,8(sp)
    80006258:	00013903          	ld	s2,0(sp)
    8000625c:	02010113          	addi	sp,sp,32
    80006260:	00008067          	ret

0000000080006264 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006264:	fe010113          	addi	sp,sp,-32
    80006268:	00113c23          	sd	ra,24(sp)
    8000626c:	00813823          	sd	s0,16(sp)
    80006270:	00913423          	sd	s1,8(sp)
    80006274:	01213023          	sd	s2,0(sp)
    80006278:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000627c:	00000493          	li	s1,0
    80006280:	0400006f          	j	800062c0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006284:	00003517          	auipc	a0,0x3
    80006288:	01c50513          	addi	a0,a0,28 # 800092a0 <_ZZ17interruptPrintIntmE6digits+0x128>
    8000628c:	fffff097          	auipc	ra,0xfffff
    80006290:	4d4080e7          	jalr	1236(ra) # 80005760 <_Z11printStringPKc>
    80006294:	00000613          	li	a2,0
    80006298:	00a00593          	li	a1,10
    8000629c:	00048513          	mv	a0,s1
    800062a0:	fffff097          	auipc	ra,0xfffff
    800062a4:	670080e7          	jalr	1648(ra) # 80005910 <_Z8printIntiii>
    800062a8:	00003517          	auipc	a0,0x3
    800062ac:	21850513          	addi	a0,a0,536 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    800062b0:	fffff097          	auipc	ra,0xfffff
    800062b4:	4b0080e7          	jalr	1200(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800062b8:	0014849b          	addiw	s1,s1,1
    800062bc:	0ff4f493          	andi	s1,s1,255
    800062c0:	00200793          	li	a5,2
    800062c4:	fc97f0e3          	bgeu	a5,s1,80006284 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800062c8:	00003517          	auipc	a0,0x3
    800062cc:	fe050513          	addi	a0,a0,-32 # 800092a8 <_ZZ17interruptPrintIntmE6digits+0x130>
    800062d0:	fffff097          	auipc	ra,0xfffff
    800062d4:	490080e7          	jalr	1168(ra) # 80005760 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800062d8:	00700313          	li	t1,7
    thread_dispatch();
    800062dc:	ffffb097          	auipc	ra,0xffffb
    800062e0:	098080e7          	jalr	152(ra) # 80001374 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800062e4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800062e8:	00003517          	auipc	a0,0x3
    800062ec:	fd050513          	addi	a0,a0,-48 # 800092b8 <_ZZ17interruptPrintIntmE6digits+0x140>
    800062f0:	fffff097          	auipc	ra,0xfffff
    800062f4:	470080e7          	jalr	1136(ra) # 80005760 <_Z11printStringPKc>
    800062f8:	00000613          	li	a2,0
    800062fc:	00a00593          	li	a1,10
    80006300:	0009051b          	sext.w	a0,s2
    80006304:	fffff097          	auipc	ra,0xfffff
    80006308:	60c080e7          	jalr	1548(ra) # 80005910 <_Z8printIntiii>
    8000630c:	00003517          	auipc	a0,0x3
    80006310:	1b450513          	addi	a0,a0,436 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80006314:	fffff097          	auipc	ra,0xfffff
    80006318:	44c080e7          	jalr	1100(ra) # 80005760 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000631c:	00c00513          	li	a0,12
    80006320:	00000097          	auipc	ra,0x0
    80006324:	d88080e7          	jalr	-632(ra) # 800060a8 <_ZL9fibonaccim>
    80006328:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000632c:	00003517          	auipc	a0,0x3
    80006330:	f9450513          	addi	a0,a0,-108 # 800092c0 <_ZZ17interruptPrintIntmE6digits+0x148>
    80006334:	fffff097          	auipc	ra,0xfffff
    80006338:	42c080e7          	jalr	1068(ra) # 80005760 <_Z11printStringPKc>
    8000633c:	00000613          	li	a2,0
    80006340:	00a00593          	li	a1,10
    80006344:	0009051b          	sext.w	a0,s2
    80006348:	fffff097          	auipc	ra,0xfffff
    8000634c:	5c8080e7          	jalr	1480(ra) # 80005910 <_Z8printIntiii>
    80006350:	00003517          	auipc	a0,0x3
    80006354:	17050513          	addi	a0,a0,368 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80006358:	fffff097          	auipc	ra,0xfffff
    8000635c:	408080e7          	jalr	1032(ra) # 80005760 <_Z11printStringPKc>
    80006360:	0400006f          	j	800063a0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006364:	00003517          	auipc	a0,0x3
    80006368:	f3c50513          	addi	a0,a0,-196 # 800092a0 <_ZZ17interruptPrintIntmE6digits+0x128>
    8000636c:	fffff097          	auipc	ra,0xfffff
    80006370:	3f4080e7          	jalr	1012(ra) # 80005760 <_Z11printStringPKc>
    80006374:	00000613          	li	a2,0
    80006378:	00a00593          	li	a1,10
    8000637c:	00048513          	mv	a0,s1
    80006380:	fffff097          	auipc	ra,0xfffff
    80006384:	590080e7          	jalr	1424(ra) # 80005910 <_Z8printIntiii>
    80006388:	00003517          	auipc	a0,0x3
    8000638c:	13850513          	addi	a0,a0,312 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80006390:	fffff097          	auipc	ra,0xfffff
    80006394:	3d0080e7          	jalr	976(ra) # 80005760 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006398:	0014849b          	addiw	s1,s1,1
    8000639c:	0ff4f493          	andi	s1,s1,255
    800063a0:	00500793          	li	a5,5
    800063a4:	fc97f0e3          	bgeu	a5,s1,80006364 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800063a8:	00003517          	auipc	a0,0x3
    800063ac:	ed050513          	addi	a0,a0,-304 # 80009278 <_ZZ17interruptPrintIntmE6digits+0x100>
    800063b0:	fffff097          	auipc	ra,0xfffff
    800063b4:	3b0080e7          	jalr	944(ra) # 80005760 <_Z11printStringPKc>
    finishedC = true;
    800063b8:	00100793          	li	a5,1
    800063bc:	00005717          	auipc	a4,0x5
    800063c0:	7ef70fa3          	sb	a5,2047(a4) # 8000bbbb <_ZL9finishedC>
    thread_dispatch();
    800063c4:	ffffb097          	auipc	ra,0xffffb
    800063c8:	fb0080e7          	jalr	-80(ra) # 80001374 <_Z15thread_dispatchv>
}
    800063cc:	01813083          	ld	ra,24(sp)
    800063d0:	01013403          	ld	s0,16(sp)
    800063d4:	00813483          	ld	s1,8(sp)
    800063d8:	00013903          	ld	s2,0(sp)
    800063dc:	02010113          	addi	sp,sp,32
    800063e0:	00008067          	ret

00000000800063e4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800063e4:	fe010113          	addi	sp,sp,-32
    800063e8:	00113c23          	sd	ra,24(sp)
    800063ec:	00813823          	sd	s0,16(sp)
    800063f0:	00913423          	sd	s1,8(sp)
    800063f4:	01213023          	sd	s2,0(sp)
    800063f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800063fc:	00000913          	li	s2,0
    80006400:	0400006f          	j	80006440 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	f70080e7          	jalr	-144(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000640c:	00148493          	addi	s1,s1,1
    80006410:	000027b7          	lui	a5,0x2
    80006414:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006418:	0097ee63          	bltu	a5,s1,80006434 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000641c:	00000713          	li	a4,0
    80006420:	000077b7          	lui	a5,0x7
    80006424:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006428:	fce7eee3          	bltu	a5,a4,80006404 <_ZL11workerBodyBPv+0x20>
    8000642c:	00170713          	addi	a4,a4,1
    80006430:	ff1ff06f          	j	80006420 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006434:	00a00793          	li	a5,10
    80006438:	04f90663          	beq	s2,a5,80006484 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000643c:	00190913          	addi	s2,s2,1
    80006440:	00f00793          	li	a5,15
    80006444:	0527e463          	bltu	a5,s2,8000648c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006448:	00003517          	auipc	a0,0x3
    8000644c:	e4050513          	addi	a0,a0,-448 # 80009288 <_ZZ17interruptPrintIntmE6digits+0x110>
    80006450:	fffff097          	auipc	ra,0xfffff
    80006454:	310080e7          	jalr	784(ra) # 80005760 <_Z11printStringPKc>
    80006458:	00000613          	li	a2,0
    8000645c:	00a00593          	li	a1,10
    80006460:	0009051b          	sext.w	a0,s2
    80006464:	fffff097          	auipc	ra,0xfffff
    80006468:	4ac080e7          	jalr	1196(ra) # 80005910 <_Z8printIntiii>
    8000646c:	00003517          	auipc	a0,0x3
    80006470:	05450513          	addi	a0,a0,84 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80006474:	fffff097          	auipc	ra,0xfffff
    80006478:	2ec080e7          	jalr	748(ra) # 80005760 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000647c:	00000493          	li	s1,0
    80006480:	f91ff06f          	j	80006410 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006484:	14102ff3          	csrr	t6,sepc
    80006488:	fb5ff06f          	j	8000643c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000648c:	00003517          	auipc	a0,0x3
    80006490:	e0450513          	addi	a0,a0,-508 # 80009290 <_ZZ17interruptPrintIntmE6digits+0x118>
    80006494:	fffff097          	auipc	ra,0xfffff
    80006498:	2cc080e7          	jalr	716(ra) # 80005760 <_Z11printStringPKc>
    finishedB = true;
    8000649c:	00100793          	li	a5,1
    800064a0:	00005717          	auipc	a4,0x5
    800064a4:	70f70e23          	sb	a5,1820(a4) # 8000bbbc <_ZL9finishedB>
    thread_dispatch();
    800064a8:	ffffb097          	auipc	ra,0xffffb
    800064ac:	ecc080e7          	jalr	-308(ra) # 80001374 <_Z15thread_dispatchv>
}
    800064b0:	01813083          	ld	ra,24(sp)
    800064b4:	01013403          	ld	s0,16(sp)
    800064b8:	00813483          	ld	s1,8(sp)
    800064bc:	00013903          	ld	s2,0(sp)
    800064c0:	02010113          	addi	sp,sp,32
    800064c4:	00008067          	ret

00000000800064c8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800064c8:	fe010113          	addi	sp,sp,-32
    800064cc:	00113c23          	sd	ra,24(sp)
    800064d0:	00813823          	sd	s0,16(sp)
    800064d4:	00913423          	sd	s1,8(sp)
    800064d8:	01213023          	sd	s2,0(sp)
    800064dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800064e0:	00000913          	li	s2,0
    800064e4:	0380006f          	j	8000651c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800064e8:	ffffb097          	auipc	ra,0xffffb
    800064ec:	e8c080e7          	jalr	-372(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800064f0:	00148493          	addi	s1,s1,1
    800064f4:	000027b7          	lui	a5,0x2
    800064f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800064fc:	0097ee63          	bltu	a5,s1,80006518 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006500:	00000713          	li	a4,0
    80006504:	000077b7          	lui	a5,0x7
    80006508:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000650c:	fce7eee3          	bltu	a5,a4,800064e8 <_ZL11workerBodyAPv+0x20>
    80006510:	00170713          	addi	a4,a4,1
    80006514:	ff1ff06f          	j	80006504 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006518:	00190913          	addi	s2,s2,1
    8000651c:	00900793          	li	a5,9
    80006520:	0527e063          	bltu	a5,s2,80006560 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006524:	00003517          	auipc	a0,0x3
    80006528:	d4c50513          	addi	a0,a0,-692 # 80009270 <_ZZ17interruptPrintIntmE6digits+0xf8>
    8000652c:	fffff097          	auipc	ra,0xfffff
    80006530:	234080e7          	jalr	564(ra) # 80005760 <_Z11printStringPKc>
    80006534:	00000613          	li	a2,0
    80006538:	00a00593          	li	a1,10
    8000653c:	0009051b          	sext.w	a0,s2
    80006540:	fffff097          	auipc	ra,0xfffff
    80006544:	3d0080e7          	jalr	976(ra) # 80005910 <_Z8printIntiii>
    80006548:	00003517          	auipc	a0,0x3
    8000654c:	f7850513          	addi	a0,a0,-136 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80006550:	fffff097          	auipc	ra,0xfffff
    80006554:	210080e7          	jalr	528(ra) # 80005760 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006558:	00000493          	li	s1,0
    8000655c:	f99ff06f          	j	800064f4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006560:	00003517          	auipc	a0,0x3
    80006564:	d1850513          	addi	a0,a0,-744 # 80009278 <_ZZ17interruptPrintIntmE6digits+0x100>
    80006568:	fffff097          	auipc	ra,0xfffff
    8000656c:	1f8080e7          	jalr	504(ra) # 80005760 <_Z11printStringPKc>
    finishedA = true;
    80006570:	00100793          	li	a5,1
    80006574:	00005717          	auipc	a4,0x5
    80006578:	64f704a3          	sb	a5,1609(a4) # 8000bbbd <_ZL9finishedA>
}
    8000657c:	01813083          	ld	ra,24(sp)
    80006580:	01013403          	ld	s0,16(sp)
    80006584:	00813483          	ld	s1,8(sp)
    80006588:	00013903          	ld	s2,0(sp)
    8000658c:	02010113          	addi	sp,sp,32
    80006590:	00008067          	ret

0000000080006594 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006594:	fd010113          	addi	sp,sp,-48
    80006598:	02113423          	sd	ra,40(sp)
    8000659c:	02813023          	sd	s0,32(sp)
    800065a0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800065a4:	00000613          	li	a2,0
    800065a8:	00000597          	auipc	a1,0x0
    800065ac:	f2058593          	addi	a1,a1,-224 # 800064c8 <_ZL11workerBodyAPv>
    800065b0:	fd040513          	addi	a0,s0,-48
    800065b4:	ffffb097          	auipc	ra,0xffffb
    800065b8:	d08080e7          	jalr	-760(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800065bc:	00003517          	auipc	a0,0x3
    800065c0:	d4c50513          	addi	a0,a0,-692 # 80009308 <_ZZ17interruptPrintIntmE6digits+0x190>
    800065c4:	fffff097          	auipc	ra,0xfffff
    800065c8:	19c080e7          	jalr	412(ra) # 80005760 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800065cc:	00000613          	li	a2,0
    800065d0:	00000597          	auipc	a1,0x0
    800065d4:	e1458593          	addi	a1,a1,-492 # 800063e4 <_ZL11workerBodyBPv>
    800065d8:	fd840513          	addi	a0,s0,-40
    800065dc:	ffffb097          	auipc	ra,0xffffb
    800065e0:	ce0080e7          	jalr	-800(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800065e4:	00003517          	auipc	a0,0x3
    800065e8:	d3c50513          	addi	a0,a0,-708 # 80009320 <_ZZ17interruptPrintIntmE6digits+0x1a8>
    800065ec:	fffff097          	auipc	ra,0xfffff
    800065f0:	174080e7          	jalr	372(ra) # 80005760 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800065f4:	00000613          	li	a2,0
    800065f8:	00000597          	auipc	a1,0x0
    800065fc:	c6c58593          	addi	a1,a1,-916 # 80006264 <_ZL11workerBodyCPv>
    80006600:	fe040513          	addi	a0,s0,-32
    80006604:	ffffb097          	auipc	ra,0xffffb
    80006608:	cb8080e7          	jalr	-840(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000660c:	00003517          	auipc	a0,0x3
    80006610:	d2c50513          	addi	a0,a0,-724 # 80009338 <_ZZ17interruptPrintIntmE6digits+0x1c0>
    80006614:	fffff097          	auipc	ra,0xfffff
    80006618:	14c080e7          	jalr	332(ra) # 80005760 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000661c:	00000613          	li	a2,0
    80006620:	00000597          	auipc	a1,0x0
    80006624:	afc58593          	addi	a1,a1,-1284 # 8000611c <_ZL11workerBodyDPv>
    80006628:	fe840513          	addi	a0,s0,-24
    8000662c:	ffffb097          	auipc	ra,0xffffb
    80006630:	c90080e7          	jalr	-880(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006634:	00003517          	auipc	a0,0x3
    80006638:	d1c50513          	addi	a0,a0,-740 # 80009350 <_ZZ17interruptPrintIntmE6digits+0x1d8>
    8000663c:	fffff097          	auipc	ra,0xfffff
    80006640:	124080e7          	jalr	292(ra) # 80005760 <_Z11printStringPKc>
    80006644:	00c0006f          	j	80006650 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006648:	ffffb097          	auipc	ra,0xffffb
    8000664c:	d2c080e7          	jalr	-724(ra) # 80001374 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006650:	00005797          	auipc	a5,0x5
    80006654:	56d7c783          	lbu	a5,1389(a5) # 8000bbbd <_ZL9finishedA>
    80006658:	fe0788e3          	beqz	a5,80006648 <_Z16System_Mode_testv+0xb4>
    8000665c:	00005797          	auipc	a5,0x5
    80006660:	5607c783          	lbu	a5,1376(a5) # 8000bbbc <_ZL9finishedB>
    80006664:	fe0782e3          	beqz	a5,80006648 <_Z16System_Mode_testv+0xb4>
    80006668:	00005797          	auipc	a5,0x5
    8000666c:	5537c783          	lbu	a5,1363(a5) # 8000bbbb <_ZL9finishedC>
    80006670:	fc078ce3          	beqz	a5,80006648 <_Z16System_Mode_testv+0xb4>
    80006674:	00005797          	auipc	a5,0x5
    80006678:	5467c783          	lbu	a5,1350(a5) # 8000bbba <_ZL9finishedD>
    8000667c:	fc0786e3          	beqz	a5,80006648 <_Z16System_Mode_testv+0xb4>
    }

}
    80006680:	02813083          	ld	ra,40(sp)
    80006684:	02013403          	ld	s0,32(sp)
    80006688:	03010113          	addi	sp,sp,48
    8000668c:	00008067          	ret

0000000080006690 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006690:	fe010113          	addi	sp,sp,-32
    80006694:	00113c23          	sd	ra,24(sp)
    80006698:	00813823          	sd	s0,16(sp)
    8000669c:	00913423          	sd	s1,8(sp)
    800066a0:	01213023          	sd	s2,0(sp)
    800066a4:	02010413          	addi	s0,sp,32
    800066a8:	00050493          	mv	s1,a0
    800066ac:	00058913          	mv	s2,a1
    800066b0:	0015879b          	addiw	a5,a1,1
    800066b4:	0007851b          	sext.w	a0,a5
    800066b8:	00f4a023          	sw	a5,0(s1)
    800066bc:	0004a823          	sw	zero,16(s1)
    800066c0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800066c4:	00251513          	slli	a0,a0,0x2
    800066c8:	ffffb097          	auipc	ra,0xffffb
    800066cc:	b7c080e7          	jalr	-1156(ra) # 80001244 <_Z9mem_allocm>
    800066d0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800066d4:	00000593          	li	a1,0
    800066d8:	02048513          	addi	a0,s1,32
    800066dc:	ffffb097          	auipc	ra,0xffffb
    800066e0:	cbc080e7          	jalr	-836(ra) # 80001398 <_Z8sem_openPP10_semaphorej>
    sem_open(&spaceAvailable, _cap);
    800066e4:	00090593          	mv	a1,s2
    800066e8:	01848513          	addi	a0,s1,24
    800066ec:	ffffb097          	auipc	ra,0xffffb
    800066f0:	cac080e7          	jalr	-852(ra) # 80001398 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexHead, 1);
    800066f4:	00100593          	li	a1,1
    800066f8:	02848513          	addi	a0,s1,40
    800066fc:	ffffb097          	auipc	ra,0xffffb
    80006700:	c9c080e7          	jalr	-868(ra) # 80001398 <_Z8sem_openPP10_semaphorej>
    sem_open(&mutexTail, 1);
    80006704:	00100593          	li	a1,1
    80006708:	03048513          	addi	a0,s1,48
    8000670c:	ffffb097          	auipc	ra,0xffffb
    80006710:	c8c080e7          	jalr	-884(ra) # 80001398 <_Z8sem_openPP10_semaphorej>
}
    80006714:	01813083          	ld	ra,24(sp)
    80006718:	01013403          	ld	s0,16(sp)
    8000671c:	00813483          	ld	s1,8(sp)
    80006720:	00013903          	ld	s2,0(sp)
    80006724:	02010113          	addi	sp,sp,32
    80006728:	00008067          	ret

000000008000672c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000672c:	fe010113          	addi	sp,sp,-32
    80006730:	00113c23          	sd	ra,24(sp)
    80006734:	00813823          	sd	s0,16(sp)
    80006738:	00913423          	sd	s1,8(sp)
    8000673c:	01213023          	sd	s2,0(sp)
    80006740:	02010413          	addi	s0,sp,32
    80006744:	00050493          	mv	s1,a0
    80006748:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000674c:	01853503          	ld	a0,24(a0)
    80006750:	ffffb097          	auipc	ra,0xffffb
    80006754:	cc4080e7          	jalr	-828(ra) # 80001414 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexTail);
    80006758:	0304b503          	ld	a0,48(s1)
    8000675c:	ffffb097          	auipc	ra,0xffffb
    80006760:	cb8080e7          	jalr	-840(ra) # 80001414 <_Z8sem_waitP10_semaphore>
    buffer[tail] = val;
    80006764:	0084b783          	ld	a5,8(s1)
    80006768:	0144a703          	lw	a4,20(s1)
    8000676c:	00271713          	slli	a4,a4,0x2
    80006770:	00e787b3          	add	a5,a5,a4
    80006774:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006778:	0144a783          	lw	a5,20(s1)
    8000677c:	0017879b          	addiw	a5,a5,1
    80006780:	0004a703          	lw	a4,0(s1)
    80006784:	02e7e7bb          	remw	a5,a5,a4
    80006788:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000678c:	0304b503          	ld	a0,48(s1)
    80006790:	ffffb097          	auipc	ra,0xffffb
    80006794:	cc0080e7          	jalr	-832(ra) # 80001450 <_Z10sem_signalP10_semaphore>

    sem_signal(itemAvailable);
    80006798:	0204b503          	ld	a0,32(s1)
    8000679c:	ffffb097          	auipc	ra,0xffffb
    800067a0:	cb4080e7          	jalr	-844(ra) # 80001450 <_Z10sem_signalP10_semaphore>

}
    800067a4:	01813083          	ld	ra,24(sp)
    800067a8:	01013403          	ld	s0,16(sp)
    800067ac:	00813483          	ld	s1,8(sp)
    800067b0:	00013903          	ld	s2,0(sp)
    800067b4:	02010113          	addi	sp,sp,32
    800067b8:	00008067          	ret

00000000800067bc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800067bc:	fe010113          	addi	sp,sp,-32
    800067c0:	00113c23          	sd	ra,24(sp)
    800067c4:	00813823          	sd	s0,16(sp)
    800067c8:	00913423          	sd	s1,8(sp)
    800067cc:	01213023          	sd	s2,0(sp)
    800067d0:	02010413          	addi	s0,sp,32
    800067d4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800067d8:	02053503          	ld	a0,32(a0)
    800067dc:	ffffb097          	auipc	ra,0xffffb
    800067e0:	c38080e7          	jalr	-968(ra) # 80001414 <_Z8sem_waitP10_semaphore>

    sem_wait(mutexHead);
    800067e4:	0284b503          	ld	a0,40(s1)
    800067e8:	ffffb097          	auipc	ra,0xffffb
    800067ec:	c2c080e7          	jalr	-980(ra) # 80001414 <_Z8sem_waitP10_semaphore>

    int ret = buffer[head];
    800067f0:	0084b703          	ld	a4,8(s1)
    800067f4:	0104a783          	lw	a5,16(s1)
    800067f8:	00279693          	slli	a3,a5,0x2
    800067fc:	00d70733          	add	a4,a4,a3
    80006800:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006804:	0017879b          	addiw	a5,a5,1
    80006808:	0004a703          	lw	a4,0(s1)
    8000680c:	02e7e7bb          	remw	a5,a5,a4
    80006810:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006814:	0284b503          	ld	a0,40(s1)
    80006818:	ffffb097          	auipc	ra,0xffffb
    8000681c:	c38080e7          	jalr	-968(ra) # 80001450 <_Z10sem_signalP10_semaphore>

    sem_signal(spaceAvailable);
    80006820:	0184b503          	ld	a0,24(s1)
    80006824:	ffffb097          	auipc	ra,0xffffb
    80006828:	c2c080e7          	jalr	-980(ra) # 80001450 <_Z10sem_signalP10_semaphore>

    return ret;
}
    8000682c:	00090513          	mv	a0,s2
    80006830:	01813083          	ld	ra,24(sp)
    80006834:	01013403          	ld	s0,16(sp)
    80006838:	00813483          	ld	s1,8(sp)
    8000683c:	00013903          	ld	s2,0(sp)
    80006840:	02010113          	addi	sp,sp,32
    80006844:	00008067          	ret

0000000080006848 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006848:	fe010113          	addi	sp,sp,-32
    8000684c:	00113c23          	sd	ra,24(sp)
    80006850:	00813823          	sd	s0,16(sp)
    80006854:	00913423          	sd	s1,8(sp)
    80006858:	01213023          	sd	s2,0(sp)
    8000685c:	02010413          	addi	s0,sp,32
    80006860:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006864:	02853503          	ld	a0,40(a0)
    80006868:	ffffb097          	auipc	ra,0xffffb
    8000686c:	bac080e7          	jalr	-1108(ra) # 80001414 <_Z8sem_waitP10_semaphore>
    sem_wait(mutexTail);
    80006870:	0304b503          	ld	a0,48(s1)
    80006874:	ffffb097          	auipc	ra,0xffffb
    80006878:	ba0080e7          	jalr	-1120(ra) # 80001414 <_Z8sem_waitP10_semaphore>

    if (tail >= head) {
    8000687c:	0144a783          	lw	a5,20(s1)
    80006880:	0104a903          	lw	s2,16(s1)
    80006884:	0327ce63          	blt	a5,s2,800068c0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006888:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000688c:	0304b503          	ld	a0,48(s1)
    80006890:	ffffb097          	auipc	ra,0xffffb
    80006894:	bc0080e7          	jalr	-1088(ra) # 80001450 <_Z10sem_signalP10_semaphore>
    sem_signal(mutexHead);
    80006898:	0284b503          	ld	a0,40(s1)
    8000689c:	ffffb097          	auipc	ra,0xffffb
    800068a0:	bb4080e7          	jalr	-1100(ra) # 80001450 <_Z10sem_signalP10_semaphore>

    return ret;
}
    800068a4:	00090513          	mv	a0,s2
    800068a8:	01813083          	ld	ra,24(sp)
    800068ac:	01013403          	ld	s0,16(sp)
    800068b0:	00813483          	ld	s1,8(sp)
    800068b4:	00013903          	ld	s2,0(sp)
    800068b8:	02010113          	addi	sp,sp,32
    800068bc:	00008067          	ret
        ret = cap - head + tail;
    800068c0:	0004a703          	lw	a4,0(s1)
    800068c4:	4127093b          	subw	s2,a4,s2
    800068c8:	00f9093b          	addw	s2,s2,a5
    800068cc:	fc1ff06f          	j	8000688c <_ZN6Buffer6getCntEv+0x44>

00000000800068d0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800068d0:	fe010113          	addi	sp,sp,-32
    800068d4:	00113c23          	sd	ra,24(sp)
    800068d8:	00813823          	sd	s0,16(sp)
    800068dc:	00913423          	sd	s1,8(sp)
    800068e0:	02010413          	addi	s0,sp,32
    800068e4:	00050493          	mv	s1,a0
    putc('\n');
    800068e8:	00a00513          	li	a0,10
    800068ec:	ffffb097          	auipc	ra,0xffffb
    800068f0:	c88080e7          	jalr	-888(ra) # 80001574 <_Z4putcc>
    printString("Buffer deleted!\n");
    800068f4:	00003517          	auipc	a0,0x3
    800068f8:	a7450513          	addi	a0,a0,-1420 # 80009368 <_ZZ17interruptPrintIntmE6digits+0x1f0>
    800068fc:	fffff097          	auipc	ra,0xfffff
    80006900:	e64080e7          	jalr	-412(ra) # 80005760 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006904:	00048513          	mv	a0,s1
    80006908:	00000097          	auipc	ra,0x0
    8000690c:	f40080e7          	jalr	-192(ra) # 80006848 <_ZN6Buffer6getCntEv>
    80006910:	02a05c63          	blez	a0,80006948 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006914:	0084b783          	ld	a5,8(s1)
    80006918:	0104a703          	lw	a4,16(s1)
    8000691c:	00271713          	slli	a4,a4,0x2
    80006920:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006924:	0007c503          	lbu	a0,0(a5)
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	c4c080e7          	jalr	-948(ra) # 80001574 <_Z4putcc>
        head = (head + 1) % cap;
    80006930:	0104a783          	lw	a5,16(s1)
    80006934:	0017879b          	addiw	a5,a5,1
    80006938:	0004a703          	lw	a4,0(s1)
    8000693c:	02e7e7bb          	remw	a5,a5,a4
    80006940:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006944:	fc1ff06f          	j	80006904 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006948:	02100513          	li	a0,33
    8000694c:	ffffb097          	auipc	ra,0xffffb
    80006950:	c28080e7          	jalr	-984(ra) # 80001574 <_Z4putcc>
    putc('\n');
    80006954:	00a00513          	li	a0,10
    80006958:	ffffb097          	auipc	ra,0xffffb
    8000695c:	c1c080e7          	jalr	-996(ra) # 80001574 <_Z4putcc>
    mem_free(buffer);
    80006960:	0084b503          	ld	a0,8(s1)
    80006964:	ffffb097          	auipc	ra,0xffffb
    80006968:	928080e7          	jalr	-1752(ra) # 8000128c <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000696c:	0204b503          	ld	a0,32(s1)
    80006970:	ffffb097          	auipc	ra,0xffffb
    80006974:	a68080e7          	jalr	-1432(ra) # 800013d8 <_Z9sem_closeP10_semaphore>
    sem_close(spaceAvailable);
    80006978:	0184b503          	ld	a0,24(s1)
    8000697c:	ffffb097          	auipc	ra,0xffffb
    80006980:	a5c080e7          	jalr	-1444(ra) # 800013d8 <_Z9sem_closeP10_semaphore>
    sem_close(mutexTail);
    80006984:	0304b503          	ld	a0,48(s1)
    80006988:	ffffb097          	auipc	ra,0xffffb
    8000698c:	a50080e7          	jalr	-1456(ra) # 800013d8 <_Z9sem_closeP10_semaphore>
    sem_close(mutexHead);
    80006990:	0284b503          	ld	a0,40(s1)
    80006994:	ffffb097          	auipc	ra,0xffffb
    80006998:	a44080e7          	jalr	-1468(ra) # 800013d8 <_Z9sem_closeP10_semaphore>
}
    8000699c:	01813083          	ld	ra,24(sp)
    800069a0:	01013403          	ld	s0,16(sp)
    800069a4:	00813483          	ld	s1,8(sp)
    800069a8:	02010113          	addi	sp,sp,32
    800069ac:	00008067          	ret

00000000800069b0 <start>:
    800069b0:	ff010113          	addi	sp,sp,-16
    800069b4:	00813423          	sd	s0,8(sp)
    800069b8:	01010413          	addi	s0,sp,16
    800069bc:	300027f3          	csrr	a5,mstatus
    800069c0:	ffffe737          	lui	a4,0xffffe
    800069c4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff19df>
    800069c8:	00e7f7b3          	and	a5,a5,a4
    800069cc:	00001737          	lui	a4,0x1
    800069d0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800069d4:	00e7e7b3          	or	a5,a5,a4
    800069d8:	30079073          	csrw	mstatus,a5
    800069dc:	00000797          	auipc	a5,0x0
    800069e0:	16078793          	addi	a5,a5,352 # 80006b3c <system_main>
    800069e4:	34179073          	csrw	mepc,a5
    800069e8:	00000793          	li	a5,0
    800069ec:	18079073          	csrw	satp,a5
    800069f0:	000107b7          	lui	a5,0x10
    800069f4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800069f8:	30279073          	csrw	medeleg,a5
    800069fc:	30379073          	csrw	mideleg,a5
    80006a00:	104027f3          	csrr	a5,sie
    80006a04:	2227e793          	ori	a5,a5,546
    80006a08:	10479073          	csrw	sie,a5
    80006a0c:	fff00793          	li	a5,-1
    80006a10:	00a7d793          	srli	a5,a5,0xa
    80006a14:	3b079073          	csrw	pmpaddr0,a5
    80006a18:	00f00793          	li	a5,15
    80006a1c:	3a079073          	csrw	pmpcfg0,a5
    80006a20:	f14027f3          	csrr	a5,mhartid
    80006a24:	0200c737          	lui	a4,0x200c
    80006a28:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a2c:	0007869b          	sext.w	a3,a5
    80006a30:	00269713          	slli	a4,a3,0x2
    80006a34:	000f4637          	lui	a2,0xf4
    80006a38:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a3c:	00d70733          	add	a4,a4,a3
    80006a40:	0037979b          	slliw	a5,a5,0x3
    80006a44:	020046b7          	lui	a3,0x2004
    80006a48:	00d787b3          	add	a5,a5,a3
    80006a4c:	00c585b3          	add	a1,a1,a2
    80006a50:	00371693          	slli	a3,a4,0x3
    80006a54:	00005717          	auipc	a4,0x5
    80006a58:	16c70713          	addi	a4,a4,364 # 8000bbc0 <timer_scratch>
    80006a5c:	00b7b023          	sd	a1,0(a5)
    80006a60:	00d70733          	add	a4,a4,a3
    80006a64:	00f73c23          	sd	a5,24(a4)
    80006a68:	02c73023          	sd	a2,32(a4)
    80006a6c:	34071073          	csrw	mscratch,a4
    80006a70:	00000797          	auipc	a5,0x0
    80006a74:	6e078793          	addi	a5,a5,1760 # 80007150 <timervec>
    80006a78:	30579073          	csrw	mtvec,a5
    80006a7c:	300027f3          	csrr	a5,mstatus
    80006a80:	0087e793          	ori	a5,a5,8
    80006a84:	30079073          	csrw	mstatus,a5
    80006a88:	304027f3          	csrr	a5,mie
    80006a8c:	0807e793          	ori	a5,a5,128
    80006a90:	30479073          	csrw	mie,a5
    80006a94:	f14027f3          	csrr	a5,mhartid
    80006a98:	0007879b          	sext.w	a5,a5
    80006a9c:	00078213          	mv	tp,a5
    80006aa0:	30200073          	mret
    80006aa4:	00813403          	ld	s0,8(sp)
    80006aa8:	01010113          	addi	sp,sp,16
    80006aac:	00008067          	ret

0000000080006ab0 <timerinit>:
    80006ab0:	ff010113          	addi	sp,sp,-16
    80006ab4:	00813423          	sd	s0,8(sp)
    80006ab8:	01010413          	addi	s0,sp,16
    80006abc:	f14027f3          	csrr	a5,mhartid
    80006ac0:	0200c737          	lui	a4,0x200c
    80006ac4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006ac8:	0007869b          	sext.w	a3,a5
    80006acc:	00269713          	slli	a4,a3,0x2
    80006ad0:	000f4637          	lui	a2,0xf4
    80006ad4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006ad8:	00d70733          	add	a4,a4,a3
    80006adc:	0037979b          	slliw	a5,a5,0x3
    80006ae0:	020046b7          	lui	a3,0x2004
    80006ae4:	00d787b3          	add	a5,a5,a3
    80006ae8:	00c585b3          	add	a1,a1,a2
    80006aec:	00371693          	slli	a3,a4,0x3
    80006af0:	00005717          	auipc	a4,0x5
    80006af4:	0d070713          	addi	a4,a4,208 # 8000bbc0 <timer_scratch>
    80006af8:	00b7b023          	sd	a1,0(a5)
    80006afc:	00d70733          	add	a4,a4,a3
    80006b00:	00f73c23          	sd	a5,24(a4)
    80006b04:	02c73023          	sd	a2,32(a4)
    80006b08:	34071073          	csrw	mscratch,a4
    80006b0c:	00000797          	auipc	a5,0x0
    80006b10:	64478793          	addi	a5,a5,1604 # 80007150 <timervec>
    80006b14:	30579073          	csrw	mtvec,a5
    80006b18:	300027f3          	csrr	a5,mstatus
    80006b1c:	0087e793          	ori	a5,a5,8
    80006b20:	30079073          	csrw	mstatus,a5
    80006b24:	304027f3          	csrr	a5,mie
    80006b28:	0807e793          	ori	a5,a5,128
    80006b2c:	30479073          	csrw	mie,a5
    80006b30:	00813403          	ld	s0,8(sp)
    80006b34:	01010113          	addi	sp,sp,16
    80006b38:	00008067          	ret

0000000080006b3c <system_main>:
    80006b3c:	fe010113          	addi	sp,sp,-32
    80006b40:	00813823          	sd	s0,16(sp)
    80006b44:	00913423          	sd	s1,8(sp)
    80006b48:	00113c23          	sd	ra,24(sp)
    80006b4c:	02010413          	addi	s0,sp,32
    80006b50:	00000097          	auipc	ra,0x0
    80006b54:	0c4080e7          	jalr	196(ra) # 80006c14 <cpuid>
    80006b58:	00005497          	auipc	s1,0x5
    80006b5c:	f9848493          	addi	s1,s1,-104 # 8000baf0 <started>
    80006b60:	02050263          	beqz	a0,80006b84 <system_main+0x48>
    80006b64:	0004a783          	lw	a5,0(s1)
    80006b68:	0007879b          	sext.w	a5,a5
    80006b6c:	fe078ce3          	beqz	a5,80006b64 <system_main+0x28>
    80006b70:	0ff0000f          	fence
    80006b74:	00003517          	auipc	a0,0x3
    80006b78:	ac450513          	addi	a0,a0,-1340 # 80009638 <_ZZ17interruptPrintIntmE6digits+0x4c0>
    80006b7c:	00001097          	auipc	ra,0x1
    80006b80:	a70080e7          	jalr	-1424(ra) # 800075ec <panic>
    80006b84:	00001097          	auipc	ra,0x1
    80006b88:	9c4080e7          	jalr	-1596(ra) # 80007548 <consoleinit>
    80006b8c:	00001097          	auipc	ra,0x1
    80006b90:	150080e7          	jalr	336(ra) # 80007cdc <printfinit>
    80006b94:	00003517          	auipc	a0,0x3
    80006b98:	92c50513          	addi	a0,a0,-1748 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80006b9c:	00001097          	auipc	ra,0x1
    80006ba0:	aac080e7          	jalr	-1364(ra) # 80007648 <__printf>
    80006ba4:	00003517          	auipc	a0,0x3
    80006ba8:	a6450513          	addi	a0,a0,-1436 # 80009608 <_ZZ17interruptPrintIntmE6digits+0x490>
    80006bac:	00001097          	auipc	ra,0x1
    80006bb0:	a9c080e7          	jalr	-1380(ra) # 80007648 <__printf>
    80006bb4:	00003517          	auipc	a0,0x3
    80006bb8:	90c50513          	addi	a0,a0,-1780 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80006bbc:	00001097          	auipc	ra,0x1
    80006bc0:	a8c080e7          	jalr	-1396(ra) # 80007648 <__printf>
    80006bc4:	00001097          	auipc	ra,0x1
    80006bc8:	4a4080e7          	jalr	1188(ra) # 80008068 <kinit>
    80006bcc:	00000097          	auipc	ra,0x0
    80006bd0:	148080e7          	jalr	328(ra) # 80006d14 <trapinit>
    80006bd4:	00000097          	auipc	ra,0x0
    80006bd8:	16c080e7          	jalr	364(ra) # 80006d40 <trapinithart>
    80006bdc:	00000097          	auipc	ra,0x0
    80006be0:	5b4080e7          	jalr	1460(ra) # 80007190 <plicinit>
    80006be4:	00000097          	auipc	ra,0x0
    80006be8:	5d4080e7          	jalr	1492(ra) # 800071b8 <plicinithart>
    80006bec:	00000097          	auipc	ra,0x0
    80006bf0:	078080e7          	jalr	120(ra) # 80006c64 <userinit>
    80006bf4:	0ff0000f          	fence
    80006bf8:	00100793          	li	a5,1
    80006bfc:	00003517          	auipc	a0,0x3
    80006c00:	a2450513          	addi	a0,a0,-1500 # 80009620 <_ZZ17interruptPrintIntmE6digits+0x4a8>
    80006c04:	00f4a023          	sw	a5,0(s1)
    80006c08:	00001097          	auipc	ra,0x1
    80006c0c:	a40080e7          	jalr	-1472(ra) # 80007648 <__printf>
    80006c10:	0000006f          	j	80006c10 <system_main+0xd4>

0000000080006c14 <cpuid>:
    80006c14:	ff010113          	addi	sp,sp,-16
    80006c18:	00813423          	sd	s0,8(sp)
    80006c1c:	01010413          	addi	s0,sp,16
    80006c20:	00020513          	mv	a0,tp
    80006c24:	00813403          	ld	s0,8(sp)
    80006c28:	0005051b          	sext.w	a0,a0
    80006c2c:	01010113          	addi	sp,sp,16
    80006c30:	00008067          	ret

0000000080006c34 <mycpu>:
    80006c34:	ff010113          	addi	sp,sp,-16
    80006c38:	00813423          	sd	s0,8(sp)
    80006c3c:	01010413          	addi	s0,sp,16
    80006c40:	00020793          	mv	a5,tp
    80006c44:	00813403          	ld	s0,8(sp)
    80006c48:	0007879b          	sext.w	a5,a5
    80006c4c:	00779793          	slli	a5,a5,0x7
    80006c50:	00006517          	auipc	a0,0x6
    80006c54:	fa050513          	addi	a0,a0,-96 # 8000cbf0 <cpus>
    80006c58:	00f50533          	add	a0,a0,a5
    80006c5c:	01010113          	addi	sp,sp,16
    80006c60:	00008067          	ret

0000000080006c64 <userinit>:
    80006c64:	ff010113          	addi	sp,sp,-16
    80006c68:	00813423          	sd	s0,8(sp)
    80006c6c:	01010413          	addi	s0,sp,16
    80006c70:	00813403          	ld	s0,8(sp)
    80006c74:	01010113          	addi	sp,sp,16
    80006c78:	ffffb317          	auipc	t1,0xffffb
    80006c7c:	1e030067          	jr	480(t1) # 80001e58 <main>

0000000080006c80 <either_copyout>:
    80006c80:	ff010113          	addi	sp,sp,-16
    80006c84:	00813023          	sd	s0,0(sp)
    80006c88:	00113423          	sd	ra,8(sp)
    80006c8c:	01010413          	addi	s0,sp,16
    80006c90:	02051663          	bnez	a0,80006cbc <either_copyout+0x3c>
    80006c94:	00058513          	mv	a0,a1
    80006c98:	00060593          	mv	a1,a2
    80006c9c:	0006861b          	sext.w	a2,a3
    80006ca0:	00002097          	auipc	ra,0x2
    80006ca4:	c54080e7          	jalr	-940(ra) # 800088f4 <__memmove>
    80006ca8:	00813083          	ld	ra,8(sp)
    80006cac:	00013403          	ld	s0,0(sp)
    80006cb0:	00000513          	li	a0,0
    80006cb4:	01010113          	addi	sp,sp,16
    80006cb8:	00008067          	ret
    80006cbc:	00003517          	auipc	a0,0x3
    80006cc0:	9a450513          	addi	a0,a0,-1628 # 80009660 <_ZZ17interruptPrintIntmE6digits+0x4e8>
    80006cc4:	00001097          	auipc	ra,0x1
    80006cc8:	928080e7          	jalr	-1752(ra) # 800075ec <panic>

0000000080006ccc <either_copyin>:
    80006ccc:	ff010113          	addi	sp,sp,-16
    80006cd0:	00813023          	sd	s0,0(sp)
    80006cd4:	00113423          	sd	ra,8(sp)
    80006cd8:	01010413          	addi	s0,sp,16
    80006cdc:	02059463          	bnez	a1,80006d04 <either_copyin+0x38>
    80006ce0:	00060593          	mv	a1,a2
    80006ce4:	0006861b          	sext.w	a2,a3
    80006ce8:	00002097          	auipc	ra,0x2
    80006cec:	c0c080e7          	jalr	-1012(ra) # 800088f4 <__memmove>
    80006cf0:	00813083          	ld	ra,8(sp)
    80006cf4:	00013403          	ld	s0,0(sp)
    80006cf8:	00000513          	li	a0,0
    80006cfc:	01010113          	addi	sp,sp,16
    80006d00:	00008067          	ret
    80006d04:	00003517          	auipc	a0,0x3
    80006d08:	98450513          	addi	a0,a0,-1660 # 80009688 <_ZZ17interruptPrintIntmE6digits+0x510>
    80006d0c:	00001097          	auipc	ra,0x1
    80006d10:	8e0080e7          	jalr	-1824(ra) # 800075ec <panic>

0000000080006d14 <trapinit>:
    80006d14:	ff010113          	addi	sp,sp,-16
    80006d18:	00813423          	sd	s0,8(sp)
    80006d1c:	01010413          	addi	s0,sp,16
    80006d20:	00813403          	ld	s0,8(sp)
    80006d24:	00003597          	auipc	a1,0x3
    80006d28:	98c58593          	addi	a1,a1,-1652 # 800096b0 <_ZZ17interruptPrintIntmE6digits+0x538>
    80006d2c:	00006517          	auipc	a0,0x6
    80006d30:	f4450513          	addi	a0,a0,-188 # 8000cc70 <tickslock>
    80006d34:	01010113          	addi	sp,sp,16
    80006d38:	00001317          	auipc	t1,0x1
    80006d3c:	5c030067          	jr	1472(t1) # 800082f8 <initlock>

0000000080006d40 <trapinithart>:
    80006d40:	ff010113          	addi	sp,sp,-16
    80006d44:	00813423          	sd	s0,8(sp)
    80006d48:	01010413          	addi	s0,sp,16
    80006d4c:	00000797          	auipc	a5,0x0
    80006d50:	2f478793          	addi	a5,a5,756 # 80007040 <kernelvec>
    80006d54:	10579073          	csrw	stvec,a5
    80006d58:	00813403          	ld	s0,8(sp)
    80006d5c:	01010113          	addi	sp,sp,16
    80006d60:	00008067          	ret

0000000080006d64 <usertrap>:
    80006d64:	ff010113          	addi	sp,sp,-16
    80006d68:	00813423          	sd	s0,8(sp)
    80006d6c:	01010413          	addi	s0,sp,16
    80006d70:	00813403          	ld	s0,8(sp)
    80006d74:	01010113          	addi	sp,sp,16
    80006d78:	00008067          	ret

0000000080006d7c <usertrapret>:
    80006d7c:	ff010113          	addi	sp,sp,-16
    80006d80:	00813423          	sd	s0,8(sp)
    80006d84:	01010413          	addi	s0,sp,16
    80006d88:	00813403          	ld	s0,8(sp)
    80006d8c:	01010113          	addi	sp,sp,16
    80006d90:	00008067          	ret

0000000080006d94 <kerneltrap>:
    80006d94:	fe010113          	addi	sp,sp,-32
    80006d98:	00813823          	sd	s0,16(sp)
    80006d9c:	00113c23          	sd	ra,24(sp)
    80006da0:	00913423          	sd	s1,8(sp)
    80006da4:	02010413          	addi	s0,sp,32
    80006da8:	142025f3          	csrr	a1,scause
    80006dac:	100027f3          	csrr	a5,sstatus
    80006db0:	0027f793          	andi	a5,a5,2
    80006db4:	10079c63          	bnez	a5,80006ecc <kerneltrap+0x138>
    80006db8:	142027f3          	csrr	a5,scause
    80006dbc:	0207ce63          	bltz	a5,80006df8 <kerneltrap+0x64>
    80006dc0:	00003517          	auipc	a0,0x3
    80006dc4:	93850513          	addi	a0,a0,-1736 # 800096f8 <_ZZ17interruptPrintIntmE6digits+0x580>
    80006dc8:	00001097          	auipc	ra,0x1
    80006dcc:	880080e7          	jalr	-1920(ra) # 80007648 <__printf>
    80006dd0:	141025f3          	csrr	a1,sepc
    80006dd4:	14302673          	csrr	a2,stval
    80006dd8:	00003517          	auipc	a0,0x3
    80006ddc:	93050513          	addi	a0,a0,-1744 # 80009708 <_ZZ17interruptPrintIntmE6digits+0x590>
    80006de0:	00001097          	auipc	ra,0x1
    80006de4:	868080e7          	jalr	-1944(ra) # 80007648 <__printf>
    80006de8:	00003517          	auipc	a0,0x3
    80006dec:	93850513          	addi	a0,a0,-1736 # 80009720 <_ZZ17interruptPrintIntmE6digits+0x5a8>
    80006df0:	00000097          	auipc	ra,0x0
    80006df4:	7fc080e7          	jalr	2044(ra) # 800075ec <panic>
    80006df8:	0ff7f713          	andi	a4,a5,255
    80006dfc:	00900693          	li	a3,9
    80006e00:	04d70063          	beq	a4,a3,80006e40 <kerneltrap+0xac>
    80006e04:	fff00713          	li	a4,-1
    80006e08:	03f71713          	slli	a4,a4,0x3f
    80006e0c:	00170713          	addi	a4,a4,1
    80006e10:	fae798e3          	bne	a5,a4,80006dc0 <kerneltrap+0x2c>
    80006e14:	00000097          	auipc	ra,0x0
    80006e18:	e00080e7          	jalr	-512(ra) # 80006c14 <cpuid>
    80006e1c:	06050663          	beqz	a0,80006e88 <kerneltrap+0xf4>
    80006e20:	144027f3          	csrr	a5,sip
    80006e24:	ffd7f793          	andi	a5,a5,-3
    80006e28:	14479073          	csrw	sip,a5
    80006e2c:	01813083          	ld	ra,24(sp)
    80006e30:	01013403          	ld	s0,16(sp)
    80006e34:	00813483          	ld	s1,8(sp)
    80006e38:	02010113          	addi	sp,sp,32
    80006e3c:	00008067          	ret
    80006e40:	00000097          	auipc	ra,0x0
    80006e44:	3c4080e7          	jalr	964(ra) # 80007204 <plic_claim>
    80006e48:	00a00793          	li	a5,10
    80006e4c:	00050493          	mv	s1,a0
    80006e50:	06f50863          	beq	a0,a5,80006ec0 <kerneltrap+0x12c>
    80006e54:	fc050ce3          	beqz	a0,80006e2c <kerneltrap+0x98>
    80006e58:	00050593          	mv	a1,a0
    80006e5c:	00003517          	auipc	a0,0x3
    80006e60:	87c50513          	addi	a0,a0,-1924 # 800096d8 <_ZZ17interruptPrintIntmE6digits+0x560>
    80006e64:	00000097          	auipc	ra,0x0
    80006e68:	7e4080e7          	jalr	2020(ra) # 80007648 <__printf>
    80006e6c:	01013403          	ld	s0,16(sp)
    80006e70:	01813083          	ld	ra,24(sp)
    80006e74:	00048513          	mv	a0,s1
    80006e78:	00813483          	ld	s1,8(sp)
    80006e7c:	02010113          	addi	sp,sp,32
    80006e80:	00000317          	auipc	t1,0x0
    80006e84:	3bc30067          	jr	956(t1) # 8000723c <plic_complete>
    80006e88:	00006517          	auipc	a0,0x6
    80006e8c:	de850513          	addi	a0,a0,-536 # 8000cc70 <tickslock>
    80006e90:	00001097          	auipc	ra,0x1
    80006e94:	48c080e7          	jalr	1164(ra) # 8000831c <acquire>
    80006e98:	00005717          	auipc	a4,0x5
    80006e9c:	c5c70713          	addi	a4,a4,-932 # 8000baf4 <ticks>
    80006ea0:	00072783          	lw	a5,0(a4)
    80006ea4:	00006517          	auipc	a0,0x6
    80006ea8:	dcc50513          	addi	a0,a0,-564 # 8000cc70 <tickslock>
    80006eac:	0017879b          	addiw	a5,a5,1
    80006eb0:	00f72023          	sw	a5,0(a4)
    80006eb4:	00001097          	auipc	ra,0x1
    80006eb8:	534080e7          	jalr	1332(ra) # 800083e8 <release>
    80006ebc:	f65ff06f          	j	80006e20 <kerneltrap+0x8c>
    80006ec0:	00001097          	auipc	ra,0x1
    80006ec4:	090080e7          	jalr	144(ra) # 80007f50 <uartintr>
    80006ec8:	fa5ff06f          	j	80006e6c <kerneltrap+0xd8>
    80006ecc:	00002517          	auipc	a0,0x2
    80006ed0:	7ec50513          	addi	a0,a0,2028 # 800096b8 <_ZZ17interruptPrintIntmE6digits+0x540>
    80006ed4:	00000097          	auipc	ra,0x0
    80006ed8:	718080e7          	jalr	1816(ra) # 800075ec <panic>

0000000080006edc <clockintr>:
    80006edc:	fe010113          	addi	sp,sp,-32
    80006ee0:	00813823          	sd	s0,16(sp)
    80006ee4:	00913423          	sd	s1,8(sp)
    80006ee8:	00113c23          	sd	ra,24(sp)
    80006eec:	02010413          	addi	s0,sp,32
    80006ef0:	00006497          	auipc	s1,0x6
    80006ef4:	d8048493          	addi	s1,s1,-640 # 8000cc70 <tickslock>
    80006ef8:	00048513          	mv	a0,s1
    80006efc:	00001097          	auipc	ra,0x1
    80006f00:	420080e7          	jalr	1056(ra) # 8000831c <acquire>
    80006f04:	00005717          	auipc	a4,0x5
    80006f08:	bf070713          	addi	a4,a4,-1040 # 8000baf4 <ticks>
    80006f0c:	00072783          	lw	a5,0(a4)
    80006f10:	01013403          	ld	s0,16(sp)
    80006f14:	01813083          	ld	ra,24(sp)
    80006f18:	00048513          	mv	a0,s1
    80006f1c:	0017879b          	addiw	a5,a5,1
    80006f20:	00813483          	ld	s1,8(sp)
    80006f24:	00f72023          	sw	a5,0(a4)
    80006f28:	02010113          	addi	sp,sp,32
    80006f2c:	00001317          	auipc	t1,0x1
    80006f30:	4bc30067          	jr	1212(t1) # 800083e8 <release>

0000000080006f34 <devintr>:
    80006f34:	142027f3          	csrr	a5,scause
    80006f38:	00000513          	li	a0,0
    80006f3c:	0007c463          	bltz	a5,80006f44 <devintr+0x10>
    80006f40:	00008067          	ret
    80006f44:	fe010113          	addi	sp,sp,-32
    80006f48:	00813823          	sd	s0,16(sp)
    80006f4c:	00113c23          	sd	ra,24(sp)
    80006f50:	00913423          	sd	s1,8(sp)
    80006f54:	02010413          	addi	s0,sp,32
    80006f58:	0ff7f713          	andi	a4,a5,255
    80006f5c:	00900693          	li	a3,9
    80006f60:	04d70c63          	beq	a4,a3,80006fb8 <devintr+0x84>
    80006f64:	fff00713          	li	a4,-1
    80006f68:	03f71713          	slli	a4,a4,0x3f
    80006f6c:	00170713          	addi	a4,a4,1
    80006f70:	00e78c63          	beq	a5,a4,80006f88 <devintr+0x54>
    80006f74:	01813083          	ld	ra,24(sp)
    80006f78:	01013403          	ld	s0,16(sp)
    80006f7c:	00813483          	ld	s1,8(sp)
    80006f80:	02010113          	addi	sp,sp,32
    80006f84:	00008067          	ret
    80006f88:	00000097          	auipc	ra,0x0
    80006f8c:	c8c080e7          	jalr	-884(ra) # 80006c14 <cpuid>
    80006f90:	06050663          	beqz	a0,80006ffc <devintr+0xc8>
    80006f94:	144027f3          	csrr	a5,sip
    80006f98:	ffd7f793          	andi	a5,a5,-3
    80006f9c:	14479073          	csrw	sip,a5
    80006fa0:	01813083          	ld	ra,24(sp)
    80006fa4:	01013403          	ld	s0,16(sp)
    80006fa8:	00813483          	ld	s1,8(sp)
    80006fac:	00200513          	li	a0,2
    80006fb0:	02010113          	addi	sp,sp,32
    80006fb4:	00008067          	ret
    80006fb8:	00000097          	auipc	ra,0x0
    80006fbc:	24c080e7          	jalr	588(ra) # 80007204 <plic_claim>
    80006fc0:	00a00793          	li	a5,10
    80006fc4:	00050493          	mv	s1,a0
    80006fc8:	06f50663          	beq	a0,a5,80007034 <devintr+0x100>
    80006fcc:	00100513          	li	a0,1
    80006fd0:	fa0482e3          	beqz	s1,80006f74 <devintr+0x40>
    80006fd4:	00048593          	mv	a1,s1
    80006fd8:	00002517          	auipc	a0,0x2
    80006fdc:	70050513          	addi	a0,a0,1792 # 800096d8 <_ZZ17interruptPrintIntmE6digits+0x560>
    80006fe0:	00000097          	auipc	ra,0x0
    80006fe4:	668080e7          	jalr	1640(ra) # 80007648 <__printf>
    80006fe8:	00048513          	mv	a0,s1
    80006fec:	00000097          	auipc	ra,0x0
    80006ff0:	250080e7          	jalr	592(ra) # 8000723c <plic_complete>
    80006ff4:	00100513          	li	a0,1
    80006ff8:	f7dff06f          	j	80006f74 <devintr+0x40>
    80006ffc:	00006517          	auipc	a0,0x6
    80007000:	c7450513          	addi	a0,a0,-908 # 8000cc70 <tickslock>
    80007004:	00001097          	auipc	ra,0x1
    80007008:	318080e7          	jalr	792(ra) # 8000831c <acquire>
    8000700c:	00005717          	auipc	a4,0x5
    80007010:	ae870713          	addi	a4,a4,-1304 # 8000baf4 <ticks>
    80007014:	00072783          	lw	a5,0(a4)
    80007018:	00006517          	auipc	a0,0x6
    8000701c:	c5850513          	addi	a0,a0,-936 # 8000cc70 <tickslock>
    80007020:	0017879b          	addiw	a5,a5,1
    80007024:	00f72023          	sw	a5,0(a4)
    80007028:	00001097          	auipc	ra,0x1
    8000702c:	3c0080e7          	jalr	960(ra) # 800083e8 <release>
    80007030:	f65ff06f          	j	80006f94 <devintr+0x60>
    80007034:	00001097          	auipc	ra,0x1
    80007038:	f1c080e7          	jalr	-228(ra) # 80007f50 <uartintr>
    8000703c:	fadff06f          	j	80006fe8 <devintr+0xb4>

0000000080007040 <kernelvec>:
    80007040:	f0010113          	addi	sp,sp,-256
    80007044:	00113023          	sd	ra,0(sp)
    80007048:	00213423          	sd	sp,8(sp)
    8000704c:	00313823          	sd	gp,16(sp)
    80007050:	00413c23          	sd	tp,24(sp)
    80007054:	02513023          	sd	t0,32(sp)
    80007058:	02613423          	sd	t1,40(sp)
    8000705c:	02713823          	sd	t2,48(sp)
    80007060:	02813c23          	sd	s0,56(sp)
    80007064:	04913023          	sd	s1,64(sp)
    80007068:	04a13423          	sd	a0,72(sp)
    8000706c:	04b13823          	sd	a1,80(sp)
    80007070:	04c13c23          	sd	a2,88(sp)
    80007074:	06d13023          	sd	a3,96(sp)
    80007078:	06e13423          	sd	a4,104(sp)
    8000707c:	06f13823          	sd	a5,112(sp)
    80007080:	07013c23          	sd	a6,120(sp)
    80007084:	09113023          	sd	a7,128(sp)
    80007088:	09213423          	sd	s2,136(sp)
    8000708c:	09313823          	sd	s3,144(sp)
    80007090:	09413c23          	sd	s4,152(sp)
    80007094:	0b513023          	sd	s5,160(sp)
    80007098:	0b613423          	sd	s6,168(sp)
    8000709c:	0b713823          	sd	s7,176(sp)
    800070a0:	0b813c23          	sd	s8,184(sp)
    800070a4:	0d913023          	sd	s9,192(sp)
    800070a8:	0da13423          	sd	s10,200(sp)
    800070ac:	0db13823          	sd	s11,208(sp)
    800070b0:	0dc13c23          	sd	t3,216(sp)
    800070b4:	0fd13023          	sd	t4,224(sp)
    800070b8:	0fe13423          	sd	t5,232(sp)
    800070bc:	0ff13823          	sd	t6,240(sp)
    800070c0:	cd5ff0ef          	jal	ra,80006d94 <kerneltrap>
    800070c4:	00013083          	ld	ra,0(sp)
    800070c8:	00813103          	ld	sp,8(sp)
    800070cc:	01013183          	ld	gp,16(sp)
    800070d0:	02013283          	ld	t0,32(sp)
    800070d4:	02813303          	ld	t1,40(sp)
    800070d8:	03013383          	ld	t2,48(sp)
    800070dc:	03813403          	ld	s0,56(sp)
    800070e0:	04013483          	ld	s1,64(sp)
    800070e4:	04813503          	ld	a0,72(sp)
    800070e8:	05013583          	ld	a1,80(sp)
    800070ec:	05813603          	ld	a2,88(sp)
    800070f0:	06013683          	ld	a3,96(sp)
    800070f4:	06813703          	ld	a4,104(sp)
    800070f8:	07013783          	ld	a5,112(sp)
    800070fc:	07813803          	ld	a6,120(sp)
    80007100:	08013883          	ld	a7,128(sp)
    80007104:	08813903          	ld	s2,136(sp)
    80007108:	09013983          	ld	s3,144(sp)
    8000710c:	09813a03          	ld	s4,152(sp)
    80007110:	0a013a83          	ld	s5,160(sp)
    80007114:	0a813b03          	ld	s6,168(sp)
    80007118:	0b013b83          	ld	s7,176(sp)
    8000711c:	0b813c03          	ld	s8,184(sp)
    80007120:	0c013c83          	ld	s9,192(sp)
    80007124:	0c813d03          	ld	s10,200(sp)
    80007128:	0d013d83          	ld	s11,208(sp)
    8000712c:	0d813e03          	ld	t3,216(sp)
    80007130:	0e013e83          	ld	t4,224(sp)
    80007134:	0e813f03          	ld	t5,232(sp)
    80007138:	0f013f83          	ld	t6,240(sp)
    8000713c:	10010113          	addi	sp,sp,256
    80007140:	10200073          	sret
    80007144:	00000013          	nop
    80007148:	00000013          	nop
    8000714c:	00000013          	nop

0000000080007150 <timervec>:
    80007150:	34051573          	csrrw	a0,mscratch,a0
    80007154:	00b53023          	sd	a1,0(a0)
    80007158:	00c53423          	sd	a2,8(a0)
    8000715c:	00d53823          	sd	a3,16(a0)
    80007160:	01853583          	ld	a1,24(a0)
    80007164:	02053603          	ld	a2,32(a0)
    80007168:	0005b683          	ld	a3,0(a1)
    8000716c:	00c686b3          	add	a3,a3,a2
    80007170:	00d5b023          	sd	a3,0(a1)
    80007174:	00200593          	li	a1,2
    80007178:	14459073          	csrw	sip,a1
    8000717c:	01053683          	ld	a3,16(a0)
    80007180:	00853603          	ld	a2,8(a0)
    80007184:	00053583          	ld	a1,0(a0)
    80007188:	34051573          	csrrw	a0,mscratch,a0
    8000718c:	30200073          	mret

0000000080007190 <plicinit>:
    80007190:	ff010113          	addi	sp,sp,-16
    80007194:	00813423          	sd	s0,8(sp)
    80007198:	01010413          	addi	s0,sp,16
    8000719c:	00813403          	ld	s0,8(sp)
    800071a0:	0c0007b7          	lui	a5,0xc000
    800071a4:	00100713          	li	a4,1
    800071a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800071ac:	00e7a223          	sw	a4,4(a5)
    800071b0:	01010113          	addi	sp,sp,16
    800071b4:	00008067          	ret

00000000800071b8 <plicinithart>:
    800071b8:	ff010113          	addi	sp,sp,-16
    800071bc:	00813023          	sd	s0,0(sp)
    800071c0:	00113423          	sd	ra,8(sp)
    800071c4:	01010413          	addi	s0,sp,16
    800071c8:	00000097          	auipc	ra,0x0
    800071cc:	a4c080e7          	jalr	-1460(ra) # 80006c14 <cpuid>
    800071d0:	0085171b          	slliw	a4,a0,0x8
    800071d4:	0c0027b7          	lui	a5,0xc002
    800071d8:	00e787b3          	add	a5,a5,a4
    800071dc:	40200713          	li	a4,1026
    800071e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800071e4:	00813083          	ld	ra,8(sp)
    800071e8:	00013403          	ld	s0,0(sp)
    800071ec:	00d5151b          	slliw	a0,a0,0xd
    800071f0:	0c2017b7          	lui	a5,0xc201
    800071f4:	00a78533          	add	a0,a5,a0
    800071f8:	00052023          	sw	zero,0(a0)
    800071fc:	01010113          	addi	sp,sp,16
    80007200:	00008067          	ret

0000000080007204 <plic_claim>:
    80007204:	ff010113          	addi	sp,sp,-16
    80007208:	00813023          	sd	s0,0(sp)
    8000720c:	00113423          	sd	ra,8(sp)
    80007210:	01010413          	addi	s0,sp,16
    80007214:	00000097          	auipc	ra,0x0
    80007218:	a00080e7          	jalr	-1536(ra) # 80006c14 <cpuid>
    8000721c:	00813083          	ld	ra,8(sp)
    80007220:	00013403          	ld	s0,0(sp)
    80007224:	00d5151b          	slliw	a0,a0,0xd
    80007228:	0c2017b7          	lui	a5,0xc201
    8000722c:	00a78533          	add	a0,a5,a0
    80007230:	00452503          	lw	a0,4(a0)
    80007234:	01010113          	addi	sp,sp,16
    80007238:	00008067          	ret

000000008000723c <plic_complete>:
    8000723c:	fe010113          	addi	sp,sp,-32
    80007240:	00813823          	sd	s0,16(sp)
    80007244:	00913423          	sd	s1,8(sp)
    80007248:	00113c23          	sd	ra,24(sp)
    8000724c:	02010413          	addi	s0,sp,32
    80007250:	00050493          	mv	s1,a0
    80007254:	00000097          	auipc	ra,0x0
    80007258:	9c0080e7          	jalr	-1600(ra) # 80006c14 <cpuid>
    8000725c:	01813083          	ld	ra,24(sp)
    80007260:	01013403          	ld	s0,16(sp)
    80007264:	00d5179b          	slliw	a5,a0,0xd
    80007268:	0c201737          	lui	a4,0xc201
    8000726c:	00f707b3          	add	a5,a4,a5
    80007270:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007274:	00813483          	ld	s1,8(sp)
    80007278:	02010113          	addi	sp,sp,32
    8000727c:	00008067          	ret

0000000080007280 <consolewrite>:
    80007280:	fb010113          	addi	sp,sp,-80
    80007284:	04813023          	sd	s0,64(sp)
    80007288:	04113423          	sd	ra,72(sp)
    8000728c:	02913c23          	sd	s1,56(sp)
    80007290:	03213823          	sd	s2,48(sp)
    80007294:	03313423          	sd	s3,40(sp)
    80007298:	03413023          	sd	s4,32(sp)
    8000729c:	01513c23          	sd	s5,24(sp)
    800072a0:	05010413          	addi	s0,sp,80
    800072a4:	06c05c63          	blez	a2,8000731c <consolewrite+0x9c>
    800072a8:	00060993          	mv	s3,a2
    800072ac:	00050a13          	mv	s4,a0
    800072b0:	00058493          	mv	s1,a1
    800072b4:	00000913          	li	s2,0
    800072b8:	fff00a93          	li	s5,-1
    800072bc:	01c0006f          	j	800072d8 <consolewrite+0x58>
    800072c0:	fbf44503          	lbu	a0,-65(s0)
    800072c4:	0019091b          	addiw	s2,s2,1
    800072c8:	00148493          	addi	s1,s1,1
    800072cc:	00001097          	auipc	ra,0x1
    800072d0:	a9c080e7          	jalr	-1380(ra) # 80007d68 <uartputc>
    800072d4:	03298063          	beq	s3,s2,800072f4 <consolewrite+0x74>
    800072d8:	00048613          	mv	a2,s1
    800072dc:	00100693          	li	a3,1
    800072e0:	000a0593          	mv	a1,s4
    800072e4:	fbf40513          	addi	a0,s0,-65
    800072e8:	00000097          	auipc	ra,0x0
    800072ec:	9e4080e7          	jalr	-1564(ra) # 80006ccc <either_copyin>
    800072f0:	fd5518e3          	bne	a0,s5,800072c0 <consolewrite+0x40>
    800072f4:	04813083          	ld	ra,72(sp)
    800072f8:	04013403          	ld	s0,64(sp)
    800072fc:	03813483          	ld	s1,56(sp)
    80007300:	02813983          	ld	s3,40(sp)
    80007304:	02013a03          	ld	s4,32(sp)
    80007308:	01813a83          	ld	s5,24(sp)
    8000730c:	00090513          	mv	a0,s2
    80007310:	03013903          	ld	s2,48(sp)
    80007314:	05010113          	addi	sp,sp,80
    80007318:	00008067          	ret
    8000731c:	00000913          	li	s2,0
    80007320:	fd5ff06f          	j	800072f4 <consolewrite+0x74>

0000000080007324 <consoleread>:
    80007324:	f9010113          	addi	sp,sp,-112
    80007328:	06813023          	sd	s0,96(sp)
    8000732c:	04913c23          	sd	s1,88(sp)
    80007330:	05213823          	sd	s2,80(sp)
    80007334:	05313423          	sd	s3,72(sp)
    80007338:	05413023          	sd	s4,64(sp)
    8000733c:	03513c23          	sd	s5,56(sp)
    80007340:	03613823          	sd	s6,48(sp)
    80007344:	03713423          	sd	s7,40(sp)
    80007348:	03813023          	sd	s8,32(sp)
    8000734c:	06113423          	sd	ra,104(sp)
    80007350:	01913c23          	sd	s9,24(sp)
    80007354:	07010413          	addi	s0,sp,112
    80007358:	00060b93          	mv	s7,a2
    8000735c:	00050913          	mv	s2,a0
    80007360:	00058c13          	mv	s8,a1
    80007364:	00060b1b          	sext.w	s6,a2
    80007368:	00006497          	auipc	s1,0x6
    8000736c:	93048493          	addi	s1,s1,-1744 # 8000cc98 <cons>
    80007370:	00400993          	li	s3,4
    80007374:	fff00a13          	li	s4,-1
    80007378:	00a00a93          	li	s5,10
    8000737c:	05705e63          	blez	s7,800073d8 <consoleread+0xb4>
    80007380:	09c4a703          	lw	a4,156(s1)
    80007384:	0984a783          	lw	a5,152(s1)
    80007388:	0007071b          	sext.w	a4,a4
    8000738c:	08e78463          	beq	a5,a4,80007414 <consoleread+0xf0>
    80007390:	07f7f713          	andi	a4,a5,127
    80007394:	00e48733          	add	a4,s1,a4
    80007398:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000739c:	0017869b          	addiw	a3,a5,1
    800073a0:	08d4ac23          	sw	a3,152(s1)
    800073a4:	00070c9b          	sext.w	s9,a4
    800073a8:	0b370663          	beq	a4,s3,80007454 <consoleread+0x130>
    800073ac:	00100693          	li	a3,1
    800073b0:	f9f40613          	addi	a2,s0,-97
    800073b4:	000c0593          	mv	a1,s8
    800073b8:	00090513          	mv	a0,s2
    800073bc:	f8e40fa3          	sb	a4,-97(s0)
    800073c0:	00000097          	auipc	ra,0x0
    800073c4:	8c0080e7          	jalr	-1856(ra) # 80006c80 <either_copyout>
    800073c8:	01450863          	beq	a0,s4,800073d8 <consoleread+0xb4>
    800073cc:	001c0c13          	addi	s8,s8,1
    800073d0:	fffb8b9b          	addiw	s7,s7,-1
    800073d4:	fb5c94e3          	bne	s9,s5,8000737c <consoleread+0x58>
    800073d8:	000b851b          	sext.w	a0,s7
    800073dc:	06813083          	ld	ra,104(sp)
    800073e0:	06013403          	ld	s0,96(sp)
    800073e4:	05813483          	ld	s1,88(sp)
    800073e8:	05013903          	ld	s2,80(sp)
    800073ec:	04813983          	ld	s3,72(sp)
    800073f0:	04013a03          	ld	s4,64(sp)
    800073f4:	03813a83          	ld	s5,56(sp)
    800073f8:	02813b83          	ld	s7,40(sp)
    800073fc:	02013c03          	ld	s8,32(sp)
    80007400:	01813c83          	ld	s9,24(sp)
    80007404:	40ab053b          	subw	a0,s6,a0
    80007408:	03013b03          	ld	s6,48(sp)
    8000740c:	07010113          	addi	sp,sp,112
    80007410:	00008067          	ret
    80007414:	00001097          	auipc	ra,0x1
    80007418:	1d8080e7          	jalr	472(ra) # 800085ec <push_on>
    8000741c:	0984a703          	lw	a4,152(s1)
    80007420:	09c4a783          	lw	a5,156(s1)
    80007424:	0007879b          	sext.w	a5,a5
    80007428:	fef70ce3          	beq	a4,a5,80007420 <consoleread+0xfc>
    8000742c:	00001097          	auipc	ra,0x1
    80007430:	234080e7          	jalr	564(ra) # 80008660 <pop_on>
    80007434:	0984a783          	lw	a5,152(s1)
    80007438:	07f7f713          	andi	a4,a5,127
    8000743c:	00e48733          	add	a4,s1,a4
    80007440:	01874703          	lbu	a4,24(a4)
    80007444:	0017869b          	addiw	a3,a5,1
    80007448:	08d4ac23          	sw	a3,152(s1)
    8000744c:	00070c9b          	sext.w	s9,a4
    80007450:	f5371ee3          	bne	a4,s3,800073ac <consoleread+0x88>
    80007454:	000b851b          	sext.w	a0,s7
    80007458:	f96bf2e3          	bgeu	s7,s6,800073dc <consoleread+0xb8>
    8000745c:	08f4ac23          	sw	a5,152(s1)
    80007460:	f7dff06f          	j	800073dc <consoleread+0xb8>

0000000080007464 <consputc>:
    80007464:	10000793          	li	a5,256
    80007468:	00f50663          	beq	a0,a5,80007474 <consputc+0x10>
    8000746c:	00001317          	auipc	t1,0x1
    80007470:	9f430067          	jr	-1548(t1) # 80007e60 <uartputc_sync>
    80007474:	ff010113          	addi	sp,sp,-16
    80007478:	00113423          	sd	ra,8(sp)
    8000747c:	00813023          	sd	s0,0(sp)
    80007480:	01010413          	addi	s0,sp,16
    80007484:	00800513          	li	a0,8
    80007488:	00001097          	auipc	ra,0x1
    8000748c:	9d8080e7          	jalr	-1576(ra) # 80007e60 <uartputc_sync>
    80007490:	02000513          	li	a0,32
    80007494:	00001097          	auipc	ra,0x1
    80007498:	9cc080e7          	jalr	-1588(ra) # 80007e60 <uartputc_sync>
    8000749c:	00013403          	ld	s0,0(sp)
    800074a0:	00813083          	ld	ra,8(sp)
    800074a4:	00800513          	li	a0,8
    800074a8:	01010113          	addi	sp,sp,16
    800074ac:	00001317          	auipc	t1,0x1
    800074b0:	9b430067          	jr	-1612(t1) # 80007e60 <uartputc_sync>

00000000800074b4 <consoleintr>:
    800074b4:	fe010113          	addi	sp,sp,-32
    800074b8:	00813823          	sd	s0,16(sp)
    800074bc:	00913423          	sd	s1,8(sp)
    800074c0:	01213023          	sd	s2,0(sp)
    800074c4:	00113c23          	sd	ra,24(sp)
    800074c8:	02010413          	addi	s0,sp,32
    800074cc:	00005917          	auipc	s2,0x5
    800074d0:	7cc90913          	addi	s2,s2,1996 # 8000cc98 <cons>
    800074d4:	00050493          	mv	s1,a0
    800074d8:	00090513          	mv	a0,s2
    800074dc:	00001097          	auipc	ra,0x1
    800074e0:	e40080e7          	jalr	-448(ra) # 8000831c <acquire>
    800074e4:	02048c63          	beqz	s1,8000751c <consoleintr+0x68>
    800074e8:	0a092783          	lw	a5,160(s2)
    800074ec:	09892703          	lw	a4,152(s2)
    800074f0:	07f00693          	li	a3,127
    800074f4:	40e7873b          	subw	a4,a5,a4
    800074f8:	02e6e263          	bltu	a3,a4,8000751c <consoleintr+0x68>
    800074fc:	00d00713          	li	a4,13
    80007500:	04e48063          	beq	s1,a4,80007540 <consoleintr+0x8c>
    80007504:	07f7f713          	andi	a4,a5,127
    80007508:	00e90733          	add	a4,s2,a4
    8000750c:	0017879b          	addiw	a5,a5,1
    80007510:	0af92023          	sw	a5,160(s2)
    80007514:	00970c23          	sb	s1,24(a4)
    80007518:	08f92e23          	sw	a5,156(s2)
    8000751c:	01013403          	ld	s0,16(sp)
    80007520:	01813083          	ld	ra,24(sp)
    80007524:	00813483          	ld	s1,8(sp)
    80007528:	00013903          	ld	s2,0(sp)
    8000752c:	00005517          	auipc	a0,0x5
    80007530:	76c50513          	addi	a0,a0,1900 # 8000cc98 <cons>
    80007534:	02010113          	addi	sp,sp,32
    80007538:	00001317          	auipc	t1,0x1
    8000753c:	eb030067          	jr	-336(t1) # 800083e8 <release>
    80007540:	00a00493          	li	s1,10
    80007544:	fc1ff06f          	j	80007504 <consoleintr+0x50>

0000000080007548 <consoleinit>:
    80007548:	fe010113          	addi	sp,sp,-32
    8000754c:	00113c23          	sd	ra,24(sp)
    80007550:	00813823          	sd	s0,16(sp)
    80007554:	00913423          	sd	s1,8(sp)
    80007558:	02010413          	addi	s0,sp,32
    8000755c:	00005497          	auipc	s1,0x5
    80007560:	73c48493          	addi	s1,s1,1852 # 8000cc98 <cons>
    80007564:	00048513          	mv	a0,s1
    80007568:	00002597          	auipc	a1,0x2
    8000756c:	1c858593          	addi	a1,a1,456 # 80009730 <_ZZ17interruptPrintIntmE6digits+0x5b8>
    80007570:	00001097          	auipc	ra,0x1
    80007574:	d88080e7          	jalr	-632(ra) # 800082f8 <initlock>
    80007578:	00000097          	auipc	ra,0x0
    8000757c:	7ac080e7          	jalr	1964(ra) # 80007d24 <uartinit>
    80007580:	01813083          	ld	ra,24(sp)
    80007584:	01013403          	ld	s0,16(sp)
    80007588:	00000797          	auipc	a5,0x0
    8000758c:	d9c78793          	addi	a5,a5,-612 # 80007324 <consoleread>
    80007590:	0af4bc23          	sd	a5,184(s1)
    80007594:	00000797          	auipc	a5,0x0
    80007598:	cec78793          	addi	a5,a5,-788 # 80007280 <consolewrite>
    8000759c:	0cf4b023          	sd	a5,192(s1)
    800075a0:	00813483          	ld	s1,8(sp)
    800075a4:	02010113          	addi	sp,sp,32
    800075a8:	00008067          	ret

00000000800075ac <console_read>:
    800075ac:	ff010113          	addi	sp,sp,-16
    800075b0:	00813423          	sd	s0,8(sp)
    800075b4:	01010413          	addi	s0,sp,16
    800075b8:	00813403          	ld	s0,8(sp)
    800075bc:	00005317          	auipc	t1,0x5
    800075c0:	79433303          	ld	t1,1940(t1) # 8000cd50 <devsw+0x10>
    800075c4:	01010113          	addi	sp,sp,16
    800075c8:	00030067          	jr	t1

00000000800075cc <console_write>:
    800075cc:	ff010113          	addi	sp,sp,-16
    800075d0:	00813423          	sd	s0,8(sp)
    800075d4:	01010413          	addi	s0,sp,16
    800075d8:	00813403          	ld	s0,8(sp)
    800075dc:	00005317          	auipc	t1,0x5
    800075e0:	77c33303          	ld	t1,1916(t1) # 8000cd58 <devsw+0x18>
    800075e4:	01010113          	addi	sp,sp,16
    800075e8:	00030067          	jr	t1

00000000800075ec <panic>:
    800075ec:	fe010113          	addi	sp,sp,-32
    800075f0:	00113c23          	sd	ra,24(sp)
    800075f4:	00813823          	sd	s0,16(sp)
    800075f8:	00913423          	sd	s1,8(sp)
    800075fc:	02010413          	addi	s0,sp,32
    80007600:	00050493          	mv	s1,a0
    80007604:	00002517          	auipc	a0,0x2
    80007608:	13450513          	addi	a0,a0,308 # 80009738 <_ZZ17interruptPrintIntmE6digits+0x5c0>
    8000760c:	00005797          	auipc	a5,0x5
    80007610:	7e07a623          	sw	zero,2028(a5) # 8000cdf8 <pr+0x18>
    80007614:	00000097          	auipc	ra,0x0
    80007618:	034080e7          	jalr	52(ra) # 80007648 <__printf>
    8000761c:	00048513          	mv	a0,s1
    80007620:	00000097          	auipc	ra,0x0
    80007624:	028080e7          	jalr	40(ra) # 80007648 <__printf>
    80007628:	00002517          	auipc	a0,0x2
    8000762c:	e9850513          	addi	a0,a0,-360 # 800094c0 <_ZZ17interruptPrintIntmE6digits+0x348>
    80007630:	00000097          	auipc	ra,0x0
    80007634:	018080e7          	jalr	24(ra) # 80007648 <__printf>
    80007638:	00100793          	li	a5,1
    8000763c:	00004717          	auipc	a4,0x4
    80007640:	4af72e23          	sw	a5,1212(a4) # 8000baf8 <panicked>
    80007644:	0000006f          	j	80007644 <panic+0x58>

0000000080007648 <__printf>:
    80007648:	f3010113          	addi	sp,sp,-208
    8000764c:	08813023          	sd	s0,128(sp)
    80007650:	07313423          	sd	s3,104(sp)
    80007654:	09010413          	addi	s0,sp,144
    80007658:	05813023          	sd	s8,64(sp)
    8000765c:	08113423          	sd	ra,136(sp)
    80007660:	06913c23          	sd	s1,120(sp)
    80007664:	07213823          	sd	s2,112(sp)
    80007668:	07413023          	sd	s4,96(sp)
    8000766c:	05513c23          	sd	s5,88(sp)
    80007670:	05613823          	sd	s6,80(sp)
    80007674:	05713423          	sd	s7,72(sp)
    80007678:	03913c23          	sd	s9,56(sp)
    8000767c:	03a13823          	sd	s10,48(sp)
    80007680:	03b13423          	sd	s11,40(sp)
    80007684:	00005317          	auipc	t1,0x5
    80007688:	75c30313          	addi	t1,t1,1884 # 8000cde0 <pr>
    8000768c:	01832c03          	lw	s8,24(t1)
    80007690:	00b43423          	sd	a1,8(s0)
    80007694:	00c43823          	sd	a2,16(s0)
    80007698:	00d43c23          	sd	a3,24(s0)
    8000769c:	02e43023          	sd	a4,32(s0)
    800076a0:	02f43423          	sd	a5,40(s0)
    800076a4:	03043823          	sd	a6,48(s0)
    800076a8:	03143c23          	sd	a7,56(s0)
    800076ac:	00050993          	mv	s3,a0
    800076b0:	4a0c1663          	bnez	s8,80007b5c <__printf+0x514>
    800076b4:	60098c63          	beqz	s3,80007ccc <__printf+0x684>
    800076b8:	0009c503          	lbu	a0,0(s3)
    800076bc:	00840793          	addi	a5,s0,8
    800076c0:	f6f43c23          	sd	a5,-136(s0)
    800076c4:	00000493          	li	s1,0
    800076c8:	22050063          	beqz	a0,800078e8 <__printf+0x2a0>
    800076cc:	00002a37          	lui	s4,0x2
    800076d0:	00018ab7          	lui	s5,0x18
    800076d4:	000f4b37          	lui	s6,0xf4
    800076d8:	00989bb7          	lui	s7,0x989
    800076dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800076e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800076e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800076e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800076ec:	00148c9b          	addiw	s9,s1,1
    800076f0:	02500793          	li	a5,37
    800076f4:	01998933          	add	s2,s3,s9
    800076f8:	38f51263          	bne	a0,a5,80007a7c <__printf+0x434>
    800076fc:	00094783          	lbu	a5,0(s2)
    80007700:	00078c9b          	sext.w	s9,a5
    80007704:	1e078263          	beqz	a5,800078e8 <__printf+0x2a0>
    80007708:	0024849b          	addiw	s1,s1,2
    8000770c:	07000713          	li	a4,112
    80007710:	00998933          	add	s2,s3,s1
    80007714:	38e78a63          	beq	a5,a4,80007aa8 <__printf+0x460>
    80007718:	20f76863          	bltu	a4,a5,80007928 <__printf+0x2e0>
    8000771c:	42a78863          	beq	a5,a0,80007b4c <__printf+0x504>
    80007720:	06400713          	li	a4,100
    80007724:	40e79663          	bne	a5,a4,80007b30 <__printf+0x4e8>
    80007728:	f7843783          	ld	a5,-136(s0)
    8000772c:	0007a603          	lw	a2,0(a5)
    80007730:	00878793          	addi	a5,a5,8
    80007734:	f6f43c23          	sd	a5,-136(s0)
    80007738:	42064a63          	bltz	a2,80007b6c <__printf+0x524>
    8000773c:	00a00713          	li	a4,10
    80007740:	02e677bb          	remuw	a5,a2,a4
    80007744:	00002d97          	auipc	s11,0x2
    80007748:	01cd8d93          	addi	s11,s11,28 # 80009760 <digits>
    8000774c:	00900593          	li	a1,9
    80007750:	0006051b          	sext.w	a0,a2
    80007754:	00000c93          	li	s9,0
    80007758:	02079793          	slli	a5,a5,0x20
    8000775c:	0207d793          	srli	a5,a5,0x20
    80007760:	00fd87b3          	add	a5,s11,a5
    80007764:	0007c783          	lbu	a5,0(a5)
    80007768:	02e656bb          	divuw	a3,a2,a4
    8000776c:	f8f40023          	sb	a5,-128(s0)
    80007770:	14c5d863          	bge	a1,a2,800078c0 <__printf+0x278>
    80007774:	06300593          	li	a1,99
    80007778:	00100c93          	li	s9,1
    8000777c:	02e6f7bb          	remuw	a5,a3,a4
    80007780:	02079793          	slli	a5,a5,0x20
    80007784:	0207d793          	srli	a5,a5,0x20
    80007788:	00fd87b3          	add	a5,s11,a5
    8000778c:	0007c783          	lbu	a5,0(a5)
    80007790:	02e6d73b          	divuw	a4,a3,a4
    80007794:	f8f400a3          	sb	a5,-127(s0)
    80007798:	12a5f463          	bgeu	a1,a0,800078c0 <__printf+0x278>
    8000779c:	00a00693          	li	a3,10
    800077a0:	00900593          	li	a1,9
    800077a4:	02d777bb          	remuw	a5,a4,a3
    800077a8:	02079793          	slli	a5,a5,0x20
    800077ac:	0207d793          	srli	a5,a5,0x20
    800077b0:	00fd87b3          	add	a5,s11,a5
    800077b4:	0007c503          	lbu	a0,0(a5)
    800077b8:	02d757bb          	divuw	a5,a4,a3
    800077bc:	f8a40123          	sb	a0,-126(s0)
    800077c0:	48e5f263          	bgeu	a1,a4,80007c44 <__printf+0x5fc>
    800077c4:	06300513          	li	a0,99
    800077c8:	02d7f5bb          	remuw	a1,a5,a3
    800077cc:	02059593          	slli	a1,a1,0x20
    800077d0:	0205d593          	srli	a1,a1,0x20
    800077d4:	00bd85b3          	add	a1,s11,a1
    800077d8:	0005c583          	lbu	a1,0(a1)
    800077dc:	02d7d7bb          	divuw	a5,a5,a3
    800077e0:	f8b401a3          	sb	a1,-125(s0)
    800077e4:	48e57263          	bgeu	a0,a4,80007c68 <__printf+0x620>
    800077e8:	3e700513          	li	a0,999
    800077ec:	02d7f5bb          	remuw	a1,a5,a3
    800077f0:	02059593          	slli	a1,a1,0x20
    800077f4:	0205d593          	srli	a1,a1,0x20
    800077f8:	00bd85b3          	add	a1,s11,a1
    800077fc:	0005c583          	lbu	a1,0(a1)
    80007800:	02d7d7bb          	divuw	a5,a5,a3
    80007804:	f8b40223          	sb	a1,-124(s0)
    80007808:	46e57663          	bgeu	a0,a4,80007c74 <__printf+0x62c>
    8000780c:	02d7f5bb          	remuw	a1,a5,a3
    80007810:	02059593          	slli	a1,a1,0x20
    80007814:	0205d593          	srli	a1,a1,0x20
    80007818:	00bd85b3          	add	a1,s11,a1
    8000781c:	0005c583          	lbu	a1,0(a1)
    80007820:	02d7d7bb          	divuw	a5,a5,a3
    80007824:	f8b402a3          	sb	a1,-123(s0)
    80007828:	46ea7863          	bgeu	s4,a4,80007c98 <__printf+0x650>
    8000782c:	02d7f5bb          	remuw	a1,a5,a3
    80007830:	02059593          	slli	a1,a1,0x20
    80007834:	0205d593          	srli	a1,a1,0x20
    80007838:	00bd85b3          	add	a1,s11,a1
    8000783c:	0005c583          	lbu	a1,0(a1)
    80007840:	02d7d7bb          	divuw	a5,a5,a3
    80007844:	f8b40323          	sb	a1,-122(s0)
    80007848:	3eeaf863          	bgeu	s5,a4,80007c38 <__printf+0x5f0>
    8000784c:	02d7f5bb          	remuw	a1,a5,a3
    80007850:	02059593          	slli	a1,a1,0x20
    80007854:	0205d593          	srli	a1,a1,0x20
    80007858:	00bd85b3          	add	a1,s11,a1
    8000785c:	0005c583          	lbu	a1,0(a1)
    80007860:	02d7d7bb          	divuw	a5,a5,a3
    80007864:	f8b403a3          	sb	a1,-121(s0)
    80007868:	42eb7e63          	bgeu	s6,a4,80007ca4 <__printf+0x65c>
    8000786c:	02d7f5bb          	remuw	a1,a5,a3
    80007870:	02059593          	slli	a1,a1,0x20
    80007874:	0205d593          	srli	a1,a1,0x20
    80007878:	00bd85b3          	add	a1,s11,a1
    8000787c:	0005c583          	lbu	a1,0(a1)
    80007880:	02d7d7bb          	divuw	a5,a5,a3
    80007884:	f8b40423          	sb	a1,-120(s0)
    80007888:	42ebfc63          	bgeu	s7,a4,80007cc0 <__printf+0x678>
    8000788c:	02079793          	slli	a5,a5,0x20
    80007890:	0207d793          	srli	a5,a5,0x20
    80007894:	00fd8db3          	add	s11,s11,a5
    80007898:	000dc703          	lbu	a4,0(s11)
    8000789c:	00a00793          	li	a5,10
    800078a0:	00900c93          	li	s9,9
    800078a4:	f8e404a3          	sb	a4,-119(s0)
    800078a8:	00065c63          	bgez	a2,800078c0 <__printf+0x278>
    800078ac:	f9040713          	addi	a4,s0,-112
    800078b0:	00f70733          	add	a4,a4,a5
    800078b4:	02d00693          	li	a3,45
    800078b8:	fed70823          	sb	a3,-16(a4)
    800078bc:	00078c93          	mv	s9,a5
    800078c0:	f8040793          	addi	a5,s0,-128
    800078c4:	01978cb3          	add	s9,a5,s9
    800078c8:	f7f40d13          	addi	s10,s0,-129
    800078cc:	000cc503          	lbu	a0,0(s9)
    800078d0:	fffc8c93          	addi	s9,s9,-1
    800078d4:	00000097          	auipc	ra,0x0
    800078d8:	b90080e7          	jalr	-1136(ra) # 80007464 <consputc>
    800078dc:	ffac98e3          	bne	s9,s10,800078cc <__printf+0x284>
    800078e0:	00094503          	lbu	a0,0(s2)
    800078e4:	e00514e3          	bnez	a0,800076ec <__printf+0xa4>
    800078e8:	1a0c1663          	bnez	s8,80007a94 <__printf+0x44c>
    800078ec:	08813083          	ld	ra,136(sp)
    800078f0:	08013403          	ld	s0,128(sp)
    800078f4:	07813483          	ld	s1,120(sp)
    800078f8:	07013903          	ld	s2,112(sp)
    800078fc:	06813983          	ld	s3,104(sp)
    80007900:	06013a03          	ld	s4,96(sp)
    80007904:	05813a83          	ld	s5,88(sp)
    80007908:	05013b03          	ld	s6,80(sp)
    8000790c:	04813b83          	ld	s7,72(sp)
    80007910:	04013c03          	ld	s8,64(sp)
    80007914:	03813c83          	ld	s9,56(sp)
    80007918:	03013d03          	ld	s10,48(sp)
    8000791c:	02813d83          	ld	s11,40(sp)
    80007920:	0d010113          	addi	sp,sp,208
    80007924:	00008067          	ret
    80007928:	07300713          	li	a4,115
    8000792c:	1ce78a63          	beq	a5,a4,80007b00 <__printf+0x4b8>
    80007930:	07800713          	li	a4,120
    80007934:	1ee79e63          	bne	a5,a4,80007b30 <__printf+0x4e8>
    80007938:	f7843783          	ld	a5,-136(s0)
    8000793c:	0007a703          	lw	a4,0(a5)
    80007940:	00878793          	addi	a5,a5,8
    80007944:	f6f43c23          	sd	a5,-136(s0)
    80007948:	28074263          	bltz	a4,80007bcc <__printf+0x584>
    8000794c:	00002d97          	auipc	s11,0x2
    80007950:	e14d8d93          	addi	s11,s11,-492 # 80009760 <digits>
    80007954:	00f77793          	andi	a5,a4,15
    80007958:	00fd87b3          	add	a5,s11,a5
    8000795c:	0007c683          	lbu	a3,0(a5)
    80007960:	00f00613          	li	a2,15
    80007964:	0007079b          	sext.w	a5,a4
    80007968:	f8d40023          	sb	a3,-128(s0)
    8000796c:	0047559b          	srliw	a1,a4,0x4
    80007970:	0047569b          	srliw	a3,a4,0x4
    80007974:	00000c93          	li	s9,0
    80007978:	0ee65063          	bge	a2,a4,80007a58 <__printf+0x410>
    8000797c:	00f6f693          	andi	a3,a3,15
    80007980:	00dd86b3          	add	a3,s11,a3
    80007984:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007988:	0087d79b          	srliw	a5,a5,0x8
    8000798c:	00100c93          	li	s9,1
    80007990:	f8d400a3          	sb	a3,-127(s0)
    80007994:	0cb67263          	bgeu	a2,a1,80007a58 <__printf+0x410>
    80007998:	00f7f693          	andi	a3,a5,15
    8000799c:	00dd86b3          	add	a3,s11,a3
    800079a0:	0006c583          	lbu	a1,0(a3)
    800079a4:	00f00613          	li	a2,15
    800079a8:	0047d69b          	srliw	a3,a5,0x4
    800079ac:	f8b40123          	sb	a1,-126(s0)
    800079b0:	0047d593          	srli	a1,a5,0x4
    800079b4:	28f67e63          	bgeu	a2,a5,80007c50 <__printf+0x608>
    800079b8:	00f6f693          	andi	a3,a3,15
    800079bc:	00dd86b3          	add	a3,s11,a3
    800079c0:	0006c503          	lbu	a0,0(a3)
    800079c4:	0087d813          	srli	a6,a5,0x8
    800079c8:	0087d69b          	srliw	a3,a5,0x8
    800079cc:	f8a401a3          	sb	a0,-125(s0)
    800079d0:	28b67663          	bgeu	a2,a1,80007c5c <__printf+0x614>
    800079d4:	00f6f693          	andi	a3,a3,15
    800079d8:	00dd86b3          	add	a3,s11,a3
    800079dc:	0006c583          	lbu	a1,0(a3)
    800079e0:	00c7d513          	srli	a0,a5,0xc
    800079e4:	00c7d69b          	srliw	a3,a5,0xc
    800079e8:	f8b40223          	sb	a1,-124(s0)
    800079ec:	29067a63          	bgeu	a2,a6,80007c80 <__printf+0x638>
    800079f0:	00f6f693          	andi	a3,a3,15
    800079f4:	00dd86b3          	add	a3,s11,a3
    800079f8:	0006c583          	lbu	a1,0(a3)
    800079fc:	0107d813          	srli	a6,a5,0x10
    80007a00:	0107d69b          	srliw	a3,a5,0x10
    80007a04:	f8b402a3          	sb	a1,-123(s0)
    80007a08:	28a67263          	bgeu	a2,a0,80007c8c <__printf+0x644>
    80007a0c:	00f6f693          	andi	a3,a3,15
    80007a10:	00dd86b3          	add	a3,s11,a3
    80007a14:	0006c683          	lbu	a3,0(a3)
    80007a18:	0147d79b          	srliw	a5,a5,0x14
    80007a1c:	f8d40323          	sb	a3,-122(s0)
    80007a20:	21067663          	bgeu	a2,a6,80007c2c <__printf+0x5e4>
    80007a24:	02079793          	slli	a5,a5,0x20
    80007a28:	0207d793          	srli	a5,a5,0x20
    80007a2c:	00fd8db3          	add	s11,s11,a5
    80007a30:	000dc683          	lbu	a3,0(s11)
    80007a34:	00800793          	li	a5,8
    80007a38:	00700c93          	li	s9,7
    80007a3c:	f8d403a3          	sb	a3,-121(s0)
    80007a40:	00075c63          	bgez	a4,80007a58 <__printf+0x410>
    80007a44:	f9040713          	addi	a4,s0,-112
    80007a48:	00f70733          	add	a4,a4,a5
    80007a4c:	02d00693          	li	a3,45
    80007a50:	fed70823          	sb	a3,-16(a4)
    80007a54:	00078c93          	mv	s9,a5
    80007a58:	f8040793          	addi	a5,s0,-128
    80007a5c:	01978cb3          	add	s9,a5,s9
    80007a60:	f7f40d13          	addi	s10,s0,-129
    80007a64:	000cc503          	lbu	a0,0(s9)
    80007a68:	fffc8c93          	addi	s9,s9,-1
    80007a6c:	00000097          	auipc	ra,0x0
    80007a70:	9f8080e7          	jalr	-1544(ra) # 80007464 <consputc>
    80007a74:	ff9d18e3          	bne	s10,s9,80007a64 <__printf+0x41c>
    80007a78:	0100006f          	j	80007a88 <__printf+0x440>
    80007a7c:	00000097          	auipc	ra,0x0
    80007a80:	9e8080e7          	jalr	-1560(ra) # 80007464 <consputc>
    80007a84:	000c8493          	mv	s1,s9
    80007a88:	00094503          	lbu	a0,0(s2)
    80007a8c:	c60510e3          	bnez	a0,800076ec <__printf+0xa4>
    80007a90:	e40c0ee3          	beqz	s8,800078ec <__printf+0x2a4>
    80007a94:	00005517          	auipc	a0,0x5
    80007a98:	34c50513          	addi	a0,a0,844 # 8000cde0 <pr>
    80007a9c:	00001097          	auipc	ra,0x1
    80007aa0:	94c080e7          	jalr	-1716(ra) # 800083e8 <release>
    80007aa4:	e49ff06f          	j	800078ec <__printf+0x2a4>
    80007aa8:	f7843783          	ld	a5,-136(s0)
    80007aac:	03000513          	li	a0,48
    80007ab0:	01000d13          	li	s10,16
    80007ab4:	00878713          	addi	a4,a5,8
    80007ab8:	0007bc83          	ld	s9,0(a5)
    80007abc:	f6e43c23          	sd	a4,-136(s0)
    80007ac0:	00000097          	auipc	ra,0x0
    80007ac4:	9a4080e7          	jalr	-1628(ra) # 80007464 <consputc>
    80007ac8:	07800513          	li	a0,120
    80007acc:	00000097          	auipc	ra,0x0
    80007ad0:	998080e7          	jalr	-1640(ra) # 80007464 <consputc>
    80007ad4:	00002d97          	auipc	s11,0x2
    80007ad8:	c8cd8d93          	addi	s11,s11,-884 # 80009760 <digits>
    80007adc:	03ccd793          	srli	a5,s9,0x3c
    80007ae0:	00fd87b3          	add	a5,s11,a5
    80007ae4:	0007c503          	lbu	a0,0(a5)
    80007ae8:	fffd0d1b          	addiw	s10,s10,-1
    80007aec:	004c9c93          	slli	s9,s9,0x4
    80007af0:	00000097          	auipc	ra,0x0
    80007af4:	974080e7          	jalr	-1676(ra) # 80007464 <consputc>
    80007af8:	fe0d12e3          	bnez	s10,80007adc <__printf+0x494>
    80007afc:	f8dff06f          	j	80007a88 <__printf+0x440>
    80007b00:	f7843783          	ld	a5,-136(s0)
    80007b04:	0007bc83          	ld	s9,0(a5)
    80007b08:	00878793          	addi	a5,a5,8
    80007b0c:	f6f43c23          	sd	a5,-136(s0)
    80007b10:	000c9a63          	bnez	s9,80007b24 <__printf+0x4dc>
    80007b14:	1080006f          	j	80007c1c <__printf+0x5d4>
    80007b18:	001c8c93          	addi	s9,s9,1
    80007b1c:	00000097          	auipc	ra,0x0
    80007b20:	948080e7          	jalr	-1720(ra) # 80007464 <consputc>
    80007b24:	000cc503          	lbu	a0,0(s9)
    80007b28:	fe0518e3          	bnez	a0,80007b18 <__printf+0x4d0>
    80007b2c:	f5dff06f          	j	80007a88 <__printf+0x440>
    80007b30:	02500513          	li	a0,37
    80007b34:	00000097          	auipc	ra,0x0
    80007b38:	930080e7          	jalr	-1744(ra) # 80007464 <consputc>
    80007b3c:	000c8513          	mv	a0,s9
    80007b40:	00000097          	auipc	ra,0x0
    80007b44:	924080e7          	jalr	-1756(ra) # 80007464 <consputc>
    80007b48:	f41ff06f          	j	80007a88 <__printf+0x440>
    80007b4c:	02500513          	li	a0,37
    80007b50:	00000097          	auipc	ra,0x0
    80007b54:	914080e7          	jalr	-1772(ra) # 80007464 <consputc>
    80007b58:	f31ff06f          	j	80007a88 <__printf+0x440>
    80007b5c:	00030513          	mv	a0,t1
    80007b60:	00000097          	auipc	ra,0x0
    80007b64:	7bc080e7          	jalr	1980(ra) # 8000831c <acquire>
    80007b68:	b4dff06f          	j	800076b4 <__printf+0x6c>
    80007b6c:	40c0053b          	negw	a0,a2
    80007b70:	00a00713          	li	a4,10
    80007b74:	02e576bb          	remuw	a3,a0,a4
    80007b78:	00002d97          	auipc	s11,0x2
    80007b7c:	be8d8d93          	addi	s11,s11,-1048 # 80009760 <digits>
    80007b80:	ff700593          	li	a1,-9
    80007b84:	02069693          	slli	a3,a3,0x20
    80007b88:	0206d693          	srli	a3,a3,0x20
    80007b8c:	00dd86b3          	add	a3,s11,a3
    80007b90:	0006c683          	lbu	a3,0(a3)
    80007b94:	02e557bb          	divuw	a5,a0,a4
    80007b98:	f8d40023          	sb	a3,-128(s0)
    80007b9c:	10b65e63          	bge	a2,a1,80007cb8 <__printf+0x670>
    80007ba0:	06300593          	li	a1,99
    80007ba4:	02e7f6bb          	remuw	a3,a5,a4
    80007ba8:	02069693          	slli	a3,a3,0x20
    80007bac:	0206d693          	srli	a3,a3,0x20
    80007bb0:	00dd86b3          	add	a3,s11,a3
    80007bb4:	0006c683          	lbu	a3,0(a3)
    80007bb8:	02e7d73b          	divuw	a4,a5,a4
    80007bbc:	00200793          	li	a5,2
    80007bc0:	f8d400a3          	sb	a3,-127(s0)
    80007bc4:	bca5ece3          	bltu	a1,a0,8000779c <__printf+0x154>
    80007bc8:	ce5ff06f          	j	800078ac <__printf+0x264>
    80007bcc:	40e007bb          	negw	a5,a4
    80007bd0:	00002d97          	auipc	s11,0x2
    80007bd4:	b90d8d93          	addi	s11,s11,-1136 # 80009760 <digits>
    80007bd8:	00f7f693          	andi	a3,a5,15
    80007bdc:	00dd86b3          	add	a3,s11,a3
    80007be0:	0006c583          	lbu	a1,0(a3)
    80007be4:	ff100613          	li	a2,-15
    80007be8:	0047d69b          	srliw	a3,a5,0x4
    80007bec:	f8b40023          	sb	a1,-128(s0)
    80007bf0:	0047d59b          	srliw	a1,a5,0x4
    80007bf4:	0ac75e63          	bge	a4,a2,80007cb0 <__printf+0x668>
    80007bf8:	00f6f693          	andi	a3,a3,15
    80007bfc:	00dd86b3          	add	a3,s11,a3
    80007c00:	0006c603          	lbu	a2,0(a3)
    80007c04:	00f00693          	li	a3,15
    80007c08:	0087d79b          	srliw	a5,a5,0x8
    80007c0c:	f8c400a3          	sb	a2,-127(s0)
    80007c10:	d8b6e4e3          	bltu	a3,a1,80007998 <__printf+0x350>
    80007c14:	00200793          	li	a5,2
    80007c18:	e2dff06f          	j	80007a44 <__printf+0x3fc>
    80007c1c:	00002c97          	auipc	s9,0x2
    80007c20:	b24c8c93          	addi	s9,s9,-1244 # 80009740 <_ZZ17interruptPrintIntmE6digits+0x5c8>
    80007c24:	02800513          	li	a0,40
    80007c28:	ef1ff06f          	j	80007b18 <__printf+0x4d0>
    80007c2c:	00700793          	li	a5,7
    80007c30:	00600c93          	li	s9,6
    80007c34:	e0dff06f          	j	80007a40 <__printf+0x3f8>
    80007c38:	00700793          	li	a5,7
    80007c3c:	00600c93          	li	s9,6
    80007c40:	c69ff06f          	j	800078a8 <__printf+0x260>
    80007c44:	00300793          	li	a5,3
    80007c48:	00200c93          	li	s9,2
    80007c4c:	c5dff06f          	j	800078a8 <__printf+0x260>
    80007c50:	00300793          	li	a5,3
    80007c54:	00200c93          	li	s9,2
    80007c58:	de9ff06f          	j	80007a40 <__printf+0x3f8>
    80007c5c:	00400793          	li	a5,4
    80007c60:	00300c93          	li	s9,3
    80007c64:	dddff06f          	j	80007a40 <__printf+0x3f8>
    80007c68:	00400793          	li	a5,4
    80007c6c:	00300c93          	li	s9,3
    80007c70:	c39ff06f          	j	800078a8 <__printf+0x260>
    80007c74:	00500793          	li	a5,5
    80007c78:	00400c93          	li	s9,4
    80007c7c:	c2dff06f          	j	800078a8 <__printf+0x260>
    80007c80:	00500793          	li	a5,5
    80007c84:	00400c93          	li	s9,4
    80007c88:	db9ff06f          	j	80007a40 <__printf+0x3f8>
    80007c8c:	00600793          	li	a5,6
    80007c90:	00500c93          	li	s9,5
    80007c94:	dadff06f          	j	80007a40 <__printf+0x3f8>
    80007c98:	00600793          	li	a5,6
    80007c9c:	00500c93          	li	s9,5
    80007ca0:	c09ff06f          	j	800078a8 <__printf+0x260>
    80007ca4:	00800793          	li	a5,8
    80007ca8:	00700c93          	li	s9,7
    80007cac:	bfdff06f          	j	800078a8 <__printf+0x260>
    80007cb0:	00100793          	li	a5,1
    80007cb4:	d91ff06f          	j	80007a44 <__printf+0x3fc>
    80007cb8:	00100793          	li	a5,1
    80007cbc:	bf1ff06f          	j	800078ac <__printf+0x264>
    80007cc0:	00900793          	li	a5,9
    80007cc4:	00800c93          	li	s9,8
    80007cc8:	be1ff06f          	j	800078a8 <__printf+0x260>
    80007ccc:	00002517          	auipc	a0,0x2
    80007cd0:	a7c50513          	addi	a0,a0,-1412 # 80009748 <_ZZ17interruptPrintIntmE6digits+0x5d0>
    80007cd4:	00000097          	auipc	ra,0x0
    80007cd8:	918080e7          	jalr	-1768(ra) # 800075ec <panic>

0000000080007cdc <printfinit>:
    80007cdc:	fe010113          	addi	sp,sp,-32
    80007ce0:	00813823          	sd	s0,16(sp)
    80007ce4:	00913423          	sd	s1,8(sp)
    80007ce8:	00113c23          	sd	ra,24(sp)
    80007cec:	02010413          	addi	s0,sp,32
    80007cf0:	00005497          	auipc	s1,0x5
    80007cf4:	0f048493          	addi	s1,s1,240 # 8000cde0 <pr>
    80007cf8:	00048513          	mv	a0,s1
    80007cfc:	00002597          	auipc	a1,0x2
    80007d00:	a5c58593          	addi	a1,a1,-1444 # 80009758 <_ZZ17interruptPrintIntmE6digits+0x5e0>
    80007d04:	00000097          	auipc	ra,0x0
    80007d08:	5f4080e7          	jalr	1524(ra) # 800082f8 <initlock>
    80007d0c:	01813083          	ld	ra,24(sp)
    80007d10:	01013403          	ld	s0,16(sp)
    80007d14:	0004ac23          	sw	zero,24(s1)
    80007d18:	00813483          	ld	s1,8(sp)
    80007d1c:	02010113          	addi	sp,sp,32
    80007d20:	00008067          	ret

0000000080007d24 <uartinit>:
    80007d24:	ff010113          	addi	sp,sp,-16
    80007d28:	00813423          	sd	s0,8(sp)
    80007d2c:	01010413          	addi	s0,sp,16
    80007d30:	100007b7          	lui	a5,0x10000
    80007d34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007d38:	f8000713          	li	a4,-128
    80007d3c:	00e781a3          	sb	a4,3(a5)
    80007d40:	00300713          	li	a4,3
    80007d44:	00e78023          	sb	a4,0(a5)
    80007d48:	000780a3          	sb	zero,1(a5)
    80007d4c:	00e781a3          	sb	a4,3(a5)
    80007d50:	00700693          	li	a3,7
    80007d54:	00d78123          	sb	a3,2(a5)
    80007d58:	00e780a3          	sb	a4,1(a5)
    80007d5c:	00813403          	ld	s0,8(sp)
    80007d60:	01010113          	addi	sp,sp,16
    80007d64:	00008067          	ret

0000000080007d68 <uartputc>:
    80007d68:	00004797          	auipc	a5,0x4
    80007d6c:	d907a783          	lw	a5,-624(a5) # 8000baf8 <panicked>
    80007d70:	00078463          	beqz	a5,80007d78 <uartputc+0x10>
    80007d74:	0000006f          	j	80007d74 <uartputc+0xc>
    80007d78:	fd010113          	addi	sp,sp,-48
    80007d7c:	02813023          	sd	s0,32(sp)
    80007d80:	00913c23          	sd	s1,24(sp)
    80007d84:	01213823          	sd	s2,16(sp)
    80007d88:	01313423          	sd	s3,8(sp)
    80007d8c:	02113423          	sd	ra,40(sp)
    80007d90:	03010413          	addi	s0,sp,48
    80007d94:	00004917          	auipc	s2,0x4
    80007d98:	d6c90913          	addi	s2,s2,-660 # 8000bb00 <uart_tx_r>
    80007d9c:	00093783          	ld	a5,0(s2)
    80007da0:	00004497          	auipc	s1,0x4
    80007da4:	d6848493          	addi	s1,s1,-664 # 8000bb08 <uart_tx_w>
    80007da8:	0004b703          	ld	a4,0(s1)
    80007dac:	02078693          	addi	a3,a5,32
    80007db0:	00050993          	mv	s3,a0
    80007db4:	02e69c63          	bne	a3,a4,80007dec <uartputc+0x84>
    80007db8:	00001097          	auipc	ra,0x1
    80007dbc:	834080e7          	jalr	-1996(ra) # 800085ec <push_on>
    80007dc0:	00093783          	ld	a5,0(s2)
    80007dc4:	0004b703          	ld	a4,0(s1)
    80007dc8:	02078793          	addi	a5,a5,32
    80007dcc:	00e79463          	bne	a5,a4,80007dd4 <uartputc+0x6c>
    80007dd0:	0000006f          	j	80007dd0 <uartputc+0x68>
    80007dd4:	00001097          	auipc	ra,0x1
    80007dd8:	88c080e7          	jalr	-1908(ra) # 80008660 <pop_on>
    80007ddc:	00093783          	ld	a5,0(s2)
    80007de0:	0004b703          	ld	a4,0(s1)
    80007de4:	02078693          	addi	a3,a5,32
    80007de8:	fce688e3          	beq	a3,a4,80007db8 <uartputc+0x50>
    80007dec:	01f77693          	andi	a3,a4,31
    80007df0:	00005597          	auipc	a1,0x5
    80007df4:	01058593          	addi	a1,a1,16 # 8000ce00 <uart_tx_buf>
    80007df8:	00d586b3          	add	a3,a1,a3
    80007dfc:	00170713          	addi	a4,a4,1
    80007e00:	01368023          	sb	s3,0(a3)
    80007e04:	00e4b023          	sd	a4,0(s1)
    80007e08:	10000637          	lui	a2,0x10000
    80007e0c:	02f71063          	bne	a4,a5,80007e2c <uartputc+0xc4>
    80007e10:	0340006f          	j	80007e44 <uartputc+0xdc>
    80007e14:	00074703          	lbu	a4,0(a4)
    80007e18:	00f93023          	sd	a5,0(s2)
    80007e1c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007e20:	00093783          	ld	a5,0(s2)
    80007e24:	0004b703          	ld	a4,0(s1)
    80007e28:	00f70e63          	beq	a4,a5,80007e44 <uartputc+0xdc>
    80007e2c:	00564683          	lbu	a3,5(a2)
    80007e30:	01f7f713          	andi	a4,a5,31
    80007e34:	00e58733          	add	a4,a1,a4
    80007e38:	0206f693          	andi	a3,a3,32
    80007e3c:	00178793          	addi	a5,a5,1
    80007e40:	fc069ae3          	bnez	a3,80007e14 <uartputc+0xac>
    80007e44:	02813083          	ld	ra,40(sp)
    80007e48:	02013403          	ld	s0,32(sp)
    80007e4c:	01813483          	ld	s1,24(sp)
    80007e50:	01013903          	ld	s2,16(sp)
    80007e54:	00813983          	ld	s3,8(sp)
    80007e58:	03010113          	addi	sp,sp,48
    80007e5c:	00008067          	ret

0000000080007e60 <uartputc_sync>:
    80007e60:	ff010113          	addi	sp,sp,-16
    80007e64:	00813423          	sd	s0,8(sp)
    80007e68:	01010413          	addi	s0,sp,16
    80007e6c:	00004717          	auipc	a4,0x4
    80007e70:	c8c72703          	lw	a4,-884(a4) # 8000baf8 <panicked>
    80007e74:	02071663          	bnez	a4,80007ea0 <uartputc_sync+0x40>
    80007e78:	00050793          	mv	a5,a0
    80007e7c:	100006b7          	lui	a3,0x10000
    80007e80:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007e84:	02077713          	andi	a4,a4,32
    80007e88:	fe070ce3          	beqz	a4,80007e80 <uartputc_sync+0x20>
    80007e8c:	0ff7f793          	andi	a5,a5,255
    80007e90:	00f68023          	sb	a5,0(a3)
    80007e94:	00813403          	ld	s0,8(sp)
    80007e98:	01010113          	addi	sp,sp,16
    80007e9c:	00008067          	ret
    80007ea0:	0000006f          	j	80007ea0 <uartputc_sync+0x40>

0000000080007ea4 <uartstart>:
    80007ea4:	ff010113          	addi	sp,sp,-16
    80007ea8:	00813423          	sd	s0,8(sp)
    80007eac:	01010413          	addi	s0,sp,16
    80007eb0:	00004617          	auipc	a2,0x4
    80007eb4:	c5060613          	addi	a2,a2,-944 # 8000bb00 <uart_tx_r>
    80007eb8:	00004517          	auipc	a0,0x4
    80007ebc:	c5050513          	addi	a0,a0,-944 # 8000bb08 <uart_tx_w>
    80007ec0:	00063783          	ld	a5,0(a2)
    80007ec4:	00053703          	ld	a4,0(a0)
    80007ec8:	04f70263          	beq	a4,a5,80007f0c <uartstart+0x68>
    80007ecc:	100005b7          	lui	a1,0x10000
    80007ed0:	00005817          	auipc	a6,0x5
    80007ed4:	f3080813          	addi	a6,a6,-208 # 8000ce00 <uart_tx_buf>
    80007ed8:	01c0006f          	j	80007ef4 <uartstart+0x50>
    80007edc:	0006c703          	lbu	a4,0(a3)
    80007ee0:	00f63023          	sd	a5,0(a2)
    80007ee4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ee8:	00063783          	ld	a5,0(a2)
    80007eec:	00053703          	ld	a4,0(a0)
    80007ef0:	00f70e63          	beq	a4,a5,80007f0c <uartstart+0x68>
    80007ef4:	01f7f713          	andi	a4,a5,31
    80007ef8:	00e806b3          	add	a3,a6,a4
    80007efc:	0055c703          	lbu	a4,5(a1)
    80007f00:	00178793          	addi	a5,a5,1
    80007f04:	02077713          	andi	a4,a4,32
    80007f08:	fc071ae3          	bnez	a4,80007edc <uartstart+0x38>
    80007f0c:	00813403          	ld	s0,8(sp)
    80007f10:	01010113          	addi	sp,sp,16
    80007f14:	00008067          	ret

0000000080007f18 <uartgetc>:
    80007f18:	ff010113          	addi	sp,sp,-16
    80007f1c:	00813423          	sd	s0,8(sp)
    80007f20:	01010413          	addi	s0,sp,16
    80007f24:	10000737          	lui	a4,0x10000
    80007f28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007f2c:	0017f793          	andi	a5,a5,1
    80007f30:	00078c63          	beqz	a5,80007f48 <uartgetc+0x30>
    80007f34:	00074503          	lbu	a0,0(a4)
    80007f38:	0ff57513          	andi	a0,a0,255
    80007f3c:	00813403          	ld	s0,8(sp)
    80007f40:	01010113          	addi	sp,sp,16
    80007f44:	00008067          	ret
    80007f48:	fff00513          	li	a0,-1
    80007f4c:	ff1ff06f          	j	80007f3c <uartgetc+0x24>

0000000080007f50 <uartintr>:
    80007f50:	100007b7          	lui	a5,0x10000
    80007f54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007f58:	0017f793          	andi	a5,a5,1
    80007f5c:	0a078463          	beqz	a5,80008004 <uartintr+0xb4>
    80007f60:	fe010113          	addi	sp,sp,-32
    80007f64:	00813823          	sd	s0,16(sp)
    80007f68:	00913423          	sd	s1,8(sp)
    80007f6c:	00113c23          	sd	ra,24(sp)
    80007f70:	02010413          	addi	s0,sp,32
    80007f74:	100004b7          	lui	s1,0x10000
    80007f78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007f7c:	0ff57513          	andi	a0,a0,255
    80007f80:	fffff097          	auipc	ra,0xfffff
    80007f84:	534080e7          	jalr	1332(ra) # 800074b4 <consoleintr>
    80007f88:	0054c783          	lbu	a5,5(s1)
    80007f8c:	0017f793          	andi	a5,a5,1
    80007f90:	fe0794e3          	bnez	a5,80007f78 <uartintr+0x28>
    80007f94:	00004617          	auipc	a2,0x4
    80007f98:	b6c60613          	addi	a2,a2,-1172 # 8000bb00 <uart_tx_r>
    80007f9c:	00004517          	auipc	a0,0x4
    80007fa0:	b6c50513          	addi	a0,a0,-1172 # 8000bb08 <uart_tx_w>
    80007fa4:	00063783          	ld	a5,0(a2)
    80007fa8:	00053703          	ld	a4,0(a0)
    80007fac:	04f70263          	beq	a4,a5,80007ff0 <uartintr+0xa0>
    80007fb0:	100005b7          	lui	a1,0x10000
    80007fb4:	00005817          	auipc	a6,0x5
    80007fb8:	e4c80813          	addi	a6,a6,-436 # 8000ce00 <uart_tx_buf>
    80007fbc:	01c0006f          	j	80007fd8 <uartintr+0x88>
    80007fc0:	0006c703          	lbu	a4,0(a3)
    80007fc4:	00f63023          	sd	a5,0(a2)
    80007fc8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007fcc:	00063783          	ld	a5,0(a2)
    80007fd0:	00053703          	ld	a4,0(a0)
    80007fd4:	00f70e63          	beq	a4,a5,80007ff0 <uartintr+0xa0>
    80007fd8:	01f7f713          	andi	a4,a5,31
    80007fdc:	00e806b3          	add	a3,a6,a4
    80007fe0:	0055c703          	lbu	a4,5(a1)
    80007fe4:	00178793          	addi	a5,a5,1
    80007fe8:	02077713          	andi	a4,a4,32
    80007fec:	fc071ae3          	bnez	a4,80007fc0 <uartintr+0x70>
    80007ff0:	01813083          	ld	ra,24(sp)
    80007ff4:	01013403          	ld	s0,16(sp)
    80007ff8:	00813483          	ld	s1,8(sp)
    80007ffc:	02010113          	addi	sp,sp,32
    80008000:	00008067          	ret
    80008004:	00004617          	auipc	a2,0x4
    80008008:	afc60613          	addi	a2,a2,-1284 # 8000bb00 <uart_tx_r>
    8000800c:	00004517          	auipc	a0,0x4
    80008010:	afc50513          	addi	a0,a0,-1284 # 8000bb08 <uart_tx_w>
    80008014:	00063783          	ld	a5,0(a2)
    80008018:	00053703          	ld	a4,0(a0)
    8000801c:	04f70263          	beq	a4,a5,80008060 <uartintr+0x110>
    80008020:	100005b7          	lui	a1,0x10000
    80008024:	00005817          	auipc	a6,0x5
    80008028:	ddc80813          	addi	a6,a6,-548 # 8000ce00 <uart_tx_buf>
    8000802c:	01c0006f          	j	80008048 <uartintr+0xf8>
    80008030:	0006c703          	lbu	a4,0(a3)
    80008034:	00f63023          	sd	a5,0(a2)
    80008038:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000803c:	00063783          	ld	a5,0(a2)
    80008040:	00053703          	ld	a4,0(a0)
    80008044:	02f70063          	beq	a4,a5,80008064 <uartintr+0x114>
    80008048:	01f7f713          	andi	a4,a5,31
    8000804c:	00e806b3          	add	a3,a6,a4
    80008050:	0055c703          	lbu	a4,5(a1)
    80008054:	00178793          	addi	a5,a5,1
    80008058:	02077713          	andi	a4,a4,32
    8000805c:	fc071ae3          	bnez	a4,80008030 <uartintr+0xe0>
    80008060:	00008067          	ret
    80008064:	00008067          	ret

0000000080008068 <kinit>:
    80008068:	fc010113          	addi	sp,sp,-64
    8000806c:	02913423          	sd	s1,40(sp)
    80008070:	fffff7b7          	lui	a5,0xfffff
    80008074:	00006497          	auipc	s1,0x6
    80008078:	dab48493          	addi	s1,s1,-597 # 8000de1f <end+0xfff>
    8000807c:	02813823          	sd	s0,48(sp)
    80008080:	01313c23          	sd	s3,24(sp)
    80008084:	00f4f4b3          	and	s1,s1,a5
    80008088:	02113c23          	sd	ra,56(sp)
    8000808c:	03213023          	sd	s2,32(sp)
    80008090:	01413823          	sd	s4,16(sp)
    80008094:	01513423          	sd	s5,8(sp)
    80008098:	04010413          	addi	s0,sp,64
    8000809c:	000017b7          	lui	a5,0x1
    800080a0:	01100993          	li	s3,17
    800080a4:	00f487b3          	add	a5,s1,a5
    800080a8:	01b99993          	slli	s3,s3,0x1b
    800080ac:	06f9e063          	bltu	s3,a5,8000810c <kinit+0xa4>
    800080b0:	00005a97          	auipc	s5,0x5
    800080b4:	d70a8a93          	addi	s5,s5,-656 # 8000ce20 <end>
    800080b8:	0754ec63          	bltu	s1,s5,80008130 <kinit+0xc8>
    800080bc:	0734fa63          	bgeu	s1,s3,80008130 <kinit+0xc8>
    800080c0:	00088a37          	lui	s4,0x88
    800080c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800080c8:	00004917          	auipc	s2,0x4
    800080cc:	a4890913          	addi	s2,s2,-1464 # 8000bb10 <kmem>
    800080d0:	00ca1a13          	slli	s4,s4,0xc
    800080d4:	0140006f          	j	800080e8 <kinit+0x80>
    800080d8:	000017b7          	lui	a5,0x1
    800080dc:	00f484b3          	add	s1,s1,a5
    800080e0:	0554e863          	bltu	s1,s5,80008130 <kinit+0xc8>
    800080e4:	0534f663          	bgeu	s1,s3,80008130 <kinit+0xc8>
    800080e8:	00001637          	lui	a2,0x1
    800080ec:	00100593          	li	a1,1
    800080f0:	00048513          	mv	a0,s1
    800080f4:	00000097          	auipc	ra,0x0
    800080f8:	5e4080e7          	jalr	1508(ra) # 800086d8 <__memset>
    800080fc:	00093783          	ld	a5,0(s2)
    80008100:	00f4b023          	sd	a5,0(s1)
    80008104:	00993023          	sd	s1,0(s2)
    80008108:	fd4498e3          	bne	s1,s4,800080d8 <kinit+0x70>
    8000810c:	03813083          	ld	ra,56(sp)
    80008110:	03013403          	ld	s0,48(sp)
    80008114:	02813483          	ld	s1,40(sp)
    80008118:	02013903          	ld	s2,32(sp)
    8000811c:	01813983          	ld	s3,24(sp)
    80008120:	01013a03          	ld	s4,16(sp)
    80008124:	00813a83          	ld	s5,8(sp)
    80008128:	04010113          	addi	sp,sp,64
    8000812c:	00008067          	ret
    80008130:	00001517          	auipc	a0,0x1
    80008134:	64850513          	addi	a0,a0,1608 # 80009778 <digits+0x18>
    80008138:	fffff097          	auipc	ra,0xfffff
    8000813c:	4b4080e7          	jalr	1204(ra) # 800075ec <panic>

0000000080008140 <freerange>:
    80008140:	fc010113          	addi	sp,sp,-64
    80008144:	000017b7          	lui	a5,0x1
    80008148:	02913423          	sd	s1,40(sp)
    8000814c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008150:	009504b3          	add	s1,a0,s1
    80008154:	fffff537          	lui	a0,0xfffff
    80008158:	02813823          	sd	s0,48(sp)
    8000815c:	02113c23          	sd	ra,56(sp)
    80008160:	03213023          	sd	s2,32(sp)
    80008164:	01313c23          	sd	s3,24(sp)
    80008168:	01413823          	sd	s4,16(sp)
    8000816c:	01513423          	sd	s5,8(sp)
    80008170:	01613023          	sd	s6,0(sp)
    80008174:	04010413          	addi	s0,sp,64
    80008178:	00a4f4b3          	and	s1,s1,a0
    8000817c:	00f487b3          	add	a5,s1,a5
    80008180:	06f5e463          	bltu	a1,a5,800081e8 <freerange+0xa8>
    80008184:	00005a97          	auipc	s5,0x5
    80008188:	c9ca8a93          	addi	s5,s5,-868 # 8000ce20 <end>
    8000818c:	0954e263          	bltu	s1,s5,80008210 <freerange+0xd0>
    80008190:	01100993          	li	s3,17
    80008194:	01b99993          	slli	s3,s3,0x1b
    80008198:	0734fc63          	bgeu	s1,s3,80008210 <freerange+0xd0>
    8000819c:	00058a13          	mv	s4,a1
    800081a0:	00004917          	auipc	s2,0x4
    800081a4:	97090913          	addi	s2,s2,-1680 # 8000bb10 <kmem>
    800081a8:	00002b37          	lui	s6,0x2
    800081ac:	0140006f          	j	800081c0 <freerange+0x80>
    800081b0:	000017b7          	lui	a5,0x1
    800081b4:	00f484b3          	add	s1,s1,a5
    800081b8:	0554ec63          	bltu	s1,s5,80008210 <freerange+0xd0>
    800081bc:	0534fa63          	bgeu	s1,s3,80008210 <freerange+0xd0>
    800081c0:	00001637          	lui	a2,0x1
    800081c4:	00100593          	li	a1,1
    800081c8:	00048513          	mv	a0,s1
    800081cc:	00000097          	auipc	ra,0x0
    800081d0:	50c080e7          	jalr	1292(ra) # 800086d8 <__memset>
    800081d4:	00093703          	ld	a4,0(s2)
    800081d8:	016487b3          	add	a5,s1,s6
    800081dc:	00e4b023          	sd	a4,0(s1)
    800081e0:	00993023          	sd	s1,0(s2)
    800081e4:	fcfa76e3          	bgeu	s4,a5,800081b0 <freerange+0x70>
    800081e8:	03813083          	ld	ra,56(sp)
    800081ec:	03013403          	ld	s0,48(sp)
    800081f0:	02813483          	ld	s1,40(sp)
    800081f4:	02013903          	ld	s2,32(sp)
    800081f8:	01813983          	ld	s3,24(sp)
    800081fc:	01013a03          	ld	s4,16(sp)
    80008200:	00813a83          	ld	s5,8(sp)
    80008204:	00013b03          	ld	s6,0(sp)
    80008208:	04010113          	addi	sp,sp,64
    8000820c:	00008067          	ret
    80008210:	00001517          	auipc	a0,0x1
    80008214:	56850513          	addi	a0,a0,1384 # 80009778 <digits+0x18>
    80008218:	fffff097          	auipc	ra,0xfffff
    8000821c:	3d4080e7          	jalr	980(ra) # 800075ec <panic>

0000000080008220 <kfree>:
    80008220:	fe010113          	addi	sp,sp,-32
    80008224:	00813823          	sd	s0,16(sp)
    80008228:	00113c23          	sd	ra,24(sp)
    8000822c:	00913423          	sd	s1,8(sp)
    80008230:	02010413          	addi	s0,sp,32
    80008234:	03451793          	slli	a5,a0,0x34
    80008238:	04079c63          	bnez	a5,80008290 <kfree+0x70>
    8000823c:	00005797          	auipc	a5,0x5
    80008240:	be478793          	addi	a5,a5,-1052 # 8000ce20 <end>
    80008244:	00050493          	mv	s1,a0
    80008248:	04f56463          	bltu	a0,a5,80008290 <kfree+0x70>
    8000824c:	01100793          	li	a5,17
    80008250:	01b79793          	slli	a5,a5,0x1b
    80008254:	02f57e63          	bgeu	a0,a5,80008290 <kfree+0x70>
    80008258:	00001637          	lui	a2,0x1
    8000825c:	00100593          	li	a1,1
    80008260:	00000097          	auipc	ra,0x0
    80008264:	478080e7          	jalr	1144(ra) # 800086d8 <__memset>
    80008268:	00004797          	auipc	a5,0x4
    8000826c:	8a878793          	addi	a5,a5,-1880 # 8000bb10 <kmem>
    80008270:	0007b703          	ld	a4,0(a5)
    80008274:	01813083          	ld	ra,24(sp)
    80008278:	01013403          	ld	s0,16(sp)
    8000827c:	00e4b023          	sd	a4,0(s1)
    80008280:	0097b023          	sd	s1,0(a5)
    80008284:	00813483          	ld	s1,8(sp)
    80008288:	02010113          	addi	sp,sp,32
    8000828c:	00008067          	ret
    80008290:	00001517          	auipc	a0,0x1
    80008294:	4e850513          	addi	a0,a0,1256 # 80009778 <digits+0x18>
    80008298:	fffff097          	auipc	ra,0xfffff
    8000829c:	354080e7          	jalr	852(ra) # 800075ec <panic>

00000000800082a0 <kalloc>:
    800082a0:	fe010113          	addi	sp,sp,-32
    800082a4:	00813823          	sd	s0,16(sp)
    800082a8:	00913423          	sd	s1,8(sp)
    800082ac:	00113c23          	sd	ra,24(sp)
    800082b0:	02010413          	addi	s0,sp,32
    800082b4:	00004797          	auipc	a5,0x4
    800082b8:	85c78793          	addi	a5,a5,-1956 # 8000bb10 <kmem>
    800082bc:	0007b483          	ld	s1,0(a5)
    800082c0:	02048063          	beqz	s1,800082e0 <kalloc+0x40>
    800082c4:	0004b703          	ld	a4,0(s1)
    800082c8:	00001637          	lui	a2,0x1
    800082cc:	00500593          	li	a1,5
    800082d0:	00048513          	mv	a0,s1
    800082d4:	00e7b023          	sd	a4,0(a5)
    800082d8:	00000097          	auipc	ra,0x0
    800082dc:	400080e7          	jalr	1024(ra) # 800086d8 <__memset>
    800082e0:	01813083          	ld	ra,24(sp)
    800082e4:	01013403          	ld	s0,16(sp)
    800082e8:	00048513          	mv	a0,s1
    800082ec:	00813483          	ld	s1,8(sp)
    800082f0:	02010113          	addi	sp,sp,32
    800082f4:	00008067          	ret

00000000800082f8 <initlock>:
    800082f8:	ff010113          	addi	sp,sp,-16
    800082fc:	00813423          	sd	s0,8(sp)
    80008300:	01010413          	addi	s0,sp,16
    80008304:	00813403          	ld	s0,8(sp)
    80008308:	00b53423          	sd	a1,8(a0)
    8000830c:	00052023          	sw	zero,0(a0)
    80008310:	00053823          	sd	zero,16(a0)
    80008314:	01010113          	addi	sp,sp,16
    80008318:	00008067          	ret

000000008000831c <acquire>:
    8000831c:	fe010113          	addi	sp,sp,-32
    80008320:	00813823          	sd	s0,16(sp)
    80008324:	00913423          	sd	s1,8(sp)
    80008328:	00113c23          	sd	ra,24(sp)
    8000832c:	01213023          	sd	s2,0(sp)
    80008330:	02010413          	addi	s0,sp,32
    80008334:	00050493          	mv	s1,a0
    80008338:	10002973          	csrr	s2,sstatus
    8000833c:	100027f3          	csrr	a5,sstatus
    80008340:	ffd7f793          	andi	a5,a5,-3
    80008344:	10079073          	csrw	sstatus,a5
    80008348:	fffff097          	auipc	ra,0xfffff
    8000834c:	8ec080e7          	jalr	-1812(ra) # 80006c34 <mycpu>
    80008350:	07852783          	lw	a5,120(a0)
    80008354:	06078e63          	beqz	a5,800083d0 <acquire+0xb4>
    80008358:	fffff097          	auipc	ra,0xfffff
    8000835c:	8dc080e7          	jalr	-1828(ra) # 80006c34 <mycpu>
    80008360:	07852783          	lw	a5,120(a0)
    80008364:	0004a703          	lw	a4,0(s1)
    80008368:	0017879b          	addiw	a5,a5,1
    8000836c:	06f52c23          	sw	a5,120(a0)
    80008370:	04071063          	bnez	a4,800083b0 <acquire+0x94>
    80008374:	00100713          	li	a4,1
    80008378:	00070793          	mv	a5,a4
    8000837c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008380:	0007879b          	sext.w	a5,a5
    80008384:	fe079ae3          	bnez	a5,80008378 <acquire+0x5c>
    80008388:	0ff0000f          	fence
    8000838c:	fffff097          	auipc	ra,0xfffff
    80008390:	8a8080e7          	jalr	-1880(ra) # 80006c34 <mycpu>
    80008394:	01813083          	ld	ra,24(sp)
    80008398:	01013403          	ld	s0,16(sp)
    8000839c:	00a4b823          	sd	a0,16(s1)
    800083a0:	00013903          	ld	s2,0(sp)
    800083a4:	00813483          	ld	s1,8(sp)
    800083a8:	02010113          	addi	sp,sp,32
    800083ac:	00008067          	ret
    800083b0:	0104b903          	ld	s2,16(s1)
    800083b4:	fffff097          	auipc	ra,0xfffff
    800083b8:	880080e7          	jalr	-1920(ra) # 80006c34 <mycpu>
    800083bc:	faa91ce3          	bne	s2,a0,80008374 <acquire+0x58>
    800083c0:	00001517          	auipc	a0,0x1
    800083c4:	3c050513          	addi	a0,a0,960 # 80009780 <digits+0x20>
    800083c8:	fffff097          	auipc	ra,0xfffff
    800083cc:	224080e7          	jalr	548(ra) # 800075ec <panic>
    800083d0:	00195913          	srli	s2,s2,0x1
    800083d4:	fffff097          	auipc	ra,0xfffff
    800083d8:	860080e7          	jalr	-1952(ra) # 80006c34 <mycpu>
    800083dc:	00197913          	andi	s2,s2,1
    800083e0:	07252e23          	sw	s2,124(a0)
    800083e4:	f75ff06f          	j	80008358 <acquire+0x3c>

00000000800083e8 <release>:
    800083e8:	fe010113          	addi	sp,sp,-32
    800083ec:	00813823          	sd	s0,16(sp)
    800083f0:	00113c23          	sd	ra,24(sp)
    800083f4:	00913423          	sd	s1,8(sp)
    800083f8:	01213023          	sd	s2,0(sp)
    800083fc:	02010413          	addi	s0,sp,32
    80008400:	00052783          	lw	a5,0(a0)
    80008404:	00079a63          	bnez	a5,80008418 <release+0x30>
    80008408:	00001517          	auipc	a0,0x1
    8000840c:	38050513          	addi	a0,a0,896 # 80009788 <digits+0x28>
    80008410:	fffff097          	auipc	ra,0xfffff
    80008414:	1dc080e7          	jalr	476(ra) # 800075ec <panic>
    80008418:	01053903          	ld	s2,16(a0)
    8000841c:	00050493          	mv	s1,a0
    80008420:	fffff097          	auipc	ra,0xfffff
    80008424:	814080e7          	jalr	-2028(ra) # 80006c34 <mycpu>
    80008428:	fea910e3          	bne	s2,a0,80008408 <release+0x20>
    8000842c:	0004b823          	sd	zero,16(s1)
    80008430:	0ff0000f          	fence
    80008434:	0f50000f          	fence	iorw,ow
    80008438:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000843c:	ffffe097          	auipc	ra,0xffffe
    80008440:	7f8080e7          	jalr	2040(ra) # 80006c34 <mycpu>
    80008444:	100027f3          	csrr	a5,sstatus
    80008448:	0027f793          	andi	a5,a5,2
    8000844c:	04079a63          	bnez	a5,800084a0 <release+0xb8>
    80008450:	07852783          	lw	a5,120(a0)
    80008454:	02f05e63          	blez	a5,80008490 <release+0xa8>
    80008458:	fff7871b          	addiw	a4,a5,-1
    8000845c:	06e52c23          	sw	a4,120(a0)
    80008460:	00071c63          	bnez	a4,80008478 <release+0x90>
    80008464:	07c52783          	lw	a5,124(a0)
    80008468:	00078863          	beqz	a5,80008478 <release+0x90>
    8000846c:	100027f3          	csrr	a5,sstatus
    80008470:	0027e793          	ori	a5,a5,2
    80008474:	10079073          	csrw	sstatus,a5
    80008478:	01813083          	ld	ra,24(sp)
    8000847c:	01013403          	ld	s0,16(sp)
    80008480:	00813483          	ld	s1,8(sp)
    80008484:	00013903          	ld	s2,0(sp)
    80008488:	02010113          	addi	sp,sp,32
    8000848c:	00008067          	ret
    80008490:	00001517          	auipc	a0,0x1
    80008494:	31850513          	addi	a0,a0,792 # 800097a8 <digits+0x48>
    80008498:	fffff097          	auipc	ra,0xfffff
    8000849c:	154080e7          	jalr	340(ra) # 800075ec <panic>
    800084a0:	00001517          	auipc	a0,0x1
    800084a4:	2f050513          	addi	a0,a0,752 # 80009790 <digits+0x30>
    800084a8:	fffff097          	auipc	ra,0xfffff
    800084ac:	144080e7          	jalr	324(ra) # 800075ec <panic>

00000000800084b0 <holding>:
    800084b0:	00052783          	lw	a5,0(a0)
    800084b4:	00079663          	bnez	a5,800084c0 <holding+0x10>
    800084b8:	00000513          	li	a0,0
    800084bc:	00008067          	ret
    800084c0:	fe010113          	addi	sp,sp,-32
    800084c4:	00813823          	sd	s0,16(sp)
    800084c8:	00913423          	sd	s1,8(sp)
    800084cc:	00113c23          	sd	ra,24(sp)
    800084d0:	02010413          	addi	s0,sp,32
    800084d4:	01053483          	ld	s1,16(a0)
    800084d8:	ffffe097          	auipc	ra,0xffffe
    800084dc:	75c080e7          	jalr	1884(ra) # 80006c34 <mycpu>
    800084e0:	01813083          	ld	ra,24(sp)
    800084e4:	01013403          	ld	s0,16(sp)
    800084e8:	40a48533          	sub	a0,s1,a0
    800084ec:	00153513          	seqz	a0,a0
    800084f0:	00813483          	ld	s1,8(sp)
    800084f4:	02010113          	addi	sp,sp,32
    800084f8:	00008067          	ret

00000000800084fc <push_off>:
    800084fc:	fe010113          	addi	sp,sp,-32
    80008500:	00813823          	sd	s0,16(sp)
    80008504:	00113c23          	sd	ra,24(sp)
    80008508:	00913423          	sd	s1,8(sp)
    8000850c:	02010413          	addi	s0,sp,32
    80008510:	100024f3          	csrr	s1,sstatus
    80008514:	100027f3          	csrr	a5,sstatus
    80008518:	ffd7f793          	andi	a5,a5,-3
    8000851c:	10079073          	csrw	sstatus,a5
    80008520:	ffffe097          	auipc	ra,0xffffe
    80008524:	714080e7          	jalr	1812(ra) # 80006c34 <mycpu>
    80008528:	07852783          	lw	a5,120(a0)
    8000852c:	02078663          	beqz	a5,80008558 <push_off+0x5c>
    80008530:	ffffe097          	auipc	ra,0xffffe
    80008534:	704080e7          	jalr	1796(ra) # 80006c34 <mycpu>
    80008538:	07852783          	lw	a5,120(a0)
    8000853c:	01813083          	ld	ra,24(sp)
    80008540:	01013403          	ld	s0,16(sp)
    80008544:	0017879b          	addiw	a5,a5,1
    80008548:	06f52c23          	sw	a5,120(a0)
    8000854c:	00813483          	ld	s1,8(sp)
    80008550:	02010113          	addi	sp,sp,32
    80008554:	00008067          	ret
    80008558:	0014d493          	srli	s1,s1,0x1
    8000855c:	ffffe097          	auipc	ra,0xffffe
    80008560:	6d8080e7          	jalr	1752(ra) # 80006c34 <mycpu>
    80008564:	0014f493          	andi	s1,s1,1
    80008568:	06952e23          	sw	s1,124(a0)
    8000856c:	fc5ff06f          	j	80008530 <push_off+0x34>

0000000080008570 <pop_off>:
    80008570:	ff010113          	addi	sp,sp,-16
    80008574:	00813023          	sd	s0,0(sp)
    80008578:	00113423          	sd	ra,8(sp)
    8000857c:	01010413          	addi	s0,sp,16
    80008580:	ffffe097          	auipc	ra,0xffffe
    80008584:	6b4080e7          	jalr	1716(ra) # 80006c34 <mycpu>
    80008588:	100027f3          	csrr	a5,sstatus
    8000858c:	0027f793          	andi	a5,a5,2
    80008590:	04079663          	bnez	a5,800085dc <pop_off+0x6c>
    80008594:	07852783          	lw	a5,120(a0)
    80008598:	02f05a63          	blez	a5,800085cc <pop_off+0x5c>
    8000859c:	fff7871b          	addiw	a4,a5,-1
    800085a0:	06e52c23          	sw	a4,120(a0)
    800085a4:	00071c63          	bnez	a4,800085bc <pop_off+0x4c>
    800085a8:	07c52783          	lw	a5,124(a0)
    800085ac:	00078863          	beqz	a5,800085bc <pop_off+0x4c>
    800085b0:	100027f3          	csrr	a5,sstatus
    800085b4:	0027e793          	ori	a5,a5,2
    800085b8:	10079073          	csrw	sstatus,a5
    800085bc:	00813083          	ld	ra,8(sp)
    800085c0:	00013403          	ld	s0,0(sp)
    800085c4:	01010113          	addi	sp,sp,16
    800085c8:	00008067          	ret
    800085cc:	00001517          	auipc	a0,0x1
    800085d0:	1dc50513          	addi	a0,a0,476 # 800097a8 <digits+0x48>
    800085d4:	fffff097          	auipc	ra,0xfffff
    800085d8:	018080e7          	jalr	24(ra) # 800075ec <panic>
    800085dc:	00001517          	auipc	a0,0x1
    800085e0:	1b450513          	addi	a0,a0,436 # 80009790 <digits+0x30>
    800085e4:	fffff097          	auipc	ra,0xfffff
    800085e8:	008080e7          	jalr	8(ra) # 800075ec <panic>

00000000800085ec <push_on>:
    800085ec:	fe010113          	addi	sp,sp,-32
    800085f0:	00813823          	sd	s0,16(sp)
    800085f4:	00113c23          	sd	ra,24(sp)
    800085f8:	00913423          	sd	s1,8(sp)
    800085fc:	02010413          	addi	s0,sp,32
    80008600:	100024f3          	csrr	s1,sstatus
    80008604:	100027f3          	csrr	a5,sstatus
    80008608:	0027e793          	ori	a5,a5,2
    8000860c:	10079073          	csrw	sstatus,a5
    80008610:	ffffe097          	auipc	ra,0xffffe
    80008614:	624080e7          	jalr	1572(ra) # 80006c34 <mycpu>
    80008618:	07852783          	lw	a5,120(a0)
    8000861c:	02078663          	beqz	a5,80008648 <push_on+0x5c>
    80008620:	ffffe097          	auipc	ra,0xffffe
    80008624:	614080e7          	jalr	1556(ra) # 80006c34 <mycpu>
    80008628:	07852783          	lw	a5,120(a0)
    8000862c:	01813083          	ld	ra,24(sp)
    80008630:	01013403          	ld	s0,16(sp)
    80008634:	0017879b          	addiw	a5,a5,1
    80008638:	06f52c23          	sw	a5,120(a0)
    8000863c:	00813483          	ld	s1,8(sp)
    80008640:	02010113          	addi	sp,sp,32
    80008644:	00008067          	ret
    80008648:	0014d493          	srli	s1,s1,0x1
    8000864c:	ffffe097          	auipc	ra,0xffffe
    80008650:	5e8080e7          	jalr	1512(ra) # 80006c34 <mycpu>
    80008654:	0014f493          	andi	s1,s1,1
    80008658:	06952e23          	sw	s1,124(a0)
    8000865c:	fc5ff06f          	j	80008620 <push_on+0x34>

0000000080008660 <pop_on>:
    80008660:	ff010113          	addi	sp,sp,-16
    80008664:	00813023          	sd	s0,0(sp)
    80008668:	00113423          	sd	ra,8(sp)
    8000866c:	01010413          	addi	s0,sp,16
    80008670:	ffffe097          	auipc	ra,0xffffe
    80008674:	5c4080e7          	jalr	1476(ra) # 80006c34 <mycpu>
    80008678:	100027f3          	csrr	a5,sstatus
    8000867c:	0027f793          	andi	a5,a5,2
    80008680:	04078463          	beqz	a5,800086c8 <pop_on+0x68>
    80008684:	07852783          	lw	a5,120(a0)
    80008688:	02f05863          	blez	a5,800086b8 <pop_on+0x58>
    8000868c:	fff7879b          	addiw	a5,a5,-1
    80008690:	06f52c23          	sw	a5,120(a0)
    80008694:	07853783          	ld	a5,120(a0)
    80008698:	00079863          	bnez	a5,800086a8 <pop_on+0x48>
    8000869c:	100027f3          	csrr	a5,sstatus
    800086a0:	ffd7f793          	andi	a5,a5,-3
    800086a4:	10079073          	csrw	sstatus,a5
    800086a8:	00813083          	ld	ra,8(sp)
    800086ac:	00013403          	ld	s0,0(sp)
    800086b0:	01010113          	addi	sp,sp,16
    800086b4:	00008067          	ret
    800086b8:	00001517          	auipc	a0,0x1
    800086bc:	11850513          	addi	a0,a0,280 # 800097d0 <digits+0x70>
    800086c0:	fffff097          	auipc	ra,0xfffff
    800086c4:	f2c080e7          	jalr	-212(ra) # 800075ec <panic>
    800086c8:	00001517          	auipc	a0,0x1
    800086cc:	0e850513          	addi	a0,a0,232 # 800097b0 <digits+0x50>
    800086d0:	fffff097          	auipc	ra,0xfffff
    800086d4:	f1c080e7          	jalr	-228(ra) # 800075ec <panic>

00000000800086d8 <__memset>:
    800086d8:	ff010113          	addi	sp,sp,-16
    800086dc:	00813423          	sd	s0,8(sp)
    800086e0:	01010413          	addi	s0,sp,16
    800086e4:	1a060e63          	beqz	a2,800088a0 <__memset+0x1c8>
    800086e8:	40a007b3          	neg	a5,a0
    800086ec:	0077f793          	andi	a5,a5,7
    800086f0:	00778693          	addi	a3,a5,7
    800086f4:	00b00813          	li	a6,11
    800086f8:	0ff5f593          	andi	a1,a1,255
    800086fc:	fff6071b          	addiw	a4,a2,-1
    80008700:	1b06e663          	bltu	a3,a6,800088ac <__memset+0x1d4>
    80008704:	1cd76463          	bltu	a4,a3,800088cc <__memset+0x1f4>
    80008708:	1a078e63          	beqz	a5,800088c4 <__memset+0x1ec>
    8000870c:	00b50023          	sb	a1,0(a0)
    80008710:	00100713          	li	a4,1
    80008714:	1ae78463          	beq	a5,a4,800088bc <__memset+0x1e4>
    80008718:	00b500a3          	sb	a1,1(a0)
    8000871c:	00200713          	li	a4,2
    80008720:	1ae78a63          	beq	a5,a4,800088d4 <__memset+0x1fc>
    80008724:	00b50123          	sb	a1,2(a0)
    80008728:	00300713          	li	a4,3
    8000872c:	18e78463          	beq	a5,a4,800088b4 <__memset+0x1dc>
    80008730:	00b501a3          	sb	a1,3(a0)
    80008734:	00400713          	li	a4,4
    80008738:	1ae78263          	beq	a5,a4,800088dc <__memset+0x204>
    8000873c:	00b50223          	sb	a1,4(a0)
    80008740:	00500713          	li	a4,5
    80008744:	1ae78063          	beq	a5,a4,800088e4 <__memset+0x20c>
    80008748:	00b502a3          	sb	a1,5(a0)
    8000874c:	00700713          	li	a4,7
    80008750:	18e79e63          	bne	a5,a4,800088ec <__memset+0x214>
    80008754:	00b50323          	sb	a1,6(a0)
    80008758:	00700e93          	li	t4,7
    8000875c:	00859713          	slli	a4,a1,0x8
    80008760:	00e5e733          	or	a4,a1,a4
    80008764:	01059e13          	slli	t3,a1,0x10
    80008768:	01c76e33          	or	t3,a4,t3
    8000876c:	01859313          	slli	t1,a1,0x18
    80008770:	006e6333          	or	t1,t3,t1
    80008774:	02059893          	slli	a7,a1,0x20
    80008778:	40f60e3b          	subw	t3,a2,a5
    8000877c:	011368b3          	or	a7,t1,a7
    80008780:	02859813          	slli	a6,a1,0x28
    80008784:	0108e833          	or	a6,a7,a6
    80008788:	03059693          	slli	a3,a1,0x30
    8000878c:	003e589b          	srliw	a7,t3,0x3
    80008790:	00d866b3          	or	a3,a6,a3
    80008794:	03859713          	slli	a4,a1,0x38
    80008798:	00389813          	slli	a6,a7,0x3
    8000879c:	00f507b3          	add	a5,a0,a5
    800087a0:	00e6e733          	or	a4,a3,a4
    800087a4:	000e089b          	sext.w	a7,t3
    800087a8:	00f806b3          	add	a3,a6,a5
    800087ac:	00e7b023          	sd	a4,0(a5)
    800087b0:	00878793          	addi	a5,a5,8
    800087b4:	fed79ce3          	bne	a5,a3,800087ac <__memset+0xd4>
    800087b8:	ff8e7793          	andi	a5,t3,-8
    800087bc:	0007871b          	sext.w	a4,a5
    800087c0:	01d787bb          	addw	a5,a5,t4
    800087c4:	0ce88e63          	beq	a7,a4,800088a0 <__memset+0x1c8>
    800087c8:	00f50733          	add	a4,a0,a5
    800087cc:	00b70023          	sb	a1,0(a4)
    800087d0:	0017871b          	addiw	a4,a5,1
    800087d4:	0cc77663          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    800087d8:	00e50733          	add	a4,a0,a4
    800087dc:	00b70023          	sb	a1,0(a4)
    800087e0:	0027871b          	addiw	a4,a5,2
    800087e4:	0ac77e63          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    800087e8:	00e50733          	add	a4,a0,a4
    800087ec:	00b70023          	sb	a1,0(a4)
    800087f0:	0037871b          	addiw	a4,a5,3
    800087f4:	0ac77663          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    800087f8:	00e50733          	add	a4,a0,a4
    800087fc:	00b70023          	sb	a1,0(a4)
    80008800:	0047871b          	addiw	a4,a5,4
    80008804:	08c77e63          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    80008808:	00e50733          	add	a4,a0,a4
    8000880c:	00b70023          	sb	a1,0(a4)
    80008810:	0057871b          	addiw	a4,a5,5
    80008814:	08c77663          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    80008818:	00e50733          	add	a4,a0,a4
    8000881c:	00b70023          	sb	a1,0(a4)
    80008820:	0067871b          	addiw	a4,a5,6
    80008824:	06c77e63          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    80008828:	00e50733          	add	a4,a0,a4
    8000882c:	00b70023          	sb	a1,0(a4)
    80008830:	0077871b          	addiw	a4,a5,7
    80008834:	06c77663          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    80008838:	00e50733          	add	a4,a0,a4
    8000883c:	00b70023          	sb	a1,0(a4)
    80008840:	0087871b          	addiw	a4,a5,8
    80008844:	04c77e63          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    80008848:	00e50733          	add	a4,a0,a4
    8000884c:	00b70023          	sb	a1,0(a4)
    80008850:	0097871b          	addiw	a4,a5,9
    80008854:	04c77663          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    80008858:	00e50733          	add	a4,a0,a4
    8000885c:	00b70023          	sb	a1,0(a4)
    80008860:	00a7871b          	addiw	a4,a5,10
    80008864:	02c77e63          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    80008868:	00e50733          	add	a4,a0,a4
    8000886c:	00b70023          	sb	a1,0(a4)
    80008870:	00b7871b          	addiw	a4,a5,11
    80008874:	02c77663          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    80008878:	00e50733          	add	a4,a0,a4
    8000887c:	00b70023          	sb	a1,0(a4)
    80008880:	00c7871b          	addiw	a4,a5,12
    80008884:	00c77e63          	bgeu	a4,a2,800088a0 <__memset+0x1c8>
    80008888:	00e50733          	add	a4,a0,a4
    8000888c:	00b70023          	sb	a1,0(a4)
    80008890:	00d7879b          	addiw	a5,a5,13
    80008894:	00c7f663          	bgeu	a5,a2,800088a0 <__memset+0x1c8>
    80008898:	00f507b3          	add	a5,a0,a5
    8000889c:	00b78023          	sb	a1,0(a5)
    800088a0:	00813403          	ld	s0,8(sp)
    800088a4:	01010113          	addi	sp,sp,16
    800088a8:	00008067          	ret
    800088ac:	00b00693          	li	a3,11
    800088b0:	e55ff06f          	j	80008704 <__memset+0x2c>
    800088b4:	00300e93          	li	t4,3
    800088b8:	ea5ff06f          	j	8000875c <__memset+0x84>
    800088bc:	00100e93          	li	t4,1
    800088c0:	e9dff06f          	j	8000875c <__memset+0x84>
    800088c4:	00000e93          	li	t4,0
    800088c8:	e95ff06f          	j	8000875c <__memset+0x84>
    800088cc:	00000793          	li	a5,0
    800088d0:	ef9ff06f          	j	800087c8 <__memset+0xf0>
    800088d4:	00200e93          	li	t4,2
    800088d8:	e85ff06f          	j	8000875c <__memset+0x84>
    800088dc:	00400e93          	li	t4,4
    800088e0:	e7dff06f          	j	8000875c <__memset+0x84>
    800088e4:	00500e93          	li	t4,5
    800088e8:	e75ff06f          	j	8000875c <__memset+0x84>
    800088ec:	00600e93          	li	t4,6
    800088f0:	e6dff06f          	j	8000875c <__memset+0x84>

00000000800088f4 <__memmove>:
    800088f4:	ff010113          	addi	sp,sp,-16
    800088f8:	00813423          	sd	s0,8(sp)
    800088fc:	01010413          	addi	s0,sp,16
    80008900:	0e060863          	beqz	a2,800089f0 <__memmove+0xfc>
    80008904:	fff6069b          	addiw	a3,a2,-1
    80008908:	0006881b          	sext.w	a6,a3
    8000890c:	0ea5e863          	bltu	a1,a0,800089fc <__memmove+0x108>
    80008910:	00758713          	addi	a4,a1,7
    80008914:	00a5e7b3          	or	a5,a1,a0
    80008918:	40a70733          	sub	a4,a4,a0
    8000891c:	0077f793          	andi	a5,a5,7
    80008920:	00f73713          	sltiu	a4,a4,15
    80008924:	00174713          	xori	a4,a4,1
    80008928:	0017b793          	seqz	a5,a5
    8000892c:	00e7f7b3          	and	a5,a5,a4
    80008930:	10078863          	beqz	a5,80008a40 <__memmove+0x14c>
    80008934:	00900793          	li	a5,9
    80008938:	1107f463          	bgeu	a5,a6,80008a40 <__memmove+0x14c>
    8000893c:	0036581b          	srliw	a6,a2,0x3
    80008940:	fff8081b          	addiw	a6,a6,-1
    80008944:	02081813          	slli	a6,a6,0x20
    80008948:	01d85893          	srli	a7,a6,0x1d
    8000894c:	00858813          	addi	a6,a1,8
    80008950:	00058793          	mv	a5,a1
    80008954:	00050713          	mv	a4,a0
    80008958:	01088833          	add	a6,a7,a6
    8000895c:	0007b883          	ld	a7,0(a5)
    80008960:	00878793          	addi	a5,a5,8
    80008964:	00870713          	addi	a4,a4,8
    80008968:	ff173c23          	sd	a7,-8(a4)
    8000896c:	ff0798e3          	bne	a5,a6,8000895c <__memmove+0x68>
    80008970:	ff867713          	andi	a4,a2,-8
    80008974:	02071793          	slli	a5,a4,0x20
    80008978:	0207d793          	srli	a5,a5,0x20
    8000897c:	00f585b3          	add	a1,a1,a5
    80008980:	40e686bb          	subw	a3,a3,a4
    80008984:	00f507b3          	add	a5,a0,a5
    80008988:	06e60463          	beq	a2,a4,800089f0 <__memmove+0xfc>
    8000898c:	0005c703          	lbu	a4,0(a1)
    80008990:	00e78023          	sb	a4,0(a5)
    80008994:	04068e63          	beqz	a3,800089f0 <__memmove+0xfc>
    80008998:	0015c603          	lbu	a2,1(a1)
    8000899c:	00100713          	li	a4,1
    800089a0:	00c780a3          	sb	a2,1(a5)
    800089a4:	04e68663          	beq	a3,a4,800089f0 <__memmove+0xfc>
    800089a8:	0025c603          	lbu	a2,2(a1)
    800089ac:	00200713          	li	a4,2
    800089b0:	00c78123          	sb	a2,2(a5)
    800089b4:	02e68e63          	beq	a3,a4,800089f0 <__memmove+0xfc>
    800089b8:	0035c603          	lbu	a2,3(a1)
    800089bc:	00300713          	li	a4,3
    800089c0:	00c781a3          	sb	a2,3(a5)
    800089c4:	02e68663          	beq	a3,a4,800089f0 <__memmove+0xfc>
    800089c8:	0045c603          	lbu	a2,4(a1)
    800089cc:	00400713          	li	a4,4
    800089d0:	00c78223          	sb	a2,4(a5)
    800089d4:	00e68e63          	beq	a3,a4,800089f0 <__memmove+0xfc>
    800089d8:	0055c603          	lbu	a2,5(a1)
    800089dc:	00500713          	li	a4,5
    800089e0:	00c782a3          	sb	a2,5(a5)
    800089e4:	00e68663          	beq	a3,a4,800089f0 <__memmove+0xfc>
    800089e8:	0065c703          	lbu	a4,6(a1)
    800089ec:	00e78323          	sb	a4,6(a5)
    800089f0:	00813403          	ld	s0,8(sp)
    800089f4:	01010113          	addi	sp,sp,16
    800089f8:	00008067          	ret
    800089fc:	02061713          	slli	a4,a2,0x20
    80008a00:	02075713          	srli	a4,a4,0x20
    80008a04:	00e587b3          	add	a5,a1,a4
    80008a08:	f0f574e3          	bgeu	a0,a5,80008910 <__memmove+0x1c>
    80008a0c:	02069613          	slli	a2,a3,0x20
    80008a10:	02065613          	srli	a2,a2,0x20
    80008a14:	fff64613          	not	a2,a2
    80008a18:	00e50733          	add	a4,a0,a4
    80008a1c:	00c78633          	add	a2,a5,a2
    80008a20:	fff7c683          	lbu	a3,-1(a5)
    80008a24:	fff78793          	addi	a5,a5,-1
    80008a28:	fff70713          	addi	a4,a4,-1
    80008a2c:	00d70023          	sb	a3,0(a4)
    80008a30:	fec798e3          	bne	a5,a2,80008a20 <__memmove+0x12c>
    80008a34:	00813403          	ld	s0,8(sp)
    80008a38:	01010113          	addi	sp,sp,16
    80008a3c:	00008067          	ret
    80008a40:	02069713          	slli	a4,a3,0x20
    80008a44:	02075713          	srli	a4,a4,0x20
    80008a48:	00170713          	addi	a4,a4,1
    80008a4c:	00e50733          	add	a4,a0,a4
    80008a50:	00050793          	mv	a5,a0
    80008a54:	0005c683          	lbu	a3,0(a1)
    80008a58:	00178793          	addi	a5,a5,1
    80008a5c:	00158593          	addi	a1,a1,1
    80008a60:	fed78fa3          	sb	a3,-1(a5)
    80008a64:	fee798e3          	bne	a5,a4,80008a54 <__memmove+0x160>
    80008a68:	f89ff06f          	j	800089f0 <__memmove+0xfc>
	...
