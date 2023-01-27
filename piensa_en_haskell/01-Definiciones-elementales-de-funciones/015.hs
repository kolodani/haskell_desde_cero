{-
    1.15
    Mediano de 3 numeros
-}

mediano :: (Num a, Ord a) => a -> a -> a -> a
mediano x y z = x + y + z - minimum [x, y, z] - maximum [x, y, z]
-- minimun es el minimo de una lista
-- maximum es el maximo de una lista

{-
    1.15.2
-}

mediano2 x y z
    | a < x && x < b = x
    | a < y && y < b = y
    | otherwise = z
    where a = minimum [x, y, z]
          b = maximum [x, y, z]
