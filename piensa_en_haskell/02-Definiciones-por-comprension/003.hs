{-
      2.3.1
      Triangulos aritmeticos
-}

suma :: (Num a, Enum a) => a -> a
suma n = sum [1..n]


suma' :: Integral a => a -> a
suma' n = (1+n)*n `div` 2


{-
      2.3.2
-}

linea :: (Num a, Enum a) => a -> [a]
linea n = [suma (n-1)+1..suma n]
-- suma (n-1)+1 es el primer elemento de la linea n
-- suma n es el ultimo elemento de la linea n
-- [suma (n-1)+1..suma n] es una lista de los elementos de la linea n


{-
      2.3.3
-}

triangulo :: (Num a, Enum a) => a -> [[a]]
triangulo n = [linea x | x <- [1..n]]
-- [linea x | x <- [1..n]] es una lista de listas de los elementos de las lineas 1 a n
-- linea x es la lista de los elementos de la linea x
