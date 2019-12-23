#include <stdio.h>
#include <syscall.h>

#define printf(...)                     fprintf(1, __VA_ARGS__)
#define BUFSIZE                         4096

int main(int argc, char **argv)
{
	printf("free:%d\r\n", sys_free());
	return 0;
}
