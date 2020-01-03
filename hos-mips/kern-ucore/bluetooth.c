#include <defs.h>
#include <arch.h>
#include <stdio.h>
#include <string.h>
#include <picirq.h>
#include <intr.h>
#include <trap.h>
#include <memlayout.h>
#include <sync.h>
#include <unistd.h>
#include <fs/file.h>
#include <bluetooth.h>
//#include <vga.h>

/* stupid I/O delay routine necessitated by historical PC design flaws */
static void delay(void)
{
    volatile unsigned int j;
    for (j = 0; j < (500); j++) ; // delay
}

//#define DEBUG_COM2
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

static bool serial_exists = 0;


// 串口的初始化，初始化的工作最主要的是打开系统对串口中断的响应，
// 通过指明中断号来调用 pic_enable 函数完成。
static void com2_init(void)
{
    volatile unsigned char *uart = (unsigned char *)COM2;
    if (serial_exists)
        return;
    serial_exists = 1;

    //TODO
    outw(COM2 + COM_LCR,COM_LCR_DLAB);
    outw(COM2 + COM_DLL,(uint32_t)(27));
    outw(COM2 + COM_DLM, 0);
    outw(COM2 + COM_LCR, COM_LCR_WLEN8);
    outw(COM2 + COM_IER, 0);
    outw(COM2 + COM_IER, COM_IER_RDI);
    delay();

    pic_enable(COM2_IRQ);
}
/* serial_proc_data - get data from serial port */
static int serial_proc_data(void)
{
    int c;

    delay();
    if ((inw(COM2 + COM_LSR) & COM_LSR_DATA) == 0)
        return -1;
    delay();
    c = inw(COM2 + COM_RBR) & 0xFF;
    delay();

    if (c == 127) {
        c = '\b';
    }
    return c;
}

void bluetooth_int_handler(void *opaque)
{
    turnoff_intc(INTC_COM2);
    char c = bcons_getc();
	char mode=0;
	int value;
	if(c!=0){
		value = c;
		if(value == 'U') mode = CAR_FORWARD;
		else if(value == 'D') mode = CAR_BACKWARD;
		else if(value == 'L') mode = CAR_TURNLEFT;
		else if(value == 'R') mode = CAR_TURNRIGHT;
		else if(value == 'M')
		{
			musicPlay();
		}
		else mode = 0;
		direction_send(mode);
		PWM_ALL_ON;
	}
    turnon_intc(INTC_COM2);
}
/* *
 * Here we manage the console input buffer, where we stash characters
 * received from the keyboard or serial port whenever the corresponding
 * interrupt occurs.
 * */

#define CONSBUFSIZE 512

static struct {
	uint8_t buf[CONSBUFSIZE];
	uint32_t rpos;
	uint32_t wpos;
} cons;

/* *
 * cons_intr - called by device interrupt routines to feed input
 * characters into the circular console input buffer.
 * */
static void cons_intr(int (*proc) (void))
{
	int c;
	while ((c = (*proc) ()) != -1) {
		if (c != 0) {
			cons.buf[cons.wpos++] = c;
			if (cons.wpos == CONSBUFSIZE) {
				cons.wpos = 0;
			}
		}
	}
}

/* bserial_intr - try to feed input characters from serial port */
void bserial_intr(void)
{
	if (serial_exists) {
		cons_intr(serial_proc_data);
	}
}

/* cons_init - initializes the console devices */
void bluetooth_init(void)
{
	com2_init();
	//cons.rpos = cons.wpos = 0;
	if (!serial_exists) {
		kprintf("serial port does not exist!!\n\r");
	}
}
/* *
 * cons_getc - return the next input character from console,
 * or 0 if none waiting.
 * */
int bcons_getc(void)
{
	int c = 0;
	bool intr_flag;
	local_intr_save(intr_flag);
	{
		// poll for any pending input characters,
		// so that this function works even when interrupts are disabled
		// (e.g., when called from the kernel monitor).
		bserial_intr();

		// grab the next character from the input buffer.
		if (cons.rpos != cons.wpos) {
			c = cons.buf[cons.rpos++];
			if (cons.rpos == CONSBUFSIZE) {
				cons.rpos = 0;
			}
		}
	}
	local_intr_restore(intr_flag);
#ifdef DEBUG_COM2
	if (c) kprintf("cons_get(0x%x)\n\r", c);
#endif
	return c;
}



/* 
 * 功能：马达驱动输出信号
*/    
void direction_send(unsigned char data){
	unsigned i = 0;
	DIR_LATCH_OFF;
	for(;i<8;i++){
		DIR_CLK_OFF;
		if(data & 1)
			DIR_SERIAL_ON;
		else
			DIR_SERIAL_OFF;
		delay_1();
		DIR_CLK_ON;
		delay_1();
		data >>= 1;
	}
	DIR_CLK_OFF;
	delay_1();
	DIR_LATCH_ON;
	DIR_LATCH_OFF;
}
/* 
 * 功能：小延时
*/
void delay_1(){
	volatile unsigned int j;
	for (j = 0; j < (5); j++) ;	// delay 	
}