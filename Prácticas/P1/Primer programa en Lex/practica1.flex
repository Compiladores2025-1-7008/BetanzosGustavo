/**
 * Escáner que detecta números y palabras
*/

%%

%public
%class Lexer
%standalone

digito=[0-9]
letra=[a-zA-Z]
palabra={letra}+
espacio=[ \t\n]

%%

{espacio} {/* La acción lexica puede ir vacía si queremos que el escaner ignore la regla*/}
{digito}+ { System.out.print("Encontre un numero: "+yytext()+"\n"); }
{palabra} { System.out.print("Encontre una palabra: "+yytext()+"\n"); }