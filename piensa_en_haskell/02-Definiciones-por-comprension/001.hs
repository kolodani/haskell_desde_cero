{-
      2.1
      Suma de los cuadrados de los n primeros numeros
-}

sumaDeCuadrados :: Integer -> Integer
sumaDeCuadrados n = sum [x^2 | x <- [1..n]]
-- sum es la funcion que suma los elementos de una lista
-- [1..n] es una lista de numeros del 1 al n
-- x^2 es el cuadrado de x