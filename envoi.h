#include <iostream>
class envoi
{
private:
   const char* ordre;
   int socket;
public:
   void setOrdre(const char*);
   void setSocket (int);
 const char* getOrdre();
   envoi();
   void emettre();
}; 