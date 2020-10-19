#include <stdio.h>
#include <iostream>
#include <unistd.h> 
#include <sys/socket.h> 
#include <stdlib.h> 
#include <netinet/in.h> 
#include <string.h> 
#include <thread>
#include "reception.h"
#include "envoi.h"
#define PORT 7777 
int main(int argc, char **argv)
{
	int server_fd, new_socket, valread; 
    struct sockaddr_in address; 
    int opt = 1; 
    int addrlen = sizeof(address); 
    char buffer[1024] = {0}; 
	printf("Cerber on\n");
	reception ecoute;
	envoi emission;
	std::cout<<ecoute.getOrdre()<<"\n";
	
	if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) 
    { 
        perror("socket failed"); 
        exit(EXIT_FAILURE); 
    } 
	
	 if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, 
                                                  &opt, sizeof(opt))) 
    { 
        perror("setsockopt"); 
        exit(EXIT_FAILURE); 
    } 
	
	address.sin_family = AF_INET; 
    address.sin_addr.s_addr = INADDR_ANY; 
    address.sin_port = htons( PORT ); 
	if (bind(server_fd, (struct sockaddr *)&address,  
                                 sizeof(address))<0) 
    { 
        perror("bind failed"); 
        exit(EXIT_FAILURE); 
    } 
	if (listen(server_fd, 3) < 0) 
    { 
        perror("listen"); 
        exit(EXIT_FAILURE); 
    } 
	if ((new_socket = accept(server_fd, (struct sockaddr *)&address,  
                       (socklen_t*)&addrlen))<0) 
    { 
        perror("accept"); 
        exit(EXIT_FAILURE); 
    } 
	valread = read( new_socket , buffer, 1024); 
	printf("%s\n",buffer ); 
	int bytesReceptionMessage=0;
	char msg[1500];
	std::thread thread(reception::ecoute, new_socket);
	emission.setSocket(new_socket);
	emission.setOrdre("kill");
	std::string name;
	while(true)
	{
		std::getline (std::cin,name);
		emission.setOrdre(name.c_str());
		emission.emettre();
	}
	
	std::cin.ignore();
	return 0;
}
