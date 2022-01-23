#include <stdio.h>
#include <string.h>
int main(int argc,char **argv)
{
int i;
int j;

for(i=1;i<argc;i++)
{
printf("%s",argv[i]);
if(i!=argc-1)
printf(" ");
}
printf("\n");
return 0;
}

