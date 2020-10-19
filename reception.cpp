#include"reception.h"
#include <sys/socket.h> 
#include <string.h>
void reception::setOrdre(const char* NOrdre)
{
    ordre = NOrdre;
}
const char* reception::getOrdre()
{
	return ordre;
}
reception::reception()
{
	std::cout<<"objet reception cree\n";
	
}
 void reception::ecoute(int Nsocket)
{
	int bytesReceptionMessage=0;
	char msg[1500];
	std::cout<<"ecoute commencee\n";
	while(true){
		bytesReceptionMessage+=recv(Nsocket,(char*)msg, sizeof(msg), 0);
		std::cout<<msg<<"\n";
		memset(&msg, 0, sizeof(msg)); 
	}
}