# ***Interpolation and Polynomial Approximation***






## **Index**
  
  * [Description](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Descripci%C3%B3n.md)
  * [Visuals](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Visuales.md)
  * [Installation](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Instalaci%C3%B3n.md)
  * [Use](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Uso.md)
  * [Suport](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Soporte.md)
  * [Authors and Gratefulness](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Autores.md)
  
## **Description** :page_with_curl:

In this project, the elaboration of different methods of interpolation and polynomial approximation was carried out using matlab. Interpolation is a statistical method in which related known values are used to estimate a security's potential return. The concept of interpolation is used to simplify complicated functions by sampling any data point and interpolating these data points using a simpler function.

The interpolation methods that have been carried out in this project have been the following:

1. Newton's Divided Differences
2. Central Divided Differences
3. Progressive Divided Differences
4. Backward Split Differences
5. Polynomial of Talor
6. Polynomial of Lagrange
7. Neville's method


## **Visuals** :tv:
  


## **Installation** :computer:

For the elaboration of the  interpolation and polynomial approximation methods before talked, it has been necessary to use MatLab, which offers us an integrated development with its own programming language. To download this software you can click [*here* ](https://es.mathworks.com/products/get-matlab.html?s_tid=gn_getml "Link Matlab").

Some of the functions that have been used on the codes were the followings ones: 
* The function `inline` is used to construct an inline function object from the expression.

```matlab
f = inline(fx);
```
* The function `abs` returns the absolute value of each element of the array *X*.
```matlab
Y = abs(X);
```
* The function `plot` creates a 2D line plot of the data in *Y* versus the values in *X* .
```matlab
plot(X,Y);
```
* The function`disp` show us a text on the screen.
```matlab
disp('The process was correct');
```

## **Use**

For the correct use of the project, it will have to be opened at the same time
* [Newton's Divided Differences](https://github.com/AdrianAsen/Interpolacion/blob/main/FUNCIONES/DDnewton.m)
* [Central Divided Differences](https://github.com/AdrianAsen/Interpolacion/blob/main/FUNCIONES/DDcentrales.m)
* [Progressive Divided Differences](https://github.com/AdrianAsen/Interpolacion/blob/main/FUNCIONES/DDprogresivas.m)
* [Backward Split Differences](https://github.com/AdrianAsen/Interpolacion/blob/main/FUNCIONES/DDregresivas.m)
* [Polynomial of Talor](https://github.com/AdrianAsen/Interpolacion/blob/main/FUNCIONES/Ptaylor.m)
* [Polynomial of Lagrange](https://github.com/AdrianAsen/Interpolacion/blob/main/FUNCIONES/Plagrange.m)
* [Neville's method](https://github.com/AdrianAsen/Interpolacion/blob/main/FUNCIONES/Mneville.m)

## **Suport** :interrobang:

For any questions of the program you can contact the followings emails *t1512700921@unitru.edu.pe* or *alem20x@gmail.com*.


## **Authors and Gratefulness** :book:


|       Students     |   Emails   |
|       ----------    |  ---------| 
| Asencios Carranza Adrian Fabrizio|t1052700821@unitru.edu.pe|
| Córdova Saénz Enrique Andre|t1052701521@unitru.edu.pe|
| Mendez Quiñones Angel Piero|t1512700821@unitru.edu.pe|
| Mercado Cueva Esteban Manuel|t1052700521@unitru.edu.pe|
| Sánchez Chunga Alem Sebastian|t1512700921@unitru.edu.pe|
| Valdez Reyes José Alfredo|t1022700221@unitru.edu.pe|

This program was realized like an activity of Numerical Analysis teached by the scholastic *Peralta Castañeda Julio César*.

The implementation of the methods used in this program were extracted from the  Numerical Analysis book's pseudo codes:
>Burden, R. Faires, D. Burden, A. (2017) *Análisis Numérico*. CENGAGE Learning.
