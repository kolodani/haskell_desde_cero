{-
COMPREHENSION LISTS: RESOLVER PROBLEMAS DE ALGEBRA BASICA
-}

-- mostrar la sima de dos variables, cada una con un rango diferente
lista1 = [ x + y | x<-[1 .. 5], y<-[1 .. 10]]

-- problemas de algebra de primer grado
-- ejemplo 1:
-- la suma de dos numeros es 5 y su producto es -84, hallar dichos numeros
ej1 = [[x, y] | x <- [(-84) .. 84], y <- [(-84) .. 84], x+y == 5, x*y == (-84)]

--ejemplo 2:
--Si el perimetro de un cuadrado es 24cm, ¿cuanto miden sus lados?
ej2 = [l | l <- [0 .. 24], 4*l == 24]

--ejemplo 3:
-- encontrar un numero tal que la suma de su doble y de su triple es igual a 100
ej3 = [x | x <- [0 .. 100], 2*x+3*x == 100]

--ejemplo 4:
-- hallar un numero x sabiendo que la cuarta parte de la quinta parte de la tercera parte de x es 3
ej4 = [x | x <- [0 .. 1000], ((x/3)/5)/4 == 3]

-- ejemplo 5:
-- la base de un rectangulo mide 18cm mas que su altura, y el perimetro mide 76cm
-- cuales son las dimensiones del rectangulo?
ej5 = [[x, y] | x <- [0 .. 76], y <- [0 .. 76], x + 18 == y, 2*x+2*y == 76]

-- ejemplo 6:
-- dentro de 11 años la edad de Pedro sera la mitad del cuadrado de la edad que tenia hace 13 años.
-- que edad tiene Pedro?
ej6 = [x | x <- [0 .. 100], x + 11 == ((x-13)^2)/2, x >= 13]

-- ejemplo 7:
-- para vallar una finca rectangular de 750 metros cuadrados se han utilizando a 110 metros de cerca
-- calcular las dimensiones de la finca
ej7 = [[x, y] | x <- [0 .. 110], y <- [0 .. 110], x * y == 750, 2*x+2*y == 110, x > y]

-- ejemplo 8:
-- el producto de dos numeros es 4 y la suma de sus cuadrados es 17, cuales son esos dos numeros?
ej8 = [[x, y] | x <- [(-17) .. 17], y <- [(-17) .. 17], x*y == 4, (x^2)+(y^2) == 17]

--ejemplo 9:
-- mostrar tres numeros consecutivos tales que su suma es 300
ej9 = [[x, y, z] | x <- [0 .. 300], y <- [0 .. 300], z <- [0 .. 300], x + 1 == y, x + 2 == z, x + y + z == 300]

-- ejemplo 10:
-- mostrar tres numeros consecutivos pares tales que su suma es 300
ej10 = [[x, y, z] | x <- [0 .. 300], y <- [0 .. 300], z <- [0 .. 300], x `mod` 2 == 0, y `mod` 2 == 0, z `mod` 2 == 0, x + 2 == y, x + 4 == z, x + y + z == 300]

-- ejemplo 11:
-- mostrar siete ejemplos de tres numeros que al sumarse sean 300
ej11 = take 7 [[x, y, z] | x <- [0 .. 300], y <- [0 .. 300], z <- [0 .. 300], x + y + z == 300]

-- ejemplo 12:
-- dar 10 ejemplos donde el producto de un numero par con un numero impar es un numero par
-- siendo el numero par mayor que 1 y el numero impar mayor que 1
ej12 = take 10 [[x, y, z] | x <- [1 .. 100], y <- [1 .. 100], z <- [1 .. 100], x `mod` 2 == 0, y `mod` 2 == 1, x * y == z, x > 1, y > 1]

-- ejemplo 13:
-- hallar tres numeros consecutivos entre -20 y 20
-- tales que su suma sea el doble del menor de los tres numeros
ej13 = [[x, y, z] | x <- [(-20) .. 20], y <- [(-20) .. 20], z <- [(-20) .. 20],x+1 ==y, x +2 ==z, x+y+z == 2*(minimum [x,y,z])]

-- ejemplo 14:
-- dado un triangulo rectangulo cuyos lados son menor o igual que 10, y la suma de sus 3 lados es 24
ej14 = [[x, y, z] | x <- [1 .. 10], y <- [1 .. 10], z <- [1 .. 10], x+y+z == 24, (x^2)+(y^2) == (z^2)]
