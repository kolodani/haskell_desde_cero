{-
RANGOS
-}

-- numeros del 1 al 100 contando en 1 en 1
lista1 = [1 .. 100]

-- numeros del 7 al 37 contando en 1 en 1
lista2 = [7 .. 37]

-- numeros hasta el 100, de 2 en 2 partiendo de cero,
-- para hacer esto tengo que poner los primeros dos numeros de la serie en este caso 0 y 2
lista3 = [0, 2 .. 100]

-- numeros hasta el 100, de 2 en 2 partiendo de 2
lista4 = [2, 4 .. 100]

-- numeros hasta el 103, de 2 en 2 partiendo de 0
lista5 = [0, 2 .. 103]

-- numeros de 1 a 100, saltando de 1 a 7, de 6 en 6
lista6 = [1, 7 .. 100]

-- numeros desde 50 de 1 en 1 de forma descendente
lista7 = [50, 49 .. 0]

-- numeros pares de forma descendente desde 100 hasta 0
lista8 = [100, 98 .. 0]

-- rango con caracteres
lista9 = ['a' .. 'z']

-- rango con variables
x = 5

y = 10

lista10 = [x .. y]

-- listas infinita (ojo cuelga el interprete)
lista11 = [3, 6 ..]