#include "routedns.h"

using namespace std;

void Nowtime()
{
	struct timeval tv;
	gettimeofday(&tv,NULL);
	struct tm *p;
	p = gmtime((time_t *)&tv.tv_sec);
	printf("[%02d:%02d:%02d.%06ld] ",(p->tm_hour+8)%24, p->tm_min, p->tm_sec, tv.tv_usec);
}

uint32_t parseNAME(uint8_t *buffer,uint8_t *Domain)
{
	uint32_t i = 0,num = 0,a = 0;
	uint8_t j = *buffer;
	do{
		for(i = 0;i < j;i++)
		{
			buffer ++;num++;
			Domain[a] = *buffer;
			a++;
		}
		Domain[a] = '.';
		a++;
		buffer ++;num++;
		j = *buffer;
	}while(j != 0);
	num += 5;
	return num;
}


uint32_t Parse_Rcvbuf(uint8_t *buffer)
{

		uint32_t transID,ret = 0;
		parse(buffer,&transID);
		uint32_t Flags;
		parse(buffer,&Flags);
		print_info("Flags = %#x",Flags);
		
		uint32_t Question;
		parse(buffer,&Question);
		print_info("Question = %#x",Question);

		uint32_t AnserRRs;
		parse(buffer,&AnserRRs);
		print_info("AnserRRs = %#x",AnserRRs);

		uint32_t Authority;
		parse(buffer,&Authority);
		print_info("AdditionalRRs = %#x",Authority);

		uint32_t AdditionalRRs;
		parse(buffer,&AdditionalRRs);
		print_info("AdditionalRRs = %#x",AdditionalRRs);

		uint8_t Domain[256] = {0};
		buffer += parseNAME(buffer,Domain);
		print_info("Domain = %s ",Domain);
		string domain((const char*)Domain);
		string ip;
		while(*buffer == 0xc0)
		{
			buffer += 2; 				//->type;
			buffer += 2;				//->Class;
			buffer += 2;				//->TTL;
			buffer += 4;				//->length
			buffer += 1;				//->little
			if(*buffer != 4)			//not ip;
			{
				buffer += *buffer + 1;
			}
			else						//is ip
			{
				struct in_addr *netip;
				buffer += 1;
				netip = (struct in_addr *)buffer;
				buffer += 4;
				char _data[255];
				char *net_ip = inet_ntoa(*netip);
				print_info("ip = %s",net_ip);
				sprintf(_data,"%s;",net_ip);
				ip.append(_data);
				//printf("ip = %s",inet_ntop(*netip));
			}
		}
		string sql;
		sql.append(domain);
		sql.append(" ");
		sql.append(ip);
		cout << sql << endl;

	ret = 1;
	return ret;
}

void hexdump(unsigned char *buff, const int num) {
  for (int i = 0; i < num; i++) {
    printf("%02X", buff[i]);
    if ((i + 1) % 8 == 0)
      printf(" ");
    if ((i + 1) % 16 == 0)
      printf("\n");
  }
  printf("\n\n");
  return;
}
