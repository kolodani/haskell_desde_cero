{-
COMPREHENSION LISTS
-}

-- lista = [ lo que se va a mostrar | [LISTA DE ORIGEN], condiciones]
-- generar una lista de numeros entre 1 y 20
lista1 = [x | x <- [1 .. 20], x `mod` 2 == 1]

-- x aqui es la variable que se le va a guardar los datos
-- luego el x tiene que pertenecer al conjunto que se le da, en este caso del 1 al 20
-- y la condicion es que cuando a x lo divida por dos el modulo de la division de 1
-- dicho en otras palabras que sea impar

-- numeros entre 1 y 100 pero unicamente incluir los gangos entre el 1 y 40 asi como entre 70 y 99
lista2 = [x | x <- [1 .. 100], (x >= 1 && x <= 40) || (x >= 70 && x <= 99)]

-- numeros al cuadrado entre 1 y 10 pero que solo sean pares
lista3 = [x ^ 2 | x <- [1 .. 10], x `mod` 2 == 0]

-- numeros al cuadrado entre 1 y 10
lista4 = [x ^ 2 | x <- [1 .. 10]]