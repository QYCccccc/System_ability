#ifndef __KERN_DRIVER_BLUETOOTH_H__
#define __KERN_DRIVER_BLUETOOTH_H__

#define GPIO_CAR_PORTS        0xB0600000

#define PWM_INT_4_BASE 0xB0C00000
#define output (*WRITE_IO(GPIO_CAR_PORTS))
#define output_pwm (*WRITE_IO(PWM_INT_4_BASE))


// 定义 马达驱动接口
#define DIR_CLK 0
#define DIR_ENABLE 1
#define DIR_SERIAL 2
#define DIR_LATCH 3

#define DIR_ENABLE_ON  (output = output & (~(1<<DIR_ENABLE)))
#define DIR_ENABLE_OFF  (output = output | ((1<<DIR_ENABLE)))

#define DIR_LATCH_ON   (output = output | ((1<<DIR_LATCH)))
#define DIR_LATCH_OFF (output = output & (~(1<<DIR_LATCH)))

#define DIR_CLK_ON  (output = output | ((1<<DIR_CLK)))
#define DIR_CLK_OFF (output = output & (~(1<<DIR_CLK)))

#define DIR_SERIAL_ON   (output = output | ((1<<DIR_SERIAL)))
#define DIR_SERIAL_OFF (output = output & (~(1<<DIR_SERIAL)))

#define PWM_ALL_ON (output_pwm = 0x0)

#define CAR_FORWARD ((unsigned char)0xE1) //1110 0001
#define CAR_BACKWARD ((unsigned char)~0xE1)
// #define CAR_TURNLEFT ((unsigned char)0xD4)
// #define CAR_TURNRIGHT ((unsigned char)~0xD4)
#define CAR_TURNLEFT ((unsigned char)0xAC)
#define CAR_TURNRIGHT ((unsigned char)~0xAC)

void bluetooth_init(void);
void bluetooth_putc(int c);
void bcons_putc(int c);
int bcons_getc(void);
void bserial_intr(void);
void direction_send(unsigned char data);
#endif /* !__KERN_DRIVER_CONSOLE_H__ */
