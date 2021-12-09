#include <inttypes.h>
#include <stdio.h>
#include <pthread.h>


#define		FAILURE		1
#define		SUCCESS		0

#define		FILE_NAME_LEN	2048
#define		MAX_FILE_SIZE	1024*1024*1024 /* 2M */
#define		DATE_CHAR_LEN	32
#define		PACKET_LEN		255

