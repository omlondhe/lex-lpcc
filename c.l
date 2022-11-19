%{
    /* C language */
%}
%option noyywrap
%%

[0-9]+ { printf("%s is Number", yytext); }

if |
printf |
while |
for { printf("%s is Keyword", yytext); }

[+|-|*|/|%] { printf("%s is Arithmetic operator", yytext); }

[&&|||] { printf("%s is Logical operator", yytext); }

[<|<=|>|>=|==] { printf("%s is Relational operator", yytext); }

"\"" |
"[" |
"]" |
"(" |
")" |
"{" |
"}" |
";" |
"#" { printf("%s is Punctuation symbol", yytext); }

%d |
%c |
%f |
%s { printf("%s is Format specifier", yytext); }

[_a-zA-Z0-9]+ { printf("%s is Variable", yytext); }

%%

int main() {
    yylex();
    return 0;
}
