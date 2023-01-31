{-
      2.4
      Numeros perfectos
-}

factores :: Int -> [Int]
factores n = [x | x <- [1..n-1], n `mod` x == 0]
-- n `mod` x == 0 es para buscar los divisores de n
-- voy a buscar los divisores de n y los voy a guardar en una lista x


perfectos :: Int -> [Int]
perfectos n = [x | x <- [1..n], sum (factores x) == x]
-- a la lista x de divisores de n los voy a sumar y si el resultado es igual a n
-- entonces n es un numero perfecto
-- por ultimo cada numero perfecto lo voy a guardar en una lista x