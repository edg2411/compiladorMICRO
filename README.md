# Compilador MICRO

Este es un compilador para el lenguaje MICRO relizado con [LEX](https://es.wikipedia.org/wiki/Lex_(inform%C3%A1tica)) y [YACC](https://es.wikipedia.org/wiki/Yacc).

Los comandos a ejecutar para poder tener el compilador están en comandos.txt

## Modo de Uso
### Descripción de archivos incluidos

Archivo | Descripción
------------ | -------------
comandos.txt   |   Archivo de comandos para compilar el compilador de MICRO.
compiladorMICRO  | Ejecutable del compilador de MICRO ya compilado. Para ejecutarlo: ./compiladorMICRO <source>
lex_micro.l    |   Contiene las definiciones LEXICAS de MICRO. Este es el archivo a compilar con LEX.
yacc_micro.y   |   Contiene las definiciones SINTACTICAS (gramática) y las RUTINAS SEMANTICAS. Este es el archivo a compilar con YACC.
src.mk        |    Contiene un programa ejemplo de MICRO.
    
> Nota: Los archivos y.tab.c, y.tab.h y lex.yy.c son los archivos que genera LEX y YACC al compilar.

## Créditos
Realizado para la materia Sintaxis y Semántica de los Lenguajes - [Universidad Tecnológica Nacional Facultad Regional Buenos Aires](http://www.frba.utn.edu.ar)

**Autores:**
- Liloia Scott, Nicolás.
- Masotta, Augusto.
- Mendez Corridoni, Matías.
    
Año 2017.

## Licencia

**Este código está disponible a la comunidad bajo la licencia GNU General Public License V3**

>This program is free software: you can redistribute it and/or modify
>it under the terms of the GNU General Public License as published by
>the Free Software Foundation, either version 3 of the License, or
>(at your option) any later version.
>
>This program is distributed in the hope that it will be useful,
>but WITHOUT ANY WARRANTY; without even the implied warranty of
>MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>GNU General Public License for more details.
>
>You should have received a copy of the GNU General Public License
>along with this program.  If not, see <http://www.gnu.org/licenses/>.
