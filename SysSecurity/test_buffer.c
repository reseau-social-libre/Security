// Warning! program to run with caution, this program will break your code to be able to leave a trace, this is called the buffer overflow technique.
// This code was created for a test purpose on the project.
// created for the RSL project.
// WE ARE NOT RESPONSIBLE FOR WHAT YOU DO WITH THIS CODE

#include <stdio.h>

void __Init__(){
    scanf("Enter an LINE :\n");
    printf("Buffer overflow in : %x\n", sizeof(int));
}

void foo(){
    __Init__();
    foo();
}

int main(){
    foo();
    __Init__();
    return 0;
}
