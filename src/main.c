#include "bitwise.h"

void _display_menu_options()
{
    printf("**************Menu***************\n"
	   "1.Print In Hexadecimal\n");
}

void  print_hexadecimal(int n)
{
    int index = 0;
    
    for (index = sizeof(int) * CHAR_BIT -1; index >= 0; index--) {
	printf("%d", (n >> index) & 1);
	if(index%4 == 0)
	    printf(" ");
    }
    return;
}

int main(void)
{
    int choice = 0;

    _display_menu_options();

    printf("Enter Your choice: ");


}
