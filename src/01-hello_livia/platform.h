#ifndef __PLATFORM_H__
#define __PLATFORM_H__
#define MAXNUM_CPU 8

/*
 * MemoryMap
 * virt_memmap[]
 * 0x00001000 -- boot ROM
 * 0x02000000 -- CLINT
 * 0x0C000000 -- PLIC
 * 0x10000000 -- UART0
 * 0x10001000 -- virtio disk
 * 0x80000000 -- kernel
 */

/* define Based-Address of UART regs */
#define UART0 0x10000000L
#endif
