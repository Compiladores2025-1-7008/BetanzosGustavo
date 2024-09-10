%%

%public
%class Lexer
%standalone

// Definiciones de patrones
digito=[0-9]
letra=[a-zA-Z]
palabra={letra}+
hexadecimal=0[xX][0-9a-fA-F]+
espacio=[ \t\n]
palabra_reservada="abstract"|"assert"|"boolean"|"break"|"byte"
identificador={letra}({letra}|{digito}){0,31}

// Orden de las reglas
%%

// Reglas léxicas
{espacio} { /* Ignorar espacios */ }
{hexadecimal} { System.out.print("Encontre un hexadecimal: " + yytext() + "\n"); }
{palabra_reservada} { System.out.print("Encontre una palabra reservada: " + yytext() + "\n"); }
{identificador} { System.out.print("Encontre un identificador: " + yytext() + "\n"); }
{palabra} { System.out.print("Encontre una palabra: " + yytext() + "\n"); }
{digito}+ { System.out.print("Encontre un numero: " + yytext() + "\n"); }
