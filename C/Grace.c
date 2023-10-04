#include <stdio.h>
#include <fcntl.h>
#define STR "#include <stdio.h>%c#include <fcntl.h>%c#define STR %c%s%c%c#define FPRINTF fprintf(file,a,10,10,34,a,34,10,10,34,34,10,34,34,10,10,10,10);%c#define FT(x) int main(){ FILE *file = fopen(%cGrace_kid.c%c, x);char*a=STR;FPRINTF;}%cFT(%ca%c)%c/*%c    comment%c*/"
#define FPRINTF fprintf(file,a,10,10,34,a,34,10,10,34,34,10,34,34,10,10,10,10);
#define FT(x) int main(){ FILE *file = fopen("Grace_kid.c", x);char*a=STR;FPRINTF;}
FT("a")
/*
    comment
*/