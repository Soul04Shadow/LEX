%{
#include <stdio.h>
%}

%%
[a-z]   { ECHO; printf("%c", yytext[0] - 32); }  // Convert lowercase to uppercase
[A-Z]   { ECHO; }                               // Print uppercase as-is
[^a-zA-Z] { ECHO; }                             // Print other characters as-is
%%

int main() {
    yylex();
    return 0;
}
