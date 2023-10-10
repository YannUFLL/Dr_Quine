#include <stdio.h>
/*
    c2
*/
void emptyFunction(){};
int main(){
/*
    c1
*/
emptyFunction();
char*a="#include <stdio.h>%c/*%c    c2%c*/%cvoid emptyFunction(){};%cint main(){%c/*%c    c1%c*/%cemptyFunction();%cchar*a=%c%s%c;printf(a,10,10,10,10,10,10,10,10,10,10,34,a,34);}";printf(a,10,10,10,10,10,10,10,10,10,10,34,a,34);}