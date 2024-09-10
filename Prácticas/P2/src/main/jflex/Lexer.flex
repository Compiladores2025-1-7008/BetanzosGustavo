/**
 * Escáner que detecta el lenguaje C_1
*/

package main.jflex;

import main.java.ClaseLexica;
import main.java.Token;

%%

%{
    // Declaraciones de código Java
    private Token actualToken;
%}

%public
%class Lexer
%standalone
%unicode

// Definiciones de patrones
espacio = [ \t\n\z]+
prInt = int
prFloat = float
prIf = if
prElse = else
prWhile = while
number = ([1-9][0-9]*|0)(.[0-9]*)?([eE][+-]?[0-9]+)?
id = [_a-zA-Z][_a-zA-Z0-9]*
pyc = ;
coma = ,
Lpar = \(
Rpar = \)

// Reglas de escaneo
%%

/* Palabras reservadas */
{prInt} {
    actualToken = new Token(ClaseLexica.INT, "");
    System.out.println(actualToken);
}
{prFloat} {
    actualToken = new Token(ClaseLexica.FLOAT, "");
    System.out.println(actualToken);
}
{prIf} {
    actualToken = new Token(ClaseLexica.IF, "");
    System.out.println(actualToken);
}
{prElse} {
    actualToken = new Token(ClaseLexica.ELSE, "");
    System.out.println(actualToken);
}
{prWhile} {
    actualToken = new Token(ClaseLexica.WHILE, "");
    System.out.println(actualToken);
}

/* Números y variables */
{number} {
    actualToken = new Token(ClaseLexica.NUM, yytext());
    System.out.println(actualToken);
}
{id} {
    actualToken = new Token(ClaseLexica.ID, yytext());
    System.out.println(actualToken);
}

/* Símbolos y puntuación */
{pyc} {
    actualToken = new Token(ClaseLexica.PYC, "");
    System.out.println(actualToken);
}
{coma} {
    actualToken = new Token(ClaseLexica.COMA, "");
    System.out.println(actualToken);
}
{Lpar} {
    actualToken = new Token(ClaseLexica.LPAR, "");
    System.out.println(actualToken);
}
{Rpar} {
    actualToken = new Token(ClaseLexica.RPAR, "");
    System.out.println(actualToken);
}

/* Espacios en blanco */
{espacio} { /* Ignorar espacios */ }

