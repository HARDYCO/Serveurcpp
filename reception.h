#include <iostream>
#include <string>


class reception
{
private:
   const char* ordre;
public:
   void setOrdre(const char*);
   const char* getOrdre();
   reception();
   static void ecoute(int nSocket);
}; 