%{
#include <stdio.h>
#include <string.h>

void reverse_and_print(char* str) {
    int len = strlen(str);
    for (int i = len - 1; i >= 0; i--) {
        putchar(str[i]);
    }
}
%}

%%
[a-zA-Z]+   { reverse_and_print(yytext); }   // Reverse each word
[ \t\n]+    { printf("%s", yytext); }        // Preserve whitespace
.           { printf("%s", yytext); }        // Print any other characters as-is
%%

int main() {
    printf("Enter a string: ");
    yylex();
    return 0;
}
