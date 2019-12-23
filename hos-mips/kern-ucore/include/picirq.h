#ifndef __KERN_DRIVER_PICIRQ_H__
#define __KERN_DRIVER_PICIRQ_H__

void pic_init(void);
void pic_enable(unsigned int irq);
void pic_disable(unsigned int irq);
unsigned int getpic_status(void);
void turnoff_intc(unsigned c);
void turnon_intc(unsigned c);

void xilinx_intc_init(void); // added by xiaohan for simplicity. 
							 // When EIC interrupt are handled, I simply re-initialize
							 // EIC to avoid writing codes that tell EIC that 
							 // its interrupt requested has been handled.
#define IRQ_OFFSET      32

//对应中断控制器中的硬件中断源
#define  INTC_COM1   (1<<5) 
#define  INTC_COM2   (1<<4)

#endif /* !__KERN_DRIVER_PICIRQ_H__ */
