#include <stdio.h>
int main(){
    int R0=1;
    LOOP:                           //@0, M=1
        R0 = R0+1;                  //@0, M=M+1
        if(R0 == 10) goto EXIT;
        printf("R0 = %d\n", R0);
        goto LOOP;
    EXIT:
        return 0;
}