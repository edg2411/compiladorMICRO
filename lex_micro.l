%{
//Se incluyen los header correspondientes para poder usar ciertas funciones y reconocer los TOKEN.
#include <string.h>
#include "y.tab.h"
%}


%{ 
    /*
        Lo siguiente son las declaraciones léxicas de Micro.
        
        %% separa las definiciones de LEX.
        %{ %} se utiliza para escribir código de C que será copiado literalmente.
    */
%}

PALABRA_RESERVADA (inicio|fin|leer|escribir)
LETRA [a-zA-Z]
DIGITO  [0-9]
OPERADOR_ADITIVO    [+-]
ASIGNACION  :=

%%

[(),;]                          return yytext[0];
inicio                          return INICIO;
fin                             return FIN;
leer                            return LEER;
escribir                        return ESCRIBIR;
{LETRA}({LETRA}|{DIGITO})*      {
                                    //Almacenamos el nombre del identificador reconocido para luego poder acceder al mismo desde YACC.
                                    //Si no se utiliza strdup() el puntero de yytext será copiado en yylval.identificador.
                                    yylval.identificador = strdup(yytext); 
                                    return IDENTIFICADOR; //Retornamos el token IDENTIFICADOR para YACC.
                                }
{DIGITO}{DIGITO}*               return CONSTANTE;
{OPERADOR_ADITIVO}              return OPERADOR_ADITIVO;
{ASIGNACION}                    return ASIGNACION;
[ \t\n]+                        /* ignorar espacios y enter, no nos importa analizarlos. */;

