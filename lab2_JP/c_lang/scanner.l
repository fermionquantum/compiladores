%{
/* header */
#include "token.h"
%}

%{
int Counterlines = 1;
%}


%%

%{
/* blanks */
%}
[ \t]   ;

\n {Counterlines++;}


<<EOF>> return(T_EOF);

%{
/* keywords */
%}


"for"       return(T_FOR);
"while"     return(T_WHILE);
"typedef"   return(T_TYPEDEF);
"switch"    return(T_SWITCH);
"else"      return(T_ELSE);
"if"        return(T_IF);
"union"     return(T_UNION);
"float"     return(T_FLOAT);
"break"     return(T_BREAK);
"continue"  return(T_CONTINUE);
"int"       return(T_INT);
"goto"      return(T_GOTO);
"void"      return(T_VOID);
"char"      return(T_CHAR);
"struct"    return(T_STRUCT);
"long"      return(T_LONG);
"enum"      return(T_ENUM);
"case"      return(T_CASE);
"return"    return(T_RETURN);



%{
/* symbols */
%}

"["  return(T_OPEN_B);
"]"  return(T_CLOSE_B);

"="  return(T_ASSIGN);
"==" return(T_EQUAL);
"!=" return(T_DIFFERENT);

">"  return(T_GREATER);
"<"  return(T_SMALLER);

"<=" return(T_S_OR_E);
">=" return(T_G_OR_E);

":"  return(T_COLON);
";"  return(T_SEMI_COLON);
","  return(T_COMMA);
"."  return(T_DOT);

"("  return(T_OPEN_P);
")"  return(T_CLOSE_P);

"{"  return(T_OPEN_K);
"}"  return(T_CLOSE_K);

"+"  return(T_PLUS);
"-"  return(T_MINUS);
"/"  return(T_DIV);
"*"  return(T_ASTERISK);
"%"  return(T_REMINDER);

"!"  return(T_NOT);
"&&" return(T_AND);
"||" return(T_OR);
"&"  return(T_AMPERSAND);


%{
/* strings, identifiers and integers */
%}

[a-zA-Z][a-zA-Z0-9]*    						   return(T_ID);
(("0x"([0-9]*|[a-fA-F]*)+)|([0-9]+"."[0-9]*))        return(T_NUM);
[\"].*[\"] 								   return(T_STR);

.   return(T_ERROR);

%%

int yywrap() { return 1; }
