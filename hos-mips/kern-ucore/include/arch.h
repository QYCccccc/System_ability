#ifndef __LIBS_THUMIPS_H__
#define __LIBS_THUMIPS_H__

#include <defs.h>

#define do_div(n, base) ({                                          \
            unsigned long __mod;    \
            (__mod) = ((unsigned long)n) % (base);                                \
            (n) = ((unsigned long)n) / (base);                                          \
            __mod;                                                  \
        })

#define barrier() __asm__ __volatile__ ("" ::: "memory")

#define __read_reg(source) (\
    {int __res;\
    __asm__ __volatile__("move %0, " #source "\n\t"\
      : "=r"(__res));\
    __res;\
    })

static inline unsigned int __mulu10(unsigned int n)
{
	return (n << 3) + (n << 1);
}

/* __divu* routines are from the book, Hacker's Delight */

static inline unsigned int __divu10(unsigned int n)
{
	unsigned int q, r;
	q = (n >> 1) + (n >> 2);
	q = q + (q >> 4);
	q = q + (q >> 8);
	q = q + (q >> 16);
	q = q >> 3;
	r = n - __mulu10(q);
	return q + ((r + 6) >> 4);
}

static inline unsigned __divu5(unsigned int n)
{
	unsigned int q, r;
	q = (n >> 3) + (n >> 4);
	q = q + (q >> 4);
	q = q + (q >> 8);
	q = q + (q >> 16);
	r = n - q * 5;
	return q + (13 * r >> 6);
}

static inline uint8_t inb(uint32_t port) __attribute__ ((always_inline));
static inline void outb(uint32_t port, uint8_t data)
    __attribute__ ((always_inline));
static inline uint32_t inw(uint32_t port) __attribute__ ((always_inline));
static inline void outw(uint32_t port, uint32_t data)
    __attribute__ ((always_inline));

static inline uint8_t inb(uint32_t port)
{
	uint8_t data = *((volatile uint8_t *)port);
	return data;
}

static inline void outb(uint32_t port, uint8_t data)
{
	*((volatile uint8_t *)port) = data;
}

static inline uint32_t inw(uint32_t port)
{
	uint32_t data = *((volatile uintptr_t *)port);
	return data;
}

static inline void outw(uint32_t port, uint32_t data)
{
	*((volatile uintptr_t *)port) = data;
}

/* board specification */

//#define ISA_BASE        0xbfd00000
#define COM1            0xb0400000
#define COM1_IRQ        7  //硬件中断源对应的CPU中断号，硬件中断源0-5对应 IP2-7 IM2-7

#define COM2 			0xb0A10000	//注册蓝牙串口硬件模块的分配的地址
#define COM2_IRQ        6

#define TIMER0_IRQ       0

#define COM3	0xb0500000
#define COM3_IRQ 5

#define COM4	0xb0300000
#define COM4_IRQ	4

//无源蜂鸣器频率调节
#define PWM_INT_BASE	0xB1C00000

//CPU时钟频率
#define CLK_FREQ 50000000
//#define KEYBOARD_IRQ    6
//#define KEYBOARD       0xaf000000

#define WRITE_IO(addr) (volatile unsigned int *)( addr)
#define READ_IO(addr)  (volatile unsigned int *)(addr)
#endif /* !__LIBS_THUMIPS_H__ */
