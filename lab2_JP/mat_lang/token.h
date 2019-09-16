#ifndef TOKEN_HEADER
#define TOKEN_HEADER

enum token_id
{
    T_VAR,      // "var"   ok
    T_ASSIGN,   // "="     ok
    T_FUNC,     // "func"  ok
    T_COLON,    // ":"     ok
    T_COMMA,    // ","     ok
    T_OPEN_P,   // "("     ok
    T_CLOSE_P,  // ")"     ok
    T_PLUS,     // "+"     ok
    T_MINUS,    // "-"     ok
    T_DIV,      // "/"     ok
    T_MULT,     // "*"     ok
    T_ID,       // [a-zA-Z][a-zA-Z0-9]* //ok
    T_NUMBER,   // [0-9]+               //ok
    T_EOF,      // 		  ok
    T_ERROR,    // 		  ok
};

static const char *token_str[] =
{
    [T_VAR] = "T_VAR",
    [T_ASSIGN] = "T_ASSIGN",
    [T_FUNC] = "T_FUNC",
    [T_COLON] = "T_COLON",
    [T_COMMA] = "T_COMMA",
    [T_OPEN_P] = "T_OPEN_P",
    [T_CLOSE_P] = "T_CLOSE_P",
    [T_PLUS] = "T_PLUS",
    [T_MINUS] = "T_MINUS",
    [T_DIV] = "T_DIV",
    [T_MULT] = "T_MULT",
    [T_ID] = "T_ID",
    [T_NUMBER] = "T_NUMBER",
    [T_EOF] = "T_EOF",
    [T_ERROR] = "T_ERROR",
};

#endif /* TOKEN_HEADER */
