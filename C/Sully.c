#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

int main() 
{
    int i = 5;
    if (i < 0)
        return(0);
    char name[10] = "Sully_5.c";
    char command[200];
    char pgrm_copy[] = "#include <stdio.h>%c#include <fcntl.h>%c#include <stdlib.h>%c%cint main()%c{%c    int i = %d;%c     if (i < 0)%c   return(0);%c   char name[10] = %cSully_5.c%c;%c    char command[100];%c    char pgrm_copy[] = %c%s%c;%c    char exec[8] = %cSully_5%c;%c    name[6] -= 5 - i;%c    exec[6] -= 5 - i;%c    FILE *file = fopen(name, %cw%c);%c    fprintf(file, pgrm_copy, 10, 10, 10, 10, 10, 10, 10, 10, i - 1, 10, 34, 34, 10, 10, 34, pgrm_copy, 34, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10);%c   fclose(file);%c    sprintf(command,%cgcc %%s -o %%s && ./%%s%c, name, exec, exec);%c    system(command);%c}%c";
    char exec[8] = "Sully_5";
    name[6] -= 5 - i;
    exec[6] -= 5 - i;
    FILE *file = fopen(name, "w");
    fprintf(file, pgrm_copy, 10, 10, 10, 10, 10, 10, 10, 10, i - 1, 10, 34, 34, 10, 10, 34, pgrm_copy, 34, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10);
    sprintf(command,"gcc %s -o %s && ./%s", name, exec, exec);
    fclose(file);
    system(command);
}