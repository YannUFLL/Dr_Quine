#include <stdio.h>

#include <fcntl.h>//comment
#define STR "#include <stdio.h>\n%c#include <fcntl.h>//comment%c#define STR %c%s%c%c#define FPRINTF fprintf(file,a,10,10,34,a,34,10,10,34,34,34,34,10);%c#define PRG int m##a##i##n(){ FILE *file = fopen(%cGrace_kid.c%c,%ca%c);char*a=STR;FPRINTF;}%cPRG"
#define FPRINTF fprintf(file,a,10,10,34,a,34,10,10,34,34,34,34,10);
#define PRG int m##a##i##n(){ FILE *file = fopen("Grace_kid.c","a");char*a=STR;FPRINTF;}
PRG