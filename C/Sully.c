#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>

int main()
{
    int i = 5;
    if (i < 0)
        return(0);
    char fmt_name[11] = "Sully_%d.c";
    char command[400];
    char pgrm_copy[] = "#include <stdio.h>%c#include <fcntl.h>%c#include <stdlib.h>%c%cint main()%c{%c    int i = %d;%c    if (i < 0)%c        return(0);%c    char fmt_name[11] = %cSully_%%d.c%c;%c    char command[400];%c    char pgrm_copy[] = %c%s%c;%c    char fmt_exec[9] = %cSully_%%d%c;%c    char exec_buffer[50];%c    char name_buffer[50];%c    sprintf(name_buffer, fmt_name, i);%c    sprintf(exec_buffer, fmt_exec, i);%c    FILE *file = fopen(name_buffer, %cw%c);%c    fprintf(file, pgrm_copy, 10, 10, 10, 10, 10, 10, i - 1, 10, 10, 10, 34, 34, 10, 10, 34, pgrm_copy, 34, 10, 34, 34, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10);%c    fclose(file);%c    sprintf(command,%cgcc %%s -o %%s && ./%%s%c, name_buffer, exec_buffer, exec_buffer);%c    system(command);%c}";
    char fmt_exec[9] = "Sully_%d";
    char exec_buffer[50];
    char name_buffer[50];
    sprintf(name_buffer, fmt_name, i);
    sprintf(exec_buffer, fmt_exec, i);
    FILE *file = fopen(name_buffer, "w");
    fprintf(file, pgrm_copy, 10, 10, 10, 10, 10, 10, i - 1, 10, 10, 10, 34, 34, 10, 10, 34, pgrm_copy, 34, 10, 34, 34, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10);
    fclose(file);
    sprintf(command,"gcc %s -o %s && ./%s", name_buffer, exec_buffer, exec_buffer);
    system(command);
}