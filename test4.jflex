%%

%class TokenCounter
%public
%unicode
%cup

// Macros
DIGIT = [0-9]
LETTER = [a-zA-Z]
WORD = {LETTER}+
NUMBER = {DIGIT}+
PUNCTUATION = [\.,\;:\!\?\-]

%%

{WORD}       { System.out.println("Word: " + yytext()); }
{NUMBER}     { System.out.println("Number: " + yytext()); }
{PUNCTUATION} { System.out.println("Punctuation: " + yytext()); }
[\n]         { /* Ignore newlines */ }
[^\n]        { /* Ignore other chars */ }
