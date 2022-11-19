%{
    /* English language */
    #include<stdio.h>
%}
%option noyywrap
%%
[\t]+

car |
house |
man |
state |
ocean |
country |
city { printf("%s is Noun", yytext); }

she |
he |
we |
they |
it { printf("%s is Pronoun", yytext); }

come |
go |
walk |
did |
have |
read |
write { printf("%s is Verb", yytext); }

pretty |
old |
blue |
smart { printf("%s is Adjective", yytext); }

abnormally |
accidentally |
actually |
beautifully |
bitterly |
brightly |
calmly { printf("%s is Adverb", yytext); }

by |
with |
about |
until { printf("%s is Preposition", yytext); }

and |
but |
or |
while |
because { printf("%s is Conjunction", yytext); }

oh! |
wow! |
oops! { printf("%s is Interjection", yytext); }

[a-zA-Z]+ {
	printf("%s: don't recognize, might be a noun\n", yytext);
}

%%

int main() {
    printf("Enter a string:\t");
    yylex();
    return 0;
}
