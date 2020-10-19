#include"envoi.h"
#include <sys/socket.h> 
#include <string.h>
#include <sys/socket.h> 
void envoi::setOrdre(const char* NOrdre)
{
    ordre = NOrdre;
}
const char* envoi::getOrdre()
{
	return ordre;
}
envoi::envoi()
{
	std::cout<<"objet envoi cree\n";
	
}
 void envoi::emettre()
{
	send(this->socket , this->ordre , strlen(this->ordre) , 0 ); 
}
void envoi::setSocket(int Nsocket)
{
	socket=Nsocket;
}