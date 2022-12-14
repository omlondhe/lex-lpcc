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
city { printf("%s: is Noun\n", yytext); }

she |
he |
we |
they |
it { printf("%s: is Pronoun\n", yytext); }

come |
go |
walk |
did |
have |
read |
write { printf("%s: is Verb\n", yytext); }

pretty |
old |
blue |
smart { printf("%s: is Adjective\n", yytext); }

abnormally |
accidentally |
actually |
beautifully |
bitterly |
brightly |
calmly { printf("%s: is Adverb\n", yytext); }

by |
with |
about |
until { printf("%s: is Preposition\n", yytext); }

and |
but |
or |
while |
because { printf("%s: is Conjunction\n", yytext); }

oh! |
wow! |
oops! { printf("%s: is Interjection\n", yytext); }

[a-zA-Z]+ {
	printf("%s: don't recognize, might be a noun\n", yytext);
}

%%

int main() {
    printf("Enter a string:\t");
    yylex();
    return 0;
}
