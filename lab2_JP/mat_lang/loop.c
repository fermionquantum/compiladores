#include "token.h"
#include <stdio.h>
#include <stdlib.h>


void main(int argc, char* argv[]) {
    printf("start\n");
    yyin = fopen(argv[1], "r");
    yylex();
    printf("word count: %d\n", wordCount);
    fclose(yyin);
}
