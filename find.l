%{
#include <stdio.h>
#include <string.h>

char smallest[100];
int first = 1;
%}

%%
[a-zA-Z]+ {
    if (first) {
        strcpy(smallest, yytext);
        first = 0;
    } else {
        if (strlen(yytext) < strlen(smallest)) {
            strcpy(smallest, yytext);
        }
    }
}
[ \t\n]+   ;    // Ignore whitespace
.          ;    // Ignore other characters
%%

int main() {
    printf("Enter a string: ");
    yylex();
    printf("Smallest word: %s\n", smallest);
    return 0;
}
