{-
USO DE REPEAT, CYCLE Y REPLICATE (CICLOS)
-}

-- ciclos (comando repeat) repite un escalar muchas veces

-- generar numeros 7 de forma infinita (cuelga el interprete)
lista1 = repeat 7

-- generar una lista que tenga 100 veces el numero 7
lista2 = take 100 (repeat 7)

-- ciclos (cycle) repite muchas veces una lista
lista3 = cycle [1, 2, 3]

lista4 = cycle [1 .. 10]

-- lo anterior se puede combinar con take
lista5 = take 25 (cycle [1 .. 10])

lista6 = take 25 (cycle [1, 2])

lista7 = take 40 (cycle [2, 4 .. 1000])

-- replicate (repite n cantidad de veces un valor o una lista)
lista8 = replicate 5 80

lista9 = replicate 20 5

lista10 = replicate 5 [1, 2, 3]

lista11 = replicate 5 [1 .. 10]