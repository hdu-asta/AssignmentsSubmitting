#include<stdlib.h>
#include<stdio.h>
int main(int argc,char *argv[]){
    if(argc==1){
            printf("Error");
            exit(0);
    }
    for(int i = 1; i < argc; i++) printf("%s ",argv[i]);
    return 0;
}
