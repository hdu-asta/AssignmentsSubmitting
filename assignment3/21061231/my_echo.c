#include<stdio.h>
#include<string.h>

int main(int argv,char* argc[]){
int i=1;
for(i=1;i<argv;i++){
printf("%s ",argc[i]);

}
printf("\n");
}
