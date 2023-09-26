#include <stdio.h>

//c2
void printHello(){printf("hello");};
int main(){//c1
char*a="#include <stdio.h>\n%c//c2%cvoid printHello(){printf(%chello%c);};%cint main(){//c1%cchar*a=%c%s%c;printf(a,10,10,34,34,10,10,34,a,34);}";printf(a,10,10,34,34,10,10,34,a,34);}