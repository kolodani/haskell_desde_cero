{-
  TRABAJAR CON LISTAS
-}

-- listas
lista1 = [4, 5, 7, 8]

lista2 = [4, 5.6, 7, 8]

lista3 = ["peras", "manzanas", "uvas"]

lista4 = ['a', 'c', 'x', 't']
-- las listas son homogeneas, osea son solo de un solo tipo

-- unir listas
lista5 = lista1 ++ lista2

-- obtener el n elemento de una lista, se logra con el !!
unElemento = lista2!!2

-- lista bidimensionales
lista6 = [[1,2],[3,4]]
unElemento2 = lista6!!1
unElemento3 = lista6!!1!!1
lista7 = [[1,2,3],[4,5,6],[7,8,9]]
-- es una matriz de tres por tres
unElemento4 = lista7!!2!!2
unElemento5 = lista7 !! 2 !! 1 + lista7 !! 0 !! 1

-- longitud de una lista, se hace con la funcion length
longitud1 = length lista7
longitud2 = length lista1

-- primer elemento de una lista, se hace con la funcion head
primerolista1 = head lista1
primerolista2 = head lista3

-- ultimo elemento de una lista, se hace con la funcion head
ultimolista1 = last lista2
ultimolista2 = last lista4

-- cola de una lista, devuelve una lista que omite el primer elemento de la lista de origen, se hace con la funcion tail
colalista1 = tail lista3

-- init de lista, devuelve una lista que omite el ultimo elemento de la lista de origen, se hace con la funcion init
initlista1 = init lista1

-- lista al reves, se hace con la funcion reverse
reveslista1 = reverse lista1

-- take (obtener una copia de la lista hasta n elementos)
tomarlista5 = take 3 lista5

-- drop (obtiene una copia de la lista eliminando hasta el n elemento)
droplista5 = drop 3 lista5

-- minimo (el menor de una lista)
menorlista1 = minimum lista5

-- maximo (el mayor de una lista)
mayorlista1 = maximum lista5