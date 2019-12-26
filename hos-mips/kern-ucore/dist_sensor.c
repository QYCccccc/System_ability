#include<defs.h>
#include<arch.h>
#include<stdio.h>
#include <string.h>
#include <picirq.h>
#include <intr.h>
#include<trap.h>
#include <memlayout.h>
#include <sync.h>

/***** Serial I/O code *****/

#define COM_RBR         0x1000  // In:receive buffer
#define COM_THR         0x1000  // Out:Transmitter Holding Register
#define COM_IER         0x1004  // Out: Interrupt Enable Register
#define COM_IIR         0x1008  // In:  Interrupt ID Register
#define COM_FCR         0x1008  // Out: FIFO Control Register
#define COM_LCR         0x100c  // Out: Line Control Register
#define COM_MCR         0x1010  // Out: Modem Control Register
#define COM_LSR         0x1014  // In:  Line Status Register
#define COM_MSB         0x1018  // Modem Status Register
#define COM_DLL         0x1000  // Out: Divisor Latch (Least Significant Byte) Register (DLAB=1)
#define COM_DLM         0x1004  // Out: Divisor Latch (Most Significant Byte) Register (DLAB=1)

#define COM_IER_RDI     0x01    // Enable receiver data interrupt
#define COM_LCR_DLAB    0x80    // Divisor latch access bit
#define COM_LCR_WLEN8   0x03    // Wordlength: 8 bits
#define COM_MCR_RTS     0x02    // RTS complement
#define COM_MCR_DTR     0x01    // DTR complement
#define COM_MCR_OUT2    0x08    // Out2 complement
#define COM_LSR_DATA    0x01    // Data available
#define COM_LSR_TXRDY   0x20    // Transmit buffer avail
#define COM_LSR_TSRE    0x40    // Transmitter off


static bool com3_exists = 0;


static void com3_init(void)
{

    volatile unsigned char *uart = (unsigned char *)COM3;
    if (com3_exists)
        return;
    com3_exists = 1;

    outw(COM3 + COM_IER, COM_IER_RDI);
    delay();


    pic_enable(COM3_IRQ);
}

static int com3_proc_data(void)
{
    int c;
    delay();
    if((inw(COM3 + COM_LSR) & COM_LSR_DATA) == 0)
        return -1;
    delay();
    c = inw(COM3 + COM_RBR) & 0xFF;
    delay();
    return c;
}

void distSensor_int_handler(void *opaque)
{
    turnoff_intc(INTC_COM3);
    int c = com3_proc_data();
    PRINT_HEX("\n\r ReceivedData: ", c);
    if(c == 0)
    {
        kprintf("Sensor1!\n\r");
        direction_send(0);
    }
    turnon_intc(INTC_COM3);
}

void distSensor_init(void)
{
    com3_init();
    if(!com3_exists)
    {
        kprintf("serial port does not exist!!\n\r");
    }
}
