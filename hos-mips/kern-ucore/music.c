#include<arch.h>

//定义低音音名C
#define L1 262
#define L2 294
#define L3 330
#define L4 349
#define L5 392
#define L6 440
#define L7 494

//定义中音音名C
#define M1 523
#define M2 587
#define M3 659
#define M4 698
#define M5 784
#define M6 880
#define M7 988

//定义高音音名C
#define H1 1047
#define H2 1175
#define H3 1319
#define H4 1397
#define H5 1568
#define H6 1760
#define H7 1976



//定义时值单位,决定演奏的速度 ms为单位 2000为佳
#define TT 2000    

typedef struct
{
	short mName; //音名
	short mTime; //时值，全音符，二分音符，四分音符
}tNote;

const tNote MyScore[]=
{ //Always with me  
	{0,TT/2},{M1,TT/8},{M2,TT/8},{M3,TT/8},{M1,TT/8},{M5,TT/4+TT/8},{M3,TT/8},
	{M2,TT/4},{M5,TT/4},{M2,TT/4},{M1,TT/8},{L6,TT/8},{M3,TT/4+TT/8},{M1,TT/8},
	{L7,TT/2},{M1,TT/8},{L7,TT/8},{L6,TT/4},{L7,TT/4},{M1,TT/8},{M2,TT/8},
	{L5,TT/4},{M1,TT/4},{M2,TT/8},{M3,TT/8},{M4,TT/4},{M4,TT/8},{M3,TT/8},{M2,TT/8},{M1,TT/8},
	{M2,TT/2},{M1,TT/8},{M2,TT/8},{M3,TT/8},{M1,TT/8},{M5,TT/4+TT/8},{M3,TT/8},
	{M2,TT/4},{M5,TT/4},{M2,TT/4},{M1,TT/8},{L6,TT/8},{L6,TT/4},{L7,TT/8},{M1,TT/8},
	{L5,TT/2},{0,TT/8},{L5,TT/8},{L6,TT/4},{L7,TT/4},{M1,TT/8},{M2,TT/8},//question
	{L5,TT/4},{M1,TT/4},{M2,TT/8},{M3,TT/8},{M4,TT/4},{M4,TT/8},{M3,TT/8},{M2,TT/8},{M1,TT/8},{M1,TT/2+TT/4},

	{0,TT/2},{M3,TT/8},{M4,TT/8},{M5,TT/4},{M5,TT/4},{M5,TT/4},{M5,TT/4},{M5,TT/8},{M6,TT/8},{M5,TT/8},{M4,TT/8},
	{M3,TT/4},{M3,TT/4},{M3,TT/4},{M3,TT/4},{M3,TT/8},{M4,TT/8},{M3,TT/8},{M2,TT/8},
	{M1,TT/4},{M1,TT/4},{M1,TT/8},{L7,TT/8},{L6,TT/4},{L7,TT/4},{L7,TT/8},{M1,TT/8},
	{M2,TT/4},{M2,TT/8},{M3,TT/8},{M2,TT/8},{M3,TT/8},{M2,TT/2},{M3,TT/8},{M4,TT/8},
	{M5,TT/4},{M5,TT/4},{M5,TT/4},{M5,TT/4},{M5,TT/8},{M6,TT/8},{M5,TT/8},{M4,TT/8},
	{M3,TT/4},{M3,TT/4},{M3,TT/4},{M3,TT/8},{M4,TT/8},{M3,TT/8},{M2,TT/8},{M1,TT/8},{L7,TT/8},
	{L6,TT/4},{L6,TT/8},{L7,TT/8},{M1,TT/8},{M2,TT/8},{L5,TT/4},{M1,TT/4},{M2,TT/8},{M3,TT/8},
	{M2,TT/4+TT/8},{M2,TT/8},{M2,TT/8},{M1,TT/8},{M1,TT/2+TT/4},{0,0},  
};
void delay_1_for_music() {
	volatile unsigned int j;

	for (j = 0; j < (5000); j++) ;	// 参数视情况而定，不一定是5000
}

void musicPlay(void)
{
	int i = 0;
	while(1)
	{
		if(MyScore[i].mTime == 0)
		{
			*WRITE_IO(PWM_INT_BASE) = 0;
			break;
		}
//根据不同的音节控制，选择对应的计数终值（分频系数）
//低音1的频率为261.6Hz，蜂鸣器控制信号周期应为12MHz/261.6Hz = 45871.5，
//因为本设计中蜂鸣器控制信号（PWM模块）是按计数器周期翻转的，所以几种终值 = 45871.5/2 = 22936
//需要计数22936个，计数范围为0 ~ (22936-1)，所以time_end = 22935
		unsigned int frq = MyScore[i].mName;
		if (frq)
		{
			int time_end = ((CLK_FREQ / frq) / 2) - 1;
			*WRITE_IO(PWM_INT_BASE) = time_end;
		}
		delay_n_for_music(MyScore[i].mTime);
		i++;
	}
}

void delay_n_for_music(int ms)
{
	for(int i = 0; i < ms; ++i)
		delay_1_for_music();
}