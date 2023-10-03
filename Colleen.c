#include <stdio.h>
//c2
void emptyFunction(){};
int main(){//c1
emptyFunction();
char*a="#include <stdio.h>%c//c2%cvoid emptyFunction(){};%cint main(){//c1%cemptyFunction();%cchar*a=%c%s%c;printf(a,10,10,10,10,10,34,a,34);}";printf(a,10,10,10,10,10,34,a,34);}